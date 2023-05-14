<?php
require("modules/mail/send_mail.php");

$user_id = $_GET['user_id'];


if (isset($_GET['partnerCode']) && $_GET['message'] == "Successful.") {
    $fullname = $_SESSION['checkout'][$user_id]['fullname'];
    $phone = $_SESSION['checkout'][$user_id]['phone'];
    $address = $_SESSION['checkout'][$user_id]['address'];
    $note = $_SESSION['checkout'][$user_id]['note'];
    $code_order = $_SESSION['checkout'][$user_id]['code_order'];
    $sum_price = $_SESSION['checkout'][$user_id]['sum_price'];
    $payment = 3;
    $status = 0;
    $sql = "insert into `tbl_order` (`fullname`,`address_order`,`phone_order`,`code_order`,`note`,`sum_price`,`time`,`time_at`,`status`,`payment`,`user_id`) values ('{$fullname}','{$address}',{$phone},{$code_order},'{$note}','{$sum_price}','{$time}','{$now}',{$status},{$payment},{$user_id})";
    mysqli_query($conn, $sql);
    foreach ($_SESSION['cart']['buy'][$user_id] as $item) {
        $id_pro = $item['id_pro'];
        $quantity_buy = $item['qty'];
        $id_color = $item['color'];
        $price_buy = $item['pro_price'];
        $sql = "select *from `color` where `id_color`={$item['color']}";
        $x = mysqli_query($conn, $sql);
        $cl = mysqli_fetch_assoc($x);
        $color = $cl['name_color'];

        $sql = "insert into `tbl_order_detail` (`id_pro`,`quantity_buy`,`price_buy`,`color`,`code_order`) values ({$id_pro},{$quantity_buy},'{$price_buy}','{$color}',{$code_order})";
        mysqli_query($conn, $sql);
    }

    $partnerCode = $_GET['partnerCode'];
    $orderId = $_GET['orderId'];
    $amount = $_GET['amount'];
    $orderInfo = $_GET['orderInfo'];
    $orderType = $_GET['orderType'];
    $transId = $_GET['transId'];
    $message = $_GET['message'];
    $sql = "insert into `momo` (`partnerCode`,`orderId`,`amount`,`orderInfo`,`orderType`,`transId`,`message`,`code_order`) 
        values ('{$partnerCode}','{$orderId}','{$amount}','{$orderInfo}','{$orderType}','{$transId}','{$message}',{$code_order})";

    if (mysqli_query($conn, $sql)) {
        $mail_pay = $_SESSION['user'][$user_id]['email'];
        $title = "Cám ơn quý khách đã đặt hàng bên shop NEWSTYLE";
        $desc = "<h3>Thông tin đơn hàng</h3><br>";
        $desc .= "<h4>Thông tin khách hàng</h4><br>";
        $desc .= "<p>Mã đơn hàng :" . $code_order . "</p><br>";
        $desc .= "<p>Tên Người nhận :" . $fullname . "</p><br>";
        $desc .= "<p>Địa chỉ :" . $address . "</p><br>";
        $desc .= "<p>Số điện thoại :" . $phone . "</p><br>";
        $desc .= "<p>Ghi chú :" . $note . "</p><br>";
        $desc .= "<p>Hình thức thanh toán : Đã thanh toán qua ví MOMO </p><br>";
        $desc .= "<h3>Thông tin sản phẩm</h3><br>";
        $desc .= "<table>
            <tr style='text-align:center; border:solid 1px grey; '>
            <th>STT</th>
            <th>Tên mặt hàng</th>
            <th>Đơn giá</th>
            <th>Số lượng</th>
            <th>Thành tiền</th>
            </tr>
            ";
        $temp = 0;
        foreach ($_SESSION['cart']['buy'][$user_id] as $item) {
            $temp++;
            $desc .= "<tr style='text-align:center'>
                <td>" . $temp . "</td><td style='width:200px'>" . $item['pro_name'] . "</td><td>" . $item['pro_price'] . "</td><td>" . $item['qty'] . "</td><td>" . $item['pro_price'] * $item['qty'] . "</td></tr>";
        }
        $desc .= "</table>";

        $desc .= "<br> <h2> Tổng tiền :" . $_SESSION['cart']['info'][$user_id]['sum_sub_total'] . "</h2>";
        $mail = new Mailer();
        $mail->pay($title, $desc, $mail_pay);
        unset($_SESSION['cart']['buy'][$user_id]);
        unset($_SESSION['checkout'][$user_id]);

    }

} else {
    if (isset($_GET['suces'])) {
        if ($_GET['suces'] == 1) {
            ?>
            <div class="container">
                <div class="col-md-12">
                    <div class="row">
                        <h2>Đặt hàng thành công .</h2>
                        <p>Chi tiết đơn hàng sẽ được gửi qua email của quý khách .
                            <br>
                            Quý khách có thể xem chi tiết đơn hàng ở phần lịch sử đơn hàng.
                        </p>
                    </div>
                </div>
            </div>
            <?php
        }
    } else {
        ?>
        <div class="container">
            <div class="col-md-12">
                <div class="row">
                    <h2>Đặt hàng thành không công .</h2>
                </div>
            </div>
        </div>

        <?php
    }
}

?>