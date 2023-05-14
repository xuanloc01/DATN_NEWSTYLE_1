<?php
if (isset($_GET['user_id'])) {
    $user_id=$_GET['user_id'];
    $id_cat = (int) $_GET['id_cat'];
    if (isset($_POST['btn-up'])) {
        $category_name_new = $_POST['category_name'];
        $sql_up = "update `tbl_category` set `category_name`='{$category_name_new}' where `id_cat`={$id_cat}";
        if (mysqli_query($conn, $sql_up)) {
            header("location:?mod=category&act=main&user_id=$user_id");
        }
    }
} else {
    header("location:../login.php");
}

$sql = "select *from `tbl_category` where `id_cat`={$id_cat}";
$result = mysqli_query($conn, $sql);
$cat = mysqli_fetch_assoc($result);
?>

<?php
require('inc/header.php')

    ?>
<div id="main">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2>Sửa danh mục</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">

            </div>
            <div class="col-md-8">
                <form action="" method="post">
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">Tên danh mục</label>
                        <input type="text" value="<?php echo $cat['category_name'] ?>" name="category_name"
                            class="form-control" id="formGroupExampleInput" placeholder="Nhập tên danh mục.">
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