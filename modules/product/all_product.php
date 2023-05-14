<?php

$category = array();
$sql = "select *from `tbl_category`";
$result = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_assoc($result)) {
    $category[] = $row;
}

if (isset($_GET['page'])) {
    $num_page = $_GET['page'];
    $start = $num_page * 12 - 12;
} else {
    $num_page = 1;
    $start = 0;
}





$product = array();
$sql = "select *from `tbl_product`,`tbl_category`,`tbl_company` where `tbl_product`.id_cat=`tbl_category`.id_cat  AND `tbl_product`.id_com=`tbl_company`.id_com
limit $start,12";
$result = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_assoc($result)) {
    $product[] = $row;
}

?>






<div id="main">
    <div class="container">
        <div class="row mt-4 mb-4">
            <div class="col-md-12 text-center">
                <h2>Tất cả sản phẩm</h2>
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
        <style>
            .page {
                list-style: none;
                display: inline-flex;
            }

            .page li {
                background: gray;
                margin: 5px;
            }

            .page li a {
                display: block;
                padding: 10px;
                color: white;
                text-decoration: none;
            }
        </style>
        <div class="row">
            <div class="col-md-12 text-center">
                <?php
                $sql = "select *from `tbl_product` ";
                $result = mysqli_query($conn, $sql);
                $sum_pro = mysqli_num_rows($result);
                $sum_page = ceil($sum_pro / 12);

                ?>
                <ul class="page" style="list-style:none;">
                    <?php
                    for ($i = 1; $i <= $sum_page; $i++) {
                        ?>
                        <li><a <?php if ($num_page == $i) {
                            echo "style='background-color: red;' ";
                        } ?> href="?mod=product<?php
                          if (isset($_GET['user_id'])) {
                              echo "&user_id=" . $_GET['user_id'];
                          }

                          ?>&act=all_product&page=<?php echo $i ?>">
                                <?php echo $i ?>
                            </a></li>
                        <?php
                    }
                    ?>


                </ul>
            </div>
        </div>

    </div>
</div>