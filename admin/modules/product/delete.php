<?php
$user_id=$_GET['user_id'];
$id_pro= (int)$_GET['id_pro'];
$sql_del= "delete from `tbl_product` where `id_pro`={$id_pro}";
$sql_del_1= "delete from `tbl_pro_class` where `id_pro`={$id_pro}";
    if(mysqli_query($conn, $sql_del) && mysqli_query($conn, $sql_del_1))
    {
        header("location:?mod=product&act=main&user_id=$user_id");
    }


?>