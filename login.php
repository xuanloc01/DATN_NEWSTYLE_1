<?php
if (isset($_POST['btn_log'])) {
    session_start();
    ob_start();
    $conn = mysqli_connect('localhost', 'root', '', 'newstyle');
    $username = $_POST['username'];
    $password = $_POST['password'];
    $sql = "select *from `tbl_user` where `username`='{$username}' and `password`='{$password}' LIMIT 1";
    $result = mysqli_query($conn, $sql);
    $user = mysqli_fetch_array($result);

    if (mysqli_num_rows($result) == 1) {
        $user_id = (int) $user['user_id'];
        $user_name = $user['username'];
        $role_id = $user['role_id'];
        $email = $user['email'];
        $_SESSION['user'][$user_id]['is_login'] = true;
        $_SESSION['user'][$user_id]['username'] = $user_name;
        $_SESSION['user'][$user_id]['email'] = $email;
        $_SESSION['user'][$user_id]['role_id'] = $user['role_id'];
        if ($_SESSION['user'][$user_id]['role_id'] == 1) {
            header("location:admin/?user_id=$user_id");
        } else {
            if ($_SESSION['user'][$user_id]['role_id'] == 2) {
                header("location:index.php?user_id=$user_id");
            } else {
                header("location:employer?user_id=$user_id");
            }

        }
    } else {
        echo "Sai tên đăng nhập hoặc mật khẩu";
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
                <h1>Đăng nhập</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <form method="post" action="">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Tên đăng nhập</label>
                        <input type="text" name="username" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Mật khẩu</label>
                        <input type="password" name="password" class="form-control" id="exampleInputPassword1">
                    </div>
                    <!-- <div class="mb-3 form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">Ghi nhớ</label>
                    </div> -->
                    <button type="submit" name="btn_log" class="btn btn-primary w-100">Đăng nhập</button>
                </form>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
    <script src="../public/js/popper.min.js"></script>
    <script src="../public/js/bootstrap.min.js"></script>
</body>

</html>