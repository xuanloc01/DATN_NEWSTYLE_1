<?php
if (isset($_GET['user_id'])) {
    $user_id = $_GET['user_id'];
    if (isset($_POST['btn-add'])) {
        $color_name = $_POST['color_name'];
        $sql_add = "insert into `color` (`name_color`) values ('{$color_name}')";
        if (mysqli_query($conn, $sql_add)) {

            header("Location:?mod=different&act=color&user_id=$user_id");
        }
    }

}
else{
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
                <h2>Thêm màu sắc</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">

            </div>
            <div class="col-md-8">
                <form action="" method="post">
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">Tên màu</label>
                        <input type="text" name="color_name" class="form-control" id="formGroupExampleInput"
                            placeholder="Nhập tên màu sắc.">
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