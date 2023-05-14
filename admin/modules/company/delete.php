<?php
$user_id=$_GET['user_id'];
$id_com= (int)$_GET['id_com'];
$sql_del= "delete from `tbl_company` where `id_com`={$id_com}";
    if(mysqli_query($conn, $sql_del))
    {
        header("location:?mod=company&act=main&user_id=$user_id");
    }


?>