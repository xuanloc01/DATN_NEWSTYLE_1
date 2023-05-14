<?php
if (isset($_GET['user_id'])) {
    $user_id = $_GET['user_id'];
    $id_slider = (int) $_GET['id_slider'];
    $sql="select * from `slider` where `id_slider`={$id_slider}";
    $result=mysqli_query($conn,$sql);
    $slider=mysqli_fetch_assoc($result);
    $url_image = '../upload/slide/' . $slider['name_img'];
    unlink($url_image);
    $sql_del = "delete from `slider` where `id_slider`={$id_slider}";
    if (mysqli_query($conn, $sql_del)) {

        header("location:?mod=different&act=slider&user_id=$user_id");
    }
} else {
    header("Location:login.php");
}





?>