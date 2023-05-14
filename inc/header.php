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
	<script src="public/js/jquery.min.js" type="text/javascript"></script>

	<link href="public/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="public/js/bootstrap.bundle.min.js"></script>
	<script src="public/js/popper.min.js"></script>
	<script src="public/js/bootstrap.min.js"></script>
	<script src="public/js/jquery-3.6.3.min.js"></script>
	<title>NEWSTYLE</title>
</head>

<body>
	<div id="wrapper">
		<div id="header">
			<?php
			// echo "<pre>";
			// print_r($_SESSION);
			// echo "</pre>";
			
			if (isset($_GET['user_id'])) {
				$user_id = $_GET['user_id'];
				if (isset($_SESSION['user'][$user_id]['is_login'])) {
					?>
					<div class="container">
						<div class="row  bg-yellow text-center">
							<div class="col-md-2 logo">NEWSTYLE</div>

							<div class="col-md-4">
								<form id="search" action="?mod=home&act=search<?php
								if (isset($_GET['user_id'])) {
									echo "&user_id=" . $_GET['user_id'];
								}

								?>" method="post">
									<div class="form-group">
										<input class="form-control" type="text" name="key_word" placeholder="Bạn muốn tìm gì ?">
									</div>
								</form>
							</div>
							<div class="col-md-1">
								<div class="form-group">
									<button form="search" name="btn_search" class="btn btn-primary"><i
											class="fa-solid fa-magnifying-glass"></i></button>
								</div>
							</div>

							<div class="col-md-1">
								<a href="?mod=order&act=main<?php
								if (isset($_GET['user_id'])) {
									echo "&user_id=" . $_GET['user_id'];
								}

								?>" class="d-block"><i class="fa-solid fa-cart-arrow-down"></i>Lịch sử mua hàng</a>
							</div>
							<div class="col-md-1">
								<a href="?mod=cart&act=main<?php
								if (isset($_GET['user_id'])) {
									echo "&user_id=" . $_GET['user_id'];
								}

								?>" class="d-block"><i class="fa-solid fa-cart-shopping"></i>Giỏ
									hàng</a>
							</div>
							<div class="col-md-2">
								<a href="">
									<?php echo $_SESSION['user'][$user_id]['username'] ?>
								</a>
							</div>
							<div class="col-md-1">
								<a href="log_out.php?user_id=<?php echo $user_id ?>">Đăng xuất</a>
							</div>
						</div>
						<div class="row bg-yellow-1">
							<div class="col-md-12">
								<div class="main-menu">
									<ul>
										<li>
											<a href="?<?php
											if (isset($_GET['user_id'])) {
												echo "user_id=" . $_GET['user_id'];
											}

											?>">Trang chủ</a>
										</li>
										<li><a href="?mod=product&act=all_product<?php
											if (isset($_GET['user_id'])) {
												echo "&user_id=" . $_GET['user_id'];
											}

											?>">Sản phẩm</a></li>
										<li>
											<a href="?mod=acount&act=main<?php
											if (isset($_GET['user_id'])) {
												echo "&user_id=" . $_GET['user_id'];
											}

											?>">Tài khoản</a>
										
										</li>
										<li><a href="?mod=contact&act=main<?php
										if (isset($_GET['user_id'])) {
											echo "&user_id=" . $_GET['user_id'];
										}

										?>">Liên hệ</a></li>
									</ul>
								</div>

							</div>
						</div>
					</div>
					<?php
				}
			} else {
				?>
				<div class="container">
					<div class="row  bg-yellow">
						<div class="col-md-2 logo">NEWSTYLE</div>
						<div class="col-md-4">
							<form id="search" action="?mod=home&act=search<?php
							if (isset($_GET['user_id'])) {
								echo "&user_id=" . $_GET['user_id'];
							}

							?>" method="post">
								<div class="form-group">
									<input class="form-control" type="text" name="key_word" placeholder="Bạn muốn tìm gì ?">
								</div>
							</form>
						</div>
						<div class="col-md-1">
							<div class="form-group">
								<button form="search" name="btn_search" class="btn btn-primary"><i
										class="fa-solid fa-magnifying-glass"></i></button>
							</div>
						</div>

						<div class="col-md-1">
							<a href="login.php" class="d-block"><i class="fa-solid fa-cart-arrow-down"></i>Lịch sử mua
								hàng</a>
						</div>
						<div class="col-md-1">
							<a href="login.php" class="d-block"><i class="fa-solid fa-cart-shopping"></i>Giỏ
								hàng</a>
						</div>
						<div class="col-md-1">
							<a href="login.php">Đăng nhập</a>
						</div>
						<div class="col-md-1">
							<a href="register.php">Đăng kí</a>
						</div>
					</div>
					<div class="row bg-yellow-1">
						<div class="col-md-12">
							<div class="main-menu">
								<ul>
									<li>
										<a href="?">Trang chủ</a>
									</li>
									<li><a href="?mod=product&act=all_product">Sản phẩm</a></li>
									<li>
										<a href="">Tài khoản</a>
									</li>
									<li><a href="?mod=contact&act=main">Liên hệ</a></li>
								</ul>
							</div>

						</div>
					</div>
				</div>
				<?php
			}