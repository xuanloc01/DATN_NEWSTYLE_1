<?php

$user_id = $_GET['user_id'];

if (isset($_POST['btn-ad'])) {
    $error = array();

    if (empty($_POST['pro_price'])) {
        $error['pro_price'] = "Không được để trống mục này !";
    }
    if (empty($_POST['pro_warehouse'])) {
        $error['pro_warehouse'] = "Không được để trống mục này !";
    }



    if (empty($error)) {
        $pro_price = $_POST['pro_price'];
        $id_color = $_POST['color'];
        $name_memory = $_POST['memory'];
        $pro_warehouse = $_POST['pro_warehouse'];
        $pr = array(
            'id_color' => $id_color,
            'name_memory' => $name_memory,
            'pro_price' => $pro_price,
            'pro_warehouse' => $pro_warehouse,
        );


        $_SESSION['product_class'][] = $pr;
        // header("location:?mod=product&act=add&user_id=$user_id");
        // print_r($_SESSION['product_class']);
        // unset($_SESSION['product_class']);
        // print_r($_SESSION['product_class']);
    }
}

if (isset($_POST['btn-add'])) {
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

    if (!isset($_FILES['pro_img'])) {
        $error['pro_img'] = "Không được để trống mục này !";
    }

    if (empty($_POST['pro_inf_detail'])) {
        $error['pro_inf_detail'] = "Không được để trống mục này !";
    }
    if (empty($_POST['pro_technical'])) {
        $error['pro_technical'] = "Không được để trống mục này !";
    }
    if (!isset($_POST['category'])) {
        $error['category'] = "Không được để trống mục này !";
    }
    if (!isset($_POST['company'])) {
        $error['company'] = "Không được để trống mục này !";
    }

    if (empty($error)) {
        $id_cat = $_POST['category'];
        $id_com = $_POST['company'];
        $pro_code = $_POST['pro_code'];
        $pro_name = $_POST['pro_name'];
        $pro_desc = $_POST['pro_desc'];
        $pro_inf_detail = $_POST['pro_inf_detail'];
        $pro_img = $_FILES['pro_img']['name'];

        $pro_technical = $_POST['pro_technical'];

        if (empty($_POST['pro_sale'])) {
            $pro_sale = 0;
        } else {
            $pro_sale = $_POST['pro_sale'];
        }


        $upload_dir = '../upload/product/';
        $upload_image = $upload_dir . $_FILES['pro_img']['name'];
        move_uploaded_file($_FILES['pro_img']['tmp_name'], $upload_image);

        $sql_add = "insert into `tbl_product` (`pro_code`,`pro_name`,`pro_desc`,`pro_img`,`pro_sale`,`info_detail`,`pro_technical`,`id_cat`,`id_com`) 
        values ('{$pro_code}','{$pro_name}','{$pro_desc}','{$pro_img}','{$pro_sale}','{$pro_inf_detail}','{$pro_technical}',{$id_cat},{$id_com}) ";


        if (mysqli_query($conn, $sql_add)) {
            $last_id = mysqli_insert_id($conn);
            $sum = 0;
            foreach ($_SESSION['product_class'] as $key => $value) {
                $id_color = $value['id_color'];
                $pro_price = $value['pro_price'];
                $pro_warehouse = $value['pro_warehouse'];
                $name_memory = $value['name_memory'];
                $sum = $sum + (int) $pro_warehouse;
                $sql_add_1 = "insert into `tbl_pro_class` (`id_pro`,`id_color`,`name_memory`,`price`,`quantity`) values ({$last_id},{$id_color},'{$name_memory}','{$pro_price}','{$pro_warehouse}') ";
                mysqli_query($conn, $sql_add_1);
            }
            unset($_SESSION['product_class']);
            $sql_upp = "update `tbl_product` set `pro_warehouse`={$sum} where `id_pro`={$last_id}";
            mysqli_query($conn, $sql_upp);

            $pro_img_re = $_FILES['pro_img_re']['name'];
            $pro_img_re_tmt = $_FILES['pro_img_re']['tmp_name'];
            foreach ($pro_img_re as $key => $value) {
                $sql = "insert into `img_pro` (`name_img`,`id_pro`) values ('{$value}',{$last_id})";
                mysqli_query($conn, $sql);
                move_uploaded_file($_FILES['pro_img_re']['tmp_name'][$key], $upload_dir . $value);
            }

            // echo "Thành công";
            // header("location:?mod=product&act=main&user_id=$user_id");
        }
    }
}

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
                <h2>Thêm sản phẩm</h2>

            </div>
        </div>
        <div class="row">
            <div class="col-md-2">

            </div>
            <div class="col-md-8">
                <h5>Thông tin riêng</h5>
                <div>

                    <?php
                    if (isset($_SESSION['product_class'])) {
                        $i = 0;
                        if (!empty($_SESSION['product_class'])) {


                            ?>
                            <h5>Thông số đã thêm</h5>
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Màu</th>
                                        <th>Bộ nhớ</th>
                                        <th>Xóa</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    foreach ($_SESSION['product_class'] as $key => $item) {
                                        $i++;
                                        $sql = "select * from `color` where `id_color`={$item['id_color']}";
                                        $re_col = mysqli_query($conn, $sql);
                                        $col = mysqli_fetch_assoc($re_col);
                                        ?>

                                        <tr>
                                            <td>
                                                <?php echo $i ?>
                                            </td>
                                            <td>
                                                <?php echo $col['name_color'] ?>
                                            </td>
                                            <td>
                                                <?php echo $item['name_memory'] ?>
                                            </td>
                                            <td><a
                                                    href="?mod=product&act=del_attb&user_id=<?php echo $user_id ?>&id_key=<?php echo $key ?>">Xóa</a>
                                            </td>
                                        </tr>
                                        <?php
                                    }
                                    ?>
                                </tbody>
                            </table>
                            <?php
                        }
                    }
                    ?>
                </div>
                <form action="" method="post">
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
                    <select class="form-select" name="color" aria-label="Disabled select example">
                        <option selected value="">Chọn MÀU</option>
                        <?php

                        foreach ($color as $item) {
                            ?>
                            <option value="<?php echo $item['id_color'] ?>"><?php echo $item['name_color'] ?></option>
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
                    <select class="form-select" name="memory" aria-label="Disabled select example">
                        <option selected value="">Chọn Bộ nhớ</option>
                        <?php

                        foreach ($memory as $item) {
                            ?>
                            <option value="<?php echo $item['name_memory'] ?>"><?php echo $item['name_memory'] ?></option>
                            <?php
                        }

                        ?>
                    </select>


                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">GIÁ</label>
                        <input type="number" name="pro_price" class="form-control" id="formGroupExampleInput"
                            placeholder="Nhập giá sản phẩm.">
                    </div>

                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">KHO</label>
                        <input type="number" name="pro_warehouse" class="form-control" id="formGroupExampleInput"
                            placeholder="Nhập số lượng trong kho.">
                    </div>



                    <div class="mb-3" style="margin-left: 800px;">
                        <input type="submit" name="btn-ad" class="btn btn-primary" value="OK">
                    </div>
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

                                <option value="<?php echo $item['id_cat'] ?>"><?php echo $item['category_name'] ?></option>

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
                            foreach ($category as $it) {
                                foreach ($company as $item) {
                                    if ($item['id_cat'] == $it['id_cat']) {
                                        ?>
                                        <option value="<?php echo $item['id_com'] ?>"><?php echo $item['company_name'] ?> (<?php echo $it['category_name'] ?>)</option>
                                        <?php
                                    }
                                }
                            }
                            ?>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">MÃ SẢN PHẨM</label>
                        <input type="text" name="pro_code" class="form-control" id="formGroupExampleInput"
                            placeholder="Nhập mã sản phẩm.">
                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">TÊN SẢN PHẨM</label>
                        <textarea class="form-control" name="pro_name" id="exampleFormControlTextarea1" rows="3"
                            placeholder="Nhập tên sản phẩm."></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">MÔ TẢ SẢN PHẨM</label>

                        <textarea class="form-control" name="pro_desc" id="exampleFormControlTextarea1" rows="3"
                            placeholder="Nhập mô tả sản phẩm."></textarea>

                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">HÌNH ẢNH</label>
                        <input type="FILE" name="pro_img" class="form-control" id="formGroupExampleInput">
                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">HÌNH LIÊN QUAN</label>
                        <input type="FILE" multiple name="pro_img_re[]" class="form-control" id="formGroupExampleInput">
                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">SALE</label>
                        <input type="number" name="pro_sale" class="form-control" id="formGroupExampleInput"
                            placeholder="Nhập giảm giá sản phẩm.">
                    </div>


                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">THÔNG TIN CHI TIẾT</label>
                        <textarea class="form-control" name="pro_inf_detail" id="exampleFormControlTextarea1" rows="3"
                            placeholder="Nhập mô tả sản phẩm."></textarea>

                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">THÔNG SỐ KĨ THUẬT</label>

                        <textarea class="form-control" name="pro_technical" id="exampleFormControlTextarea1" rows="3"
                            placeholder="Nhập mô tả sản phẩm."></textarea>

                    </div>

                    <div class="mb-3">
                        <input type="submit" name="btn-add" class="btn btn-primary" value="Thêm sản phẩm">
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