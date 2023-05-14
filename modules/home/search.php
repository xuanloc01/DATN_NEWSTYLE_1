<?php

if (isset($_POST['btn_search'])) {
    $key = $_POST['key_word'];
    $product = array();
    $sql = " select * from `tbl_product` where  `pro_name` Like '%{$key}%' or  `pro_desc` Like '%{$key}%' or `pro_price` Like '%{$key}%'";
    $result = mysqli_query($conn, $sql);
    while ($row = mysqli_fetch_assoc($result)) {
        $product[] = $row;
    }
}



?>






<div id="main">
    <div class="container">
        <div class="row mt-4 mb-4">
            <div class="col-md-12">
                <h2>Tìm kiếm với từ khóa : '
                    <?php echo $key ?> '
                </h2>
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
                                    <img class="" width="auto" height="100%"
                                        src="upload/product/<?php echo $item['pro_img'] ?>" alt="">
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
</div>