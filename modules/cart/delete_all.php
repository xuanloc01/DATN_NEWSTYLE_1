<?php


if (isset($_GET['user_id'])) {
     $user_id= $_GET['user_id'];
    unset($_SESSION['cart']['buy'][$user_id]);
    unset($_SESSION['cart']['info'][$user_id]);
    header("Location:?mod=cart&act=main&user_id=$user_id");
}
else{
    header("Location:login.php");
}


?>