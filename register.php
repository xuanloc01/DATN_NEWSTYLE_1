<?php
if (isset($_POST['btn-regis'])) {
    $conn = mysqli_connect('localhost', 'root', '', 'newstyle');
    $role_id = 2;
    $error = array();
    if (empty($_POST['fullname'])) {
        $error['fullname'] = "Không được để trống mục này .";
    } else {

        $fullname = $_POST['fullname'];

    }

    if (empty($_POST['username'])) {
        $error['username'] = "Không được để trống mục này .";
    } else {
        $pattern = '/^[A-Za-z0-9_.]{6,32}$/';

        if (!preg_match($pattern, $_POST['username'])) {
            $error['username'] = "username sai định dạng !";
        } else {
            $username = $_POST['username'];
            $check = "select *from `tbl_user` where `username`='{$username}'";
            $result_x = mysqli_query($conn, $check);
            $user_x = mysqli_fetch_assoc($result_x);
            if (!empty($user_x)) {
                $error['username'] = "Tên đăng nhập đã tồn tại !";
            }
        }
    }
    if (empty($_POST['password'])) {
        $error['password'] = "Không được để trống mục này .";
    } else {
        $pattern = '/^([A-Z]){1}([\w_\.!@#$%^&amp;*()]+){5,31}$/';

        if (!preg_match($pattern, $_POST['password'])) {
            $error['password'] = "password sai định dạng !";
        } else {
            $password = $_POST['password'];
        }
    }
    if (empty($_POST['re_password'])) {
        $error['re_password'] = "Không được để trống mục này .";
    } else {
        $re_password = $_POST['re_password'];
    }

    if (empty($_POST['email'])) {
        $error['email'] = "Không được để trống mục này .";
    } else {
        $pattern = '/^[A-Za-z0-9_.]{6,32}@([a-zA-Z0-9]{2,12})(.[a-zA-Z]{2,12})+$/';

        if (!preg_match($pattern, $_POST['email'])) {
            $error['email'] = "email sai định dạng !";
        } else {
            $email = $_POST['email'];
        }
    }

    if (empty($_POST['phone'])) {
        $error['phone'] = "Không được để trống mục này .";
    } else {
        $phone = $_POST['phone'];
    }
    if (empty($_POST['address'])) {
        $error['address'] = "Không được để trống mục này .";
    } else {
        $address = $_POST['address'];
    }
    if (empty($error)) {

        $sql = "insert into `tbl_user` (`fullname`,`username`,`password`,`email`,`address`,`phone`,`role_id`) values ('{$fullname}','{$username}','{$password}','{$email}','{$address}',{$phone},{$role_id}) ";
        if (mysqli_query($conn, $sql)) {
            header("location:login.php");
        }
    }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,800;1,400;1,600;1,800&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="public/plugin/fontawesome/css/all.css">
    <link rel="stylesheet" href="public/css/reset.css">
    <link rel="stylesheet" href="public/css/style.css">
    <link href="public/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="public/js/bootstrap.bundle.min.js"></script>
    <title>NEWSTYLE</title>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center mt-2">
                <h1>Đăng kí</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <form method="post" action="">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Họ và tên</label>
                        <input type="text" name="fullname" class="form-control">
                        <?php
                        if (!empty($error['fullname'])) {
                            ?>
                            <p>
                                <?php echo $error['fullname'] ?>
                            </p>
                            <?php
                        }

                        ?>

                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Tên đăng nhập</label>
                        <input type="text" name="username" class="form-control">
                        <?php
                        if (!empty($error['username'])) {
                            ?>
                            <p>
                                <?php echo $error['username'] ?>
                            </p>
                            <?php
                        }

                        ?>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Mật khẩu</label>
                        <input type="password" name="password" class="form-control" id="exampleInputPassword1">
                        <?php
                        if (!empty($error['password'])) {
                            ?>
                            <p>
                                <?php echo $error['password'] ?>
                            </p>
                            <?php
                        }

                        ?>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Xác nhận lại mật khẩu</label>
                        <input type="password" name="re_password" class="form-control" id="exampleInputPassword1">
                        <?php
                        if (!empty($error['re_password'])) {
                            ?>
                            <p>
                                <?php echo $error['re_password'] ?>
                            </p>
                            <?php
                        }

                        ?>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email</label>
                        <input type="text" name="email" class="form-control">
                        <?php
                        if (!empty($error['email'])) {
                            ?>
                            <p>
                                <?php echo $error['email'] ?>
                            </p>
                            <?php
                        }

                        ?>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">SĐT</label>
                        <input type="number" name="phone" class="form-control">
                        <?php
                        if (!empty($error['phone'])) {
                            ?>
                            <p>
                                <?php echo $error['phone'] ?>
                            </p>
                            <?php
                        }

                        ?>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Địa chỉ</label>
                        <textarea name="address" class="form-control" id="" cols="30" rows="3"></textarea>
                        <?php
                        if (!empty($error['address'])) {
                            ?>
                            <p>
                                <?php echo $error['address'] ?>
                            </p>
                            <?php
                        }

                        ?>
                    </div>
                    <button type="submit" name="btn-regis" class="btn btn-primary w-100">Đăng kí</button>
                </form>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
    <script src="../public/js/popper.min.js"></script>
    <script src="../public/js/bootstrap.min.js"></script>
</body>

</html>