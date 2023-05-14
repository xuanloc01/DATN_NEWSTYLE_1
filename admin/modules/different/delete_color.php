<?php
if (isset($_GET['user_id'])) {
    $user_id = $_GET['user_id'];
    $id_color = (int) $_GET['id_color'];
    $sql_del = "delete from `color` where `id_color`={$id_color}";
    if (mysqli_query($conn, $sql_del)) {
        header("location:?mod=different&act=color&user_id=$user_id");
    }


} else {
    header("Location:login.php");
}





?>