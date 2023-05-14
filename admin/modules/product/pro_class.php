<?php
$user_id = $_GET['user_id'];
if (isset($_POST['btn-add'])) {
    $error = array();

    if (empty($_POST['pro_price'])) {
        $error['pro_price'] = "Không được để trống mục này !";
    }
    if (empty($_POST['pro_warehouse'])) {
        $error['pro_warehouse'] = "Không được để trống mục này !";
    }
    if (empty($_POST['pro_inf_technical'])) {
        $error['pro_inf_technical'] = "Không được để trống mục này !";
    }


    if (empty($error)) {

        $pro_inf_technical = $_POST['pro_inf_technical'];
        $pro_price = $_POST['pro_price'];
        $id_color = $_POST['color'];
        $id_memory = $_POST['memory'];
        $id_clock = $_POST['clock'];
        $pro_warehouse = $_POST['pro_warehouse'];
        $pr = array(
            'id_color' => $id_color,
            'id_memory' => $id_memory,
            'id_clock' => $id_clock,
            'pro_price' => $pro_price,
            'pro_warehouse' => $pro_warehouse,
            'pro_inf_technical' => $pro_inf_technical
        );


        $_SESSION['product_class'][] = $pr;
        echo "<pre>";
        print_r($_SESSION['product_class']);
        echo "</pre>";
        // echo "Thành công";
        // header("location:?mod=product&act=main&user_id=$user_id");

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
                <form enctype="multipart/form-data" action="" method="post">
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
                            <option value="<?php echo $item['id_color'] ?>"><?php echo $item['name'] ?></option>
                            <?php
                        }

                        ?>
                    </select>


                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label mt-4">BỘ NHỚ + RAM</label>
                    </div>
                    <?php
                    $memory = array();
                    $sql_mr = "select * from `memory`";
                    $result = mysqli_query($conn, $sql_mr);
                    while ($row = mysqli_fetch_assoc($result)) {
                        $memory[] = $row;
                    }

                    ?>
                    <select class="form-select" name="memory" aria-label="Disabled select example">
                        <option selected value="">Chọn BỘ NHỚ</option>
                        <?php

                        foreach ($memory as $item) {
                            ?>
                            <option value="<?php echo $item['id_memory'] ?>"><?php echo $item['name'] ?></option>
                            <?php
                        }

                        ?>
                    </select>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label mt-4">KÍCH THƯỚC (ĐỒNG HỒ)</label>
                    </div>
                    <?php
                    $clock = array();
                    $sql_cl = "select * from `clock`";
                    $result = mysqli_query($conn, $sql_cl);
                    while ($row = mysqli_fetch_assoc($result)) {
                        $clock[] = $row;
                    }
                    ?>
                    <select class="form-select" name="clock" aria-label="Disabled select example">
                        <option selected value="">CHỌN KÍCH THƯỚC</option>
                        <?php

                        foreach ($clock as $item) {
                            ?>
                            <option value="<?php echo $item['id_clock'] ?>"><?php echo $item['name'] ?></option>
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

                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">THÔNG SỐ KĨ THUẬT</label>

                        <textarea class="form-control" name="pro_inf_technical" id="exampleFormControlTextarea1"
                            rows="3" placeholder="Nhập mô tả sản phẩm."></textarea>

                    </div>

                    <div class="mb-3">
                        <a href="?mod=product&act=add&user_id=1">Quay lại</a>
                        <input type="submit" name="btn-add" class="btn btn-primary" value="Thêm">
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