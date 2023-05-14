<?php
if (isset($_GET['user_id'])) {
    $user_id = $_GET['user_id'];
    if (isset($_POST['btn-add'])) {
        $error = array();
        if (empty($_POST['category_name'])) {
            $error['category_name'] = "Không được để trống mục này .";
        } else {

            $category_name = $_POST['category_name'];

        }
        if (empty($error)) {
            $sql_add = "insert into `tbl_category` (`category_name`) values ('{$category_name}')";
            if (mysqli_query($conn, $sql_add)) {

                header("Location:?mod=category&act=main&user_id=$user_id");
            }
        }

    }

} else {
    header("Location:login.php");

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
                        <label for="formGroupExampleInput" class="form-label">Tên danh mục</label>
                        <input type="text" name="category_name" class="form-control" id="formGroupExampleInput"
                            placeholder="Nhập tên danh mục.">
                        <?php
                        if (!empty($error['category_name'])) {
                            ?>
                            <p>
                                <?php echo $error['category_name'] ?>
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