<?php
if (isset($_GET['user_id'])) {
    $user_id=$_GET['user_id'];
    $id_memory = (int) $_GET['id_memory'];
    if (isset($_POST['btn-up'])) {
        $memory_name_new = $_POST['memory_name'];
        $sql_up = "update `memory` set `name`='{$memory_name_new}' where `id_memory`={$id_memory}";
        if (mysqli_query($conn, $sql_up)) {
            header("location:?mod=different&act=memory&user_id=$user_id");
        }
    }
} else {
    header("location:../login.php");
}

$sql = "select *from `memory` where `id_memory`={$id_memory}";
$result = mysqli_query($conn, $sql);
$memory = mysqli_fetch_assoc($result);
?>

<?php
require('inc/header.php')

    ?>
<div id="main">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2>Sửa bộ nhớ</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">

            </div>
            <div class="col-md-8">
                <form action="" method="post">
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">Tên</label>
                        <input type="text" value="<?php echo $memory['name'] ?>" name="memory_name"
                            class="form-control" id="formGroupExampleInput" placeholder="Nhập tên memory.">
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