<?php
require '../modules/Carbon/autoload.php';

use Carbon\Carbon;
use Carbon\CarbonInterval;
$time=Carbon::now('Asia/Ho_Chi_Minh')->toDateString();

$now=Carbon::now('Asia/Ho_Chi_Minh');
session_start();
ob_start();
require 'lib/connect.php';
require 'lib/number.php';
if (isset($_GET['user_id'])) {
   
    $mod = !empty($_GET['mod']) ? $_GET['mod'] : 'home';
    $act = !empty($_GET['act']) ? $_GET['act'] : 'main';

    $path = "modules/{$mod}/{$act}.php";

    require($path);


} else {
    header("location:../login.php");
}



?>