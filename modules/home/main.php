<?php

$category = array();
$sql = "select *from `tbl_category`";
$result = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_assoc($result)) {
	$category[] = $row;
}




$product = array();
$sql = "select *from `tbl_product`,`tbl_category`,`tbl_company` where `tbl_product`.id_cat=`tbl_category`.id_cat  AND `tbl_product`.id_com=`tbl_company`.id_com order by `id_pro` DESC
limit 6";
$result = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_assoc($result)) {
	$product[] = $row;
}
$pro = array();
$sql = "select *from `tbl_product`,`tbl_category`,`tbl_company` where `tbl_product`.id_cat=`tbl_category`.id_cat  AND `tbl_product`.id_com=`tbl_company`.id_com order by `pro_sale` DESC
limit 6";
$result = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_assoc($result)) {
	$pro[] = $row;
}
?>






<div id="main">
	<div class="container">
		<div class="row mt-4 mb-4">
			<div class="col-md-3">
				<ul class="list-group">
					<li class="list-group-item active" aria-current="true">Danh mục sản phẩm</li>
					<?php
					foreach ($category as $item) {
						?>
						<li class="list-group-item"><a href="?mod=product<?php
						if (isset($_GET['user_id'])) {
							echo "&user_id=" . $_GET['user_id'];
						}

						?>&act=product_cat&id_cat=<?php echo $item['id_cat'] ?>">
								<?php echo $item['category_name'] ?>
							</a></li>

						<?php
					}
					?>

				</ul>
			</div>
			<div class="col-md-9">
				<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active" data-bs-interval="5000">
							<img src="images/slide-1.png" class="img-fluid d-block w-100" alt="...">
						</div>
						<div class=" carousel-item" data-bs-interval="5000">
							<img src="images/slide-2.png" class="img-fluid d-block w-100" alt="...">
						</div>
						<div class="carousel-item" data-bs-interval="5000">
							<img src="images/slide-3.png" class="img-fluid d-block w-100" alt="...">
						</div>
					</div>
					<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval"
						data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval"
						data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<h1>Sản phẩm mới</h1>
			</div>
		</div>
		<style>
			.product {
				position: relative;
			}

			.add {
				position: absolute;
				bottom: 10px;
				left: 40px;
			}
		</style>
		<div class="row">
			<?php

			foreach ($product as $item) {

				?>
				<?php
				$sql = "select * from `tbl_pro_class` where `id_pro`={$item['id_pro']} limit 1";
				$result = mysqli_query($conn, $sql);
				$pr1 = mysqli_fetch_assoc($result);
				$sale_price = (int) ((int) $pr1['price'] - ((int) $pr1['price'] * (int) $item['pro_sale'] / 100));
				?>
				<div class="col-md-2 mb-4">
					<a href="?mod=product&act=detail<?php
					if (isset($_GET['user_id'])) {
						echo "&user_id=" . $_GET['user_id'];
					}

					?>&id_pro=<?php echo $item['id_pro'] ?>&id_cat=<?php echo $item['id_cat'] ?>&id_com=<?php echo $item['id_com'] ?>&id_color=<?php echo $pr1['id_color'] ?>&name_memory=<?php echo $pr1['name_memory'] ?>"
						class="d-block">
						<div class="product p-2 border border-success" style="height:400px;">
							<div class="img text-center image">
								<img class="" width="auto" height="100%" src="upload/product/<?php echo $item['pro_img'] ?>"
									alt="">
							</div>
							<div class="info text-center">
								<a class="compact"
									href="?mod=product&act=detail<?php
									if (isset($_GET['user_id'])) {
										echo "&user_id=" . $_GET['user_id'];
									}

									?>&id_pro=<?php echo $item['id_pro'] ?>&id_cat=<?php echo $item['id_cat'] ?>&id_com=<?php echo $item['id_com'] ?>&id_color=<?php echo $pr1['id_color'] ?>&name_memory=<?php echo $pr1['name_memory'] ?>">
									<?php echo $item['pro_name'] ?>
								</a>
								<?php
								if ($item['pro_sale'] > 0) {
									?>
									<strike>
										<span class="d-block">
											<?php echo format_number((int) $pr1['price']) ?>
										</span>
									</strike>
									<span class="d-block price-sale">
										<?php echo format_number((int) $sale_price) ?>
									</span>
									<?php
								} else {
									?>
									<span class="d-block">
										<?php echo format_number((int) $pr1['price']) ?>
									</span>

									<?php
								}
								?>

								<a class="add btn btn-outline-danger p-2 mb-2 mt-4"
									href="?mod=cart&act=add<?php
									if (isset($_GET['user_id'])) {
										echo "&user_id=" . $_GET['user_id'];
									}

									?>&id_pro=<?php echo $item['id_pro'] ?>&id_cat=<?php echo $item['id_cat'] ?>&id_com=<?php echo $item['id_com'] ?>&id_color=<?php echo $pr1['id_color'] ?>&name_memory=<?php echo $pr1['name_memory'] ?>">Thêm
									vào giỏ</a>
							</div>
							<?php
							if ($item['pro_sale'] > 0) {
								?>
								<div class="sale">
									<span>-
										<?php echo $item['pro_sale'] ?>%
									</span>
								</div>
								<?php
							}

							?>

						</div>
					</a>
				</div>

				<?php
			}
			?>

		</div>
		<div class="row">
			<div class="col-md-12">
				<h1>Giảm giá cực sốc</h1>
			</div>
		</div>
		<style>
			.product {
				position: relative;
			}

			.add {
				position: absolute;
				bottom: 10px;
				left: 40px;
			}
		</style>
		<div class="row">
			<?php

			foreach ($pro as $item) {

				?>
				<?php
				$sql = "select * from `tbl_pro_class` where `id_pro`={$item['id_pro']} limit 1";
				$result = mysqli_query($conn, $sql);
				$pr1 = mysqli_fetch_assoc($result);
				$sale_price = (int) ((int) $pr1['price'] - ((int) $pr1['price'] * (int) $item['pro_sale'] / 100));
				?>
				<div class="col-md-2 mb-4">
					<a href="?mod=product&act=detail<?php
					if (isset($_GET['user_id'])) {
						echo "&user_id=" . $_GET['user_id'];
					}

					?>&id_pro=<?php echo $item['id_pro'] ?>&id_cat=<?php echo $item['id_cat'] ?>&id_com=<?php echo $item['id_com'] ?>&id_color=<?php echo $pr1['id_color'] ?>&name_memory=<?php echo $pr1['name_memory'] ?>"
						class="d-block">
						<div class="product p-2 border border-success" style="height:400px;">
							<div class="img text-center image">
								<img class="" width="auto" height="100%" src="upload/product/<?php echo $item['pro_img'] ?>"
									alt="">
							</div>
							<div class="info text-center">
								<a class="compact"
									href="?mod=product&act=detail<?php
									if (isset($_GET['user_id'])) {
										echo "&user_id=" . $_GET['user_id'];
									}

									?>&id_pro=<?php echo $item['id_pro'] ?>&id_cat=<?php echo $item['id_cat'] ?>&id_com=<?php echo $item['id_com'] ?>&id_color=<?php echo $pr1['id_color'] ?>&name_memory=<?php echo $pr1['name_memory'] ?>">
									<?php echo $item['pro_name'] ?>
								</a>
								<?php
								if ($item['pro_sale'] > 0) {
									?>
									<strike>
										<span class="d-block">
											<?php echo format_number((int) $pr1['price']) ?>
										</span>
									</strike>
									<span class="d-block price-sale">
										<?php echo format_number((int) $sale_price) ?>
									</span>
									<?php
								} else {
									?>
									<span class="d-block">
										<?php echo format_number((int) $pr1['price']) ?>
									</span>

									<?php
								}
								?>

								<a class="add btn btn-outline-danger p-2 mb-2 mt-4"
									href="?mod=cart&act=add<?php
									if (isset($_GET['user_id'])) {
										echo "&user_id=" . $_GET['user_id'];
									}

									?>&id_pro=<?php echo $item['id_pro'] ?>&id_cat=<?php echo $item['id_cat'] ?>&id_com=<?php echo $item['id_com'] ?>&id_color=<?php echo $pr1['id_color'] ?>&name_memory=<?php echo $pr1['name_memory'] ?>">Thêm
									vào giỏ</a>
							</div>
							<?php
							if ($item['pro_sale'] > 0) {
								?>
								<div class="sale">
									<span>-
										<?php echo $item['pro_sale'] ?>%
									</span>
								</div>
								<?php
							}

							?>

						</div>
					</a>
				</div>

				<?php
			}
			?>

		</div>



	</div>
</div>