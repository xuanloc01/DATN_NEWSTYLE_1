<?php
$user_id = $_GET['user_id'];
$id_ct = (int) $_GET['id_ct'];
$sql_del = "delete from `tbl_contact` where `id_contact`={$id_ct}";
if (mysqli_query($conn, $sql_del)) {
    header("location:?mod=contact&act=main&user_id=$user_id");
}


?>