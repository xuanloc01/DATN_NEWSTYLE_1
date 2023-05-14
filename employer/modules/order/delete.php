<?php

$user_id = $_GET['user_id'];
$code_order=$_GET['code_order'];
$sql_del = "delete from `tbl_order` where `code_order`={$code_order}";
$sql_del_1 = "delete from `tbl_order` where `code_order`={$code_order}";
if (mysqli_query($conn, $sql_del) && mysqli_query($conn, $sql_del_1)) {
    header("location:?mod=order&act=order_cancel&user_id=$user_id");
}








?>