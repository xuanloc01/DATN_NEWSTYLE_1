<?php
if (isset($_GET['user_id'])) {
    $user_id=$_GET['user_id'];
    $id_color = (int) $_GET['id_color'];
    if (isset($_POST['btn-up'])) {
        $color_name_new = $_POST['color_name'];
        $sql_up = "update `color` set `name_color`='{$color_name_new}' where `id_color`={$id_color}";
        if (mysqli_query($conn, $sql_up)) {
            header("location:?mod=different&act=color&user_id=$user_id");
        }
    }
} else {
    header("location:../login.php");
}

$sql = "select *from `color` where `id_color`={$id_color}";
$result = mysqli_query($conn, $sql);
$color = mysqli_fetch_assoc($result);
?>

<?php
require('inc/header.php')

    ?>
<div id="main">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2>Sửa màu sắc</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">

            </div>
            <div class="col-md-8">
                <form action="" method="post">
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">Tên màu sắc</label>
                        <input type="text" value="<?php echo $color['name_color'] ?>" name="color_name"
                            class="form-control" id="formGroupExampleInput" placeholder="Nhập tên màu sắc.">
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