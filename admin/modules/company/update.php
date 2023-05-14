<?php
$user_id=$_GET['user_id'];
$id_com= (int)$_GET['id_com'];

if(isset($_POST['btn-up'])){
    $company_name_new=$_POST['company_name'];
    $company_address_new=$_POST['company_address'];
    $id_cat=$_POST['category'];
    $sql_up="update `tbl_company` set `company_name`='{$company_name_new}',`company_address`='{$company_address_new}',`id_cat`='{$id_cat}' where `id_com`={$id_com}";
    if(mysqli_query($conn, $sql_up))
    {
        header("location:?mod=company&act=main&user_id=$user_id");
    }
}

$sql = "select *from `tbl_company` where `id_com`={$id_com}";
$result = mysqli_query($conn, $sql);
$com=mysqli_fetch_assoc($result);

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
                <h2>Sửa NSX</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">

            </div>
            <div class="col-md-8">
                <form action="" method="post">
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label">Tên NSX</label>
                    <input type="text" value="<?php echo $com['company_name']  ?>" name="company_name" class="form-control" id="formGroupExampleInput"
                        placeholder="Nhập tên NSX.">
                </div>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label">Địa chỉ</label>
                    <input type="text" value="<?php echo $com['company_address']  ?>" name="company_address" class="form-control" id="formGroupExampleInput"
                        placeholder="Nhập địa chỉ.">
                </div>
                <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">Danh mục</label>
                        <select class="form-select" name="category" aria-label="Disabled select example">
                            <option>Chọn danh mục</option>
                            <?php

                            foreach ($category as $item) {
                                ?>

                                <option <?php if ($item['id_cat'] == $com['id_cat']) {
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