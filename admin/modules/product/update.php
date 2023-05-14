<?php
$user_id = $_GET['user_id'];
$id_pro = (int) $_GET['id_pro'];
$img = array();
$sql_img = "select *from `img_pro` where `id_pro`={$id_pro}";
$result_img = mysqli_query($conn, $sql_img);
while ($row = mysqli_fetch_assoc($result_img)) {
    $img[] = $row;
}

$pro_class = array();
$sql_1 = "select * from `tbl_pro_class`,`color` where `tbl_pro_class`.`id_color`= `color`.`id_color`  and `id_pro`={$id_pro}";
$result = mysqli_query($conn, $sql_1);
while ($row = mysqli_fetch_assoc($result)) {
    $pro_class[] = $row;
}
foreach ($pro_class as $item) {

    $key = "btn-upp-" . $item['id_pro_cl'];
    if (isset($_POST[$key])) {

        $error = array();
        $key1 = "pro_price-" . $item['id_pro_cl'];
        $key2 = "pro_warehouse-" . $item['id_pro_cl'];
        $key3 = "pro_inf_technical-" . $item['id_pro_cl'];
        $key4 = "color-" . $item['id_pro_cl'];
        $key5 = "memory-" . $item['id_pro_cl'];
        if (empty($_POST[$key1])) {
            $error[$key1] = "Không được để trống mục này !";
        }
        if (empty($_POST[$key2])) {
            $error[$key2] = "Không được để trống mục này !";
        }

        if (empty($error)) {
            $price = $_POST[$key1];
            $quantity = $_POST[$key2];
            $id_color = $_POST[$key4];
            $name_memory=$_POST[$key5];
            $sql = "update `tbl_pro_class` set `price`='{$price}',`quantity`='{$quantity}',`id_color`='{$id_color}',`name_memory`='{$name_memory}' where `id_pro_cl`={$item['id_pro_cl']}";
            mysqli_query($conn, $sql);
            $sum = 0;
            $pro_class = array();
            $sql_1 = "select * from `tbl_pro_class`,`color` where `tbl_pro_class`.`id_color`= `color`.`id_color`  and `id_pro`={$id_pro}";
            $result = mysqli_query($conn, $sql_1);
            while ($row = mysqli_fetch_assoc($result)) {
                $pro_class[] = $row;
            }
            foreach ($pro_class as $item) {
                $sum = $sum + $item['quantity'];
            }
            // echo $sum;
            $sql_upp = "update `tbl_product` set `pro_warehouse`='{$sum}' where `id_pro`={$id_pro}";
            mysqli_query($conn, $sql_upp);
            header("location:?mod=product&act=update&user_id=$user_id&id_pro=$id_pro");
        }
    }
}

if (isset($_POST['btn-up'])) {
    $error = array();
    if (empty($_POST['pro_code'])) {
        $error['pro_code'] = "Không được để trống mục này !";
    }
    if (empty($_POST['pro_name'])) {
        $error['pro_name'] = "Không được để trống mục này !";
    }
    if (empty($_POST['pro_desc'])) {
        $error['pro_desc'] = "Không được để trống mục này !";
    }
    if (empty($_POST['pro_inf_detail'])) {
        $error['pro_inf_detail'] = "Không được để trống mục này !";
    }

    if (!isset($_POST['category'])) {
        $error['category'] = "Không được để trống mục này !";
    }

    if (!isset($_POST['company'])) {
        $error['company'] = "Không được để trống mục này !";
    }
    // print_r($error);
    if (empty($error)) {
        $id_cat = $_POST['category'];
        $id_com = $_POST['company'];
        $pro_code = $_POST['pro_code'];
        $pro_name = $_POST['pro_name'];
        $pro_desc = $_POST['pro_desc'];
        $pro_inf_detail = $_POST['pro_inf_detail'];
        $pro_technical = $_POST['pro_technical'];
       
        $pro_price = $_POST['pro_price'];
        if (empty($_POST['pro_sale'])) {
            $pro_sale = 0;
        } else {
            $pro_sale = $_POST['pro_sale'];
        }
        // echo "<pre>";
        // print_r($_FILES);
        // echo "</pre>";
        $sql = "select *from `tbl_product` where `id_pro`={$id_pro}";
        $result = mysqli_query($conn, $sql);
        $product = mysqli_fetch_assoc($result);
        if (!empty($_FILES['pro_img']['name'])) {
            $url_image = '../upload/product/' . $product['pro_img'];
            unlink($url_image);
            $pro_img = $_FILES['pro_img']['name'];
            $upload_dir = '../upload/product/';
            $upload_image = $upload_dir . $_FILES['pro_img']['name'];
            move_uploaded_file($_FILES['pro_img']['tmp_name'], $upload_image);
            $sql = "UPDATE `tbl_product` SET `pro_img`='{$pro_img}' WHERE `id_pro`={$id_pro}";
            mysqli_query($conn, $sql);
        }

        if (!empty($_FILES['pro_img_re']['name'][0])) {
            foreach ($img as $item) {
                $url_image = '../upload/product/' . $item['name_img'];
                unlink($url_image);
            }
            $del = "delete from `img_pro` where `id_pro`={$id_pro}";
            mysqli_query($conn, $del);
            foreach ($_FILES['pro_img_re']['name'] as $key => $value) {
                $upload_dir = '../upload/product/';
                move_uploaded_file($_FILES['pro_img_re']['tmp_name'][$key], $upload_dir . $value);

                $sql = "insert into `img_pro` (`name_img`,`id_pro`) values ('{$value}',{$id_pro})";
                mysqli_query($conn, $sql);
            }

        }


        $sql_up = "update `tbl_product` set `pro_code`='{$pro_code}',`pro_name`='{$pro_name}',`pro_desc`='{$pro_desc}',`pro_sale`='{$pro_sale}',`info_detail`='{$pro_inf_detail}',`pro_technical`='{$pro_technical}',`id_cat`={$id_cat},`id_com`='{$id_com}' where `id_pro`={$id_pro}";

        if (mysqli_query($conn, $sql_up)) {
            header("location:?mod=product&act=main&user_id=$user_id");
        }
    }
}


$img = array();
$sql_img = "select *from `img_pro` where `id_pro`={$id_pro}";
$result_img = mysqli_query($conn, $sql_img);
while ($row = mysqli_fetch_assoc($result_img)) {
    $img[] = $row;
}

$sql = "select *from `tbl_product` where `id_pro`={$id_pro}";
$result = mysqli_query($conn, $sql);
$product = mysqli_fetch_assoc($result);

$category = array();
$sql = "select *from `tbl_category`";
$result = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_assoc($result)) {
    $category[] = $row;
}
$company = array();
$sql = "select *from `tbl_company`";
$result = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_assoc($result)) {
    $company[] = $row;
}



?>


<?php
require('inc/header.php')

    ?>
<div id="main">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2>Cập nhật sản phẩm</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">

            </div>
            <div class="col-md-8">
                <h5>Thông tin riêng</h5>
                <form action="" method="post">
                    <?php
                    $pro_class = array();
                    $sql_1 = "select * from `tbl_pro_class`,`color` where `tbl_pro_class`.`id_color`= `color`.`id_color`  and `id_pro`={$id_pro}";
                    $result = mysqli_query($conn, $sql_1);
                    while ($row = mysqli_fetch_assoc($result)) {
                        $pro_class[] = $row;
                    }

                    ?>
                    <?php
                    $i = 0;
                    foreach ($pro_class as $it) {
                        $i++;
                        ?>
                        <h6>Thông tin :
                            <?php echo $i ?>
                        </h6>
                        <div class="mb-3">
                            <label for="formGroupExampleInput" class="form-label ">MÀU SẮC</label>
                        </div>

                        <?php
                        $color = array();
                        $sql_cl = "select * from `color`";
                        $result = mysqli_query($conn, $sql_cl);
                        while ($row = mysqli_fetch_assoc($result)) {
                            $color[] = $row;
                        }
                        ?>
                        <select class="form-select" name="color-<?php echo $it['id_pro_cl'] ?>"
                            aria-label="Disabled select example">
                            <?php
                            foreach ($color as $item) {

                                ?>
                                <option <?php if ($it['id_color'] == $item['id_color']) {
                                    echo "selected='selected'";
                                } ?>
                                    value="<?php echo $item['id_color'] ?>"><?php echo $item['name_color'] ?></option>
                                <?php
                            }

                            ?>
                        </select>
                        <div class="mb-3">
                            <label for="formGroupExampleInput" class="form-label ">BỘ NHỚ</label>
                        </div>

                        <?php
                        $memory = array();
                        $sql_me = "select * from `memory`";
                        $result = mysqli_query($conn, $sql_me);
                        while ($row = mysqli_fetch_assoc($result)) {
                            $memory[] = $row;
                        }
                        ?>
                        <select class="form-select" name="memory-<?php echo $it['id_pro_cl'] ?>"
                            aria-label="Disabled select example">
                            <?php
                            foreach ($memory as $item) {

                                ?>
                                <option <?php if ($it['name_memory'] == $item['name_memory']) {
                                    echo "selected='selected'";
                                } ?>
                                    value="<?php echo $item['name_memory'] ?>"><?php echo $item['name_memory'] ?></option>
                                <?php
                            }

                            ?>
                        </select>
                            

                        <div class="mb-3">
                            <label for="formGroupExampleInput" class="form-label">GIÁ</label>
                            <input type="number" name="pro_price-<?php echo $it['id_pro_cl'] ?>" class="form-control"
                                value="<?php echo $it['price'] ?>" id="formGroupExampleInput"
                                placeholder="Nhập giá sản phẩm.">
                        </div>

                        <div class="mb-3">
                            <label for="formGroupExampleInput" class="form-label">KHO</label>
                            <input type="number" name="pro_warehouse-<?php echo $it['id_pro_cl'] ?>" class="form-control"
                                value="<?php echo $it['quantity'] ?>" id="formGroupExampleInput"
                                placeholder="Nhập số lượng trong kho.">
                        </div>


                        <div class="mb-3" style="margin-left: 800px;">
                            <input type="submit" name="btn-upp-<?php echo $it['id_pro_cl'] ?>" class="btn btn-primary"
                                value="OK">
                        </div>
                        <?php
                    }

                    ?>



                </form>
                <form enctype="multipart/form-data" action="" method="post">
                    <h5>Thông tin chung</h5>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">Danh mục</label>
                        <select class="form-select" name="category" aria-label="Disabled select example">
                            <option selected>Chọn danh mục</option>
                            <?php

                            foreach ($category as $item) {
                                ?>

                                <option <?php if ($item['id_cat'] == $product['id_cat']) {
                                    ?> selected="selected" <?php
                                }
                                ?>
                                    value="<?php echo $item['id_cat'] ?>">
                                    <?php echo $item['category_name'] ?>
                                </option>

                                <?php
                            }
                            ?>

                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">NSX</label>
                        <select class="form-select" name="company" aria-label="Disabled select example">
                            <option selected>Chọn NSX</option>
                            <?php

                            foreach ($company as $item) {
                                ?>

                                <option <?php if ($item['id_com'] == $product['id_com']) {
                                    ?> selected="selected" <?php
                                }
                                ?>
                                    value="<?php echo $item['id_com'] ?>">
                                    <?php echo $item['company_name'] ?>
                                </option>

                                <?php
                            }
                            ?>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">MÃ SẢN PHẨM</label>
                        <input type="text" name="pro_code" value="<?php echo $product['pro_code'] ?>"
                            class="form-control" id="formGroupExampleInput" placeholder="Nhập mã sản phẩm.">
                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">TÊN SẢN PHẨM</label>
                        <textarea class="form-control" name="pro_name" id="exampleFormControlTextarea1" rows="3"
                            placeholder="Nhập tên sản phẩm."><?php echo $product['pro_name'] ?></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">MÔ TẢ SẢN PHẨM</label>

                        <textarea class="form-control" name="pro_desc" id="exampleFormControlTextarea1" rows="3"
                            placeholder="Nhập mô tả sản phẩm."><?php echo $product['pro_desc'] ?></textarea>

                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">HÌNH ẢNH</label>
                        <input type="FILE" name="pro_img" class="form-control" id="formGroupExampleInput">
                        <img width="100px" height="100px" src="../upload/product/<?php echo $product['pro_img'] ?>"
                            alt="">
                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">HÌNH ẢNH LIÊN QUAN</label>
                        <input type="FILE" multiple name="pro_img_re[]" class="form-control" id="formGroupExampleInput">
                        <?php
                        foreach ($img as $item) {
                            ?>
                            <img width="100px" height="100px" src="../upload/product/<?php echo $item['name_img'] ?>"
                                alt="">
                            <?php
                        }
                        ?>

                    </div>

                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">SALE</label>
                        <input type="number" name="pro_sale" value="<?php echo $product['pro_sale'] ?>"
                            class="form-control" id="formGroupExampleInput" placeholder="Nhập giảm giá sản phẩm.">
                    </div>


                  
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">THÔNG TIN CHI TIẾT</label>

                        <textarea class="form-control" name="pro_inf_detail" id="exampleFormControlTextarea1" rows="3"
                            placeholder="Nhập mô tả sản phẩm."><?php echo $product['info_detail'] ?></textarea>

                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">THÔNG SỐ KĨ THUẬT</label>

                        <textarea class="form-control" name="pro_technical" id="exampleFormControlTextarea1" rows="3"
                            placeholder="Nhập mô tả sản phẩm."><?php echo $product['pro_technical'] ?></textarea>

                    </div>
                    <div class="mb-3">
                        <input type="submit" name="btn-up" class="btn btn-primary" value="Cập nhật">
                    </div>
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