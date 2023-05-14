<?php
$user_id = $_GET['user_id'];
$id_cm = (int) $_GET['id_cm'];
$sql_del = "delete from `tbl_comment` where `id_cm`={$id_cm}";
if (mysqli_query($conn, $sql_del)) {
    header("location:?mod=comment&act=main&user_id=$user_id");
}


?>