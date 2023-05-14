<?php
require '../modules/Carbon/autoload.php';
require 'lib/connect.php';
use Carbon\Carbon;
use Carbon\CarbonInterval;

if (isset($_POST['time'])) {
    $time = $_POST['time'];
} else {
    $time = "";
    $subdays = Carbon::now('Asia/Ho_Chi_Minh')->subdays(365)->toDateString();
}
if ($time == "day") {
    $subdays = Carbon::now('Asia/Ho_Chi_Minh')->subdays(0)->toDateString();
} else {
    if ($time == "7day") {
        $subdays = Carbon::now('Asia/Ho_Chi_Minh')->subdays(7)->toDateString();
    } else {
        if ($time == "28day") {
            $subdays = Carbon::now('Asia/Ho_Chi_Minh')->subdays(28)->toDateString();
        } else {
            if ($time == "90day") {
                $subdays = Carbon::now('Asia/Ho_Chi_Minh')->subdays(90)->toDateString();
            } else {
                if ($time == "365day") {
                    $subdays = Carbon::now('Asia/Ho_Chi_Minh')->subdays(365)->toDateString();
                }
            }
        }
    }
}


$time_day = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();
$now = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();

$sql = "select * from `tbl_statistical` where `date` between '{$subdays}' and '{$now}' order by `date` ASC";
$sql_query = mysqli_query($conn, $sql);
if (!empty($sql_query)) {
    while ($val = mysqli_fetch_array($sql_query)) {
        $chart_data[] = array(
            'date' => $val['date'],
            'order' => $val['order_qt'],
            'sales' => $val['sales'],
            'quantity' => $val['quantity']
        );
    }
    echo json_encode($chart_data);
} 


?>