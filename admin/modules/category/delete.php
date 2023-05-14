<?php
if (isset($_GET['user_id'])) {
    $user_id = $_GET['user_id'];
    $id_cat = (int) $_GET['id_cat'];
    $sql_del = "delete from `tbl_category` where `id_cat`={$id_cat}";
    if (mysqli_query($conn, $sql_del)) {
        header("location:?mod=category&act=main&user_id=$user_id");
    }


} else {
    header("Location:login.php");
}





?>