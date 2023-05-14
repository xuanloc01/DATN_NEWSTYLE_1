<?php
$user_id = $_GET['user_id'];
$id_order = $_GET['id_order'];
$status=1;
$sql_up = "update `tbl_order` set `status`='{$status}',`time`='{$time}' where `id_order`={$id_order}";
if (mysqli_query($conn, $sql_up)) {
    header("location:?mod=order&act=main&user_id=$user_id");
}


?>