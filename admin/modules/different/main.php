<?php
if (isset($_GET['user_id'])) {
    $user_id = $_GET['user_id'];

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
            <div class="col-md-12">
                <a href="?mod=different&act=color&user_id=<?php echo $user_id ?>" class="btn btn-primary">Màu sắc</a>
                <a href="?mod=different&act=memory&user_id=<?php echo $user_id ?>" class="btn btn-primary">Bộ nhớ</a>
                <a href="?mod=different&act=slider&user_id=<?php echo $user_id ?>" class="btn btn-primary">Slider</a>
            </div>
        </div>
        
    </div>
</div>
<?php
require('inc/footer.php')

    ?>