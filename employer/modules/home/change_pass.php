<?php
$user_id = $_GET['user_id'];
$sql = "select * from `tbl_user` where `user_id`={$user_id}";
$result = mysqli_query($conn, $sql);
$user = mysqli_fetch_assoc($result);

if (isset($_POST['btn-up'])) {
    $pass_old = $_POST['pass_old'];
    $pass_new = $_POST['pass_new'];
    $re_pass_new = $_POST['re_pass_new'];
    if ($pass_old == $user['password']) {
        if ($pass_new == $re_pass_new) {
            $sql = "update `tbl_user` set `password`='{$pass_new}' where `user_id`={$user_id}";

            if (mysqli_query($conn, $sql)) {
                header("location:?mod=home&act=main&user_id=$user_id");
            }
        }
    }
}
?>
<?php
require('inc/header.php')
    ?>
<div id="main">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center mt-4 mb-4">
                <h2>Đổi mật khẩu tài khoản :
                    <?php echo $user['username'] ?>
                </h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4 mt-4 mb-4">
                <form method="post" action="">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Mật khẩu cũ</label>
                        <input type="password" name="pass_old" class="form-control" value="">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Mật khẩu mới</label>

                        <input type="password" name="pass_new" class="form-control" value="">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Nhập lại mật khẩu mới</label>
                        <input type="password" name="re_pass_new" class="form-control" value="">
                    </div>

                    <button type="submit" name="btn-up" class="btn btn-primary w-100 mb-4">Đổi mật khẩu</button>

                </form>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
</div>