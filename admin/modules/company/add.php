<?php
$user_id = $_GET['user_id'];
if (isset($_POST['btn-add'])) {
    $error = array();
    if (empty($_POST['company_name'])) {
        $error['company_name'] = "Không được để trống mục này .";
    } else {

        $company_name = $_POST['company_name'];

    }
    if (empty($_POST['company_address'])) {
        $error['company_address'] = "Không được để trống mục này .";
    } else {

        $company_address = $_POST['company_address'];

    }
    if (empty($_POST['category'])) {
        $error['category'] = "Không được để trống mục này .";
    } else {

        $id_cat = $_POST['category'];

    }

    if (empty($error)) {
        $sql_add = "insert into `tbl_company` (`company_name`,`company_address`,`id_cat`) values ('{$company_name}','{$company_address}',{$id_cat})";
        if (mysqli_query($conn, $sql_add)) {
            header("Location:?mod=company&act=main&user_id=$user_id");
        }
    }

}
$category = array();
$sql = "select *from `tbl_category`";
$result = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_assoc($result)) {
    $category[] = $row;
}


?>


<?php
require('inc/header.php')

    ?>
<div id="main">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2>Thêm danh mục</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">

            </div>
            <div class="col-md-8">
                <form action="" method="post">
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">Tên nhà sản xuất</label>
                        <input type="text" name="company_name" class="form-control" id="formGroupExampleInput"
                            placeholder="Nhập tên nhà sản xuất.">
                        <?php
                        if (!empty($error['company_name'])) {
                            ?>
                            <p>
                                <?php echo $error['company_name'] ?>
                            </p>
                            <?php
                        }

                        ?>
                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">Địa chỉ</label>
                        <input type="text" name="company_address" class="form-control" id="formGroupExampleInput"
                            placeholder="Nhập địa chỉ.">
                        <?php
                        if (!empty($error['company_address'])) {
                            ?>
                            <p>
                                <?php echo $error['company_address'] ?>
                            </p>
                            <?php
                        }

                        ?>
                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">Danh mục</label>
                        <select class="form-select" name="category" aria-label="Disabled select example">
                            <option value="" selected>Chọn danh mục</option>
                            <?php

                            foreach ($category as $item) {
                                ?>

                                <option value="<?php echo $item['id_cat'] ?>"><?php echo $item['category_name'] ?></option>

                                <?php
                            }
                            ?>

                        </select>
                        <?php
                        if (!empty($error['category'])) {
                            ?>
                            <p>
                                <?php echo $error['category'] ?>
                            </p>
                            <?php
                        }

                        ?>
                    </div>
                    <div class="mb-3">
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