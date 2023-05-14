<?php
if (isset($_GET['user_id'])) {
    $user_id = $_GET['user_id'];
    if (isset($_POST['btn-add'])) {
        $memory_name = $_POST['name_memory'];
        echo $memory_name;
        $sql_add = "insert into `memory` (`name_memory`) values ('{$memory_name}')";
        if (mysqli_query($conn, $sql_add)) {
            header("Location:?mod=different&act=memory&user_id=$user_id");
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
                <h2>Thêm bộ nhớ</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">

            </div>
            <div class="col-md-8">
                <form action="" method="post">
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">Tên</label>
                        <input type="text" name="name_memory" class="form-control" id="formGroupExampleInput"
                            placeholder="Nhập tên memory.">
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