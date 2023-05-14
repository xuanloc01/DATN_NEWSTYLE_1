
<?php
$user_id = $_GET['user_id'];
$sql = "select * from `tbl_user` where `user_id`={$user_id}";
$result = mysqli_query($conn, $sql);
$user = mysqli_fetch_assoc($result);

if (isset($_POST['btn-up'])) {
	$fullname = $_POST['fullname'];
	$address = $_POST['address'];
	$email = $_POST['email'];
	$phone = $_POST['phone'];
	$sql = "update `tbl_user` set `fullname`='{$fullname}',`email`='{$email}',`address`='{$address}',`phone`='{$phone}' where `user_id`={$user_id}";

	if (mysqli_query($conn, $sql)) {
		header("location:?mod=home&act=main&user_id=$user_id");
	}
}
?>
<?php
require('inc/header.php');

?>
<div id="main">
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center mt-4 mb-4">
				<h2>Thông tin tài khoản</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4 mt-4 mb-4">
				<form method="post" action="">
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">Họ và tên</label>
						<input type="text" name="fullname" class="form-control" value="<?php echo $user['fullname'] ?>">
					</div>
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">Tên đăng nhập</label>

						<input type="text" name="username" class="form-control" value="<?php echo $user['username'] ?>">
					</div>
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">Email</label>
						<input type="text" name="email" class="form-control" value="<?php echo $user['email'] ?>">
					</div>
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">Địa chỉ</label>
						<textarea name="address" class="form-control" id="" cols="30"
							rows="3"><?php echo $user['address'] ?></textarea>
					</div>
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">Số điện thoại</label>
						<input type="number" name="phone" class="form-control" value="<?php echo $user['phone'] ?>">
					</div>
					<button type="submit" name="btn-up" class="btn btn-primary w-100 mb-4">Cập nhật</button>
					<a class="btn btn-primary w-100"
						href="?mod=home&act=change_pass&user_id=<?php echo $user_id ?>">Đổi mật khẩu</a>
				</form>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>
</div>
<?php
require('inc/footer.php');

?>