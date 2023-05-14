<?php
if (isset($_GET['user_id'])) {
    $user_id = $_GET['user_id'];

}

if (isset($_POST['btn-regis'])) {
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

    $conn = mysqli_connect('localhost', 'root', '', 'newstyle');
    $role_id = 3;
    $sql = "insert into `tbl_user` (`fullname`,`username`,`password`,`email`,`address`,`role_id`) values ('{$fullname}','{$username}','{$password}','{$email}','{$address}',{$role_id}) ";
    if (mysqli_query($conn, $sql)) {
        header("Location:?mod=acount&act=main&user_id=$user_id");
    }

}


?>


<?php
require('inc/header.php')

    ?>
<div id="main">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2>Thêm tài khoản</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">

            </div>
            <div class="col-md-8">
                <form method="post" action="">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Họ và tên</label>
                        <input type="text" name="fullname" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Tên đăng nhập</label>
                        <input type="text" name="username" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Mật khẩu</label>
                        <input type="password" name="password" class="form-control" id="exampleInputPassword1">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Xác nhận lại mật khẩu</label>
                        <input type="password" name="re_password" class="form-control" id="exampleInputPassword1">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email</label>
                        <input type="text" name="email" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">SĐT</label>
                        <input type="number" name="phone" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Địa chỉ</label>
                        <textarea name="address" class="form-control" id="" cols="30" rows="3"></textarea>
                    </div>
                    <button type="submit" name="btn-regis" class="btn btn-primary w-100">Thêm tài khoản</button>
                </form>
            </div>
            <div class="col-md-2">

            </div>
        </div>
    </div>
</div>
<?php
require('inc/footer.php')

    ?>