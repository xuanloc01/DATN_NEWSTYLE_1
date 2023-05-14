<?php
 session_start();
 ob_start();
$user_id=$_GET['user_id'];
unset($_SESSION['user'][$user_id]);
header("Location:index.php?")



?>