<?php

if (isset($_GET['user_id'])) {
    $id_pro = (int) $_GET['id_pro'];
    $user_id= $_GET['user_id'];
    $id_color=$_GET['id_color'];
    $name_memory=$_GET['name_memory'];
    add_cart($user_id,$id_pro,$id_color,$name_memory);
    header("Location:?mod=cart&act=main&user_id=$user_id");
}
else{
    header("Location:login.php");
}


?>