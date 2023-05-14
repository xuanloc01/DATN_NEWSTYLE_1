<?php
if (isset($_GET['user_id'])) {
    $user_id = $_GET['user_id'];
    if (isset($_POST['btn-add'])) {

        if (empty($_POST['name_slider'])) {
            $error['name_slider'] = "Không được để trống mục này !";
        }
        else{
            $name_slider=$_POST['name_slider'];
        }

        if (!isset($_FILES['name_img'])) {
            $error['name_img'] = "Không được để trống mục này !";
        }
        else{
            $name_img = $_FILES['name_img']['name'];
        }
        if (empty($error)) {
            $upload_dir = '../upload/slide/';
            $upload_image = $upload_dir . $_FILES['name_img']['name'];
            move_uploaded_file($_FILES['name_img']['tmp_name'], $upload_image);

            $sql_add = "insert into `slider` (`name_slider`,`name_img`) values ('{$name_slider}','{$name_img}')";
            if (mysqli_query($conn, $sql_add)) {

                header("Location:?mod=different&act=slider&user_id=$user_id");
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
                <h2>Thêm slider</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">

            </div>
            <div class="col-md-8">
                <form enctype="multipart/form-data" action="" method="post">
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">Tên slider</label>
                        <input type="text" name="name_slider" class="form-control" id="formGroupExampleInput"
                            placeholder="Nhập tên slider.">
                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">HÌNH ẢNH</label>
                        <input type="FILE" name="name_img" class="form-control" id="formGroupExampleInput">
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