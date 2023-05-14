<?php
$user_id=$_GET['user_id'];
$id_key= (int)$_GET['id_key'];
unset($_SESSION['product_class'][$id_key]);
header("location:?mod=product&act=add&user_id=$user_id");
?>