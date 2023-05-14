<?php

if (isset($_GET['user_id'])) {
    $id_pro = (int) $_GET['id_pro'];
    $user_id = $_GET['user_id'];
    unset($_SESSION['cart']['buy'][$user_id][$id_pro]);

    $sum_qty = 0;
    $sum_sub_total = 0;
    foreach ($_SESSION['cart']['buy'][$user_id] as $item) {
        $sum_qty = $sum_qty + $item['qty'];
        $sum_sub_total = $sum_sub_total + $item['sub_total'];
    }
    $_SESSION['cart']['info'][$user_id] = array(
        'sum_qty' => $sum_qty,
        'sum_sub_total' => $sum_sub_total
    );

    header("Location:?mod=cart&act=main&user_id=$user_id");
} else {
    header("Location:login.php");
}


?>