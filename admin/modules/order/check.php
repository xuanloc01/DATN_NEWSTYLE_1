<?php
$user_id = $_GET['user_id'];
$id_order = $_GET['id_order'];
$sql = "select *from `tbl_order` where `id_order`={$id_order} ";
$result = mysqli_query($conn, $sql);
$order = mysqli_fetch_array($result);
$status = $order['status'];
if ($status == 0) {
    $status = 2;
    $sql_up = "update `tbl_order` set `status`='{$status}' where `id_order`={$id_order}";
    mysqli_query($conn, $sql_up);

    $sql_tk = "select *from `tbl_order` where `status`={$status} and `time`='{$time}'";
    $result_tk = mysqli_query($conn, $sql_tk);
    $order_tk = mysqli_num_rows($result_tk);
    $sql_tk1 = "select *from `tbl_order`,`tbl_order_detail` where  `tbl_order`.`code_order`=`tbl_order_detail`.`code_order` and`status`={$status} and `time`='{$time}'";
    $result_tk1 = mysqli_query($conn, $sql_tk1);
    $order_tk1=array();
    while ($row = mysqli_fetch_assoc($result_tk1)) {
        $order_tk1[] = $row;
    }
    print_r($order_tk1);
    $quantity = 0;
    $sales = 0;
    foreach ($order_tk1 as $tk1) {
        $quantity = $quantity + $tk1['quantity_buy'];
        $sales = $sales + (int)$tk1['price_buy'];
    }
    echo $quantity;
    echo $sales;
    $sql_ck = "select *from `tbl_statistical` where `date`='{$time}'";
    $result_ck = mysqli_query($conn, $sql_ck);
    $order_ck = mysqli_num_rows($result_ck);
    if ($order_ck==0) {
        $sql_ck1 = "insert into `tbl_statistical` (`date`,`order_qt`,`sales`,`quantity`)  values ('{$time}',{$order_tk},'{$sales}',{$quantity})";
        mysqli_query($conn, $sql_ck1);
    } else {
        $sql_ck1 = "update `tbl_statistical` set `date`='{$time}',`order_qt`='{$order_tk}',`sales`='{$sales}',`quantity`='{$quantity}' where `date`='{$time}'";
        mysqli_query($conn, $sql_ck1);
    }
    $sql_up = "update `tbl_order` set `status`='{$status}' where `id_order`={$id_order}";
    
    header("location:?mod=order&act=order_uncheck&user_id=$user_id");
    
}

?>