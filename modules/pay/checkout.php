<?php
// echo "<pre>";
// print_r($_SESSION);
// echo "</pre>";
$user_id = $_GET['user_id'];
require("modules/mail/send_mail.php");


if (isset($_POST['btn_order'])) {
    $fullname = $_SESSION['checkout'][$user_id]['fullname'];
    $phone = $_SESSION['checkout'][$user_id]['phone'];
    $address = $_SESSION['checkout'][$user_id]['address'];
    $note = $_SESSION['checkout'][$user_id]['note'];
    $code_order = $_SESSION['checkout'][$user_id]['code_order'];
    $sum_price=$_SESSION['checkout'][$user_id]['sum_price'];
    $payment = 0;
    $status = 0;
    $sql = "insert into `tbl_order` (`fullname`,`address_order`,`phone_order`,`code_order`,`note`,`sum_price`,`time`,`time_at`,`status`,`payment`,`user_id`) values ('{$fullname}','{$address}',{$phone},{$code_order},'{$note}','{$sum_price}','{$time}','{$now}',{$status},{$payment},{$user_id})";
    mysqli_query($conn, $sql);
    foreach ($_SESSION['cart']['buy'][$user_id] as $item) {
        $id_pro = $item['id_pro'];
        $quantity_buy = $item['qty'];
        $price_buy = $item['pro_price'];
        $id_color=$item['color'];
        $sql = "select *from `color` where `id_color`={$item['color']}";
        $x = mysqli_query($conn, $sql);
        $cl = mysqli_fetch_assoc($x);
        $color= $cl['name_color'];
        $memory=$item['memory'];
        $sql = "insert into `tbl_order_detail` (`id_pro`,`quantity_buy`,`price_buy`,`color`,`memory`,`code_order`) values ({$id_pro},{$quantity_buy},'{$price_buy}','{$color}','{$memory}',{$code_order})";
        mysqli_query($conn, $sql);
    }



    $mail_pay = $_SESSION['user'][$user_id]['email'];
    $title = "Cám ơn quý khách đã đặt hàng bên shop NEWSTYLE";
    $desc = "<h3>Thông tin đơn hàng</h3><br>";
    $desc .= "<h4>Thông tin khách hàng</h4><br>";
    $desc .= "<p>Mã đơn hàng :" . $code_order . "</p><br>";
    $desc .= "<p>Tên Người nhận :" . $fullname . "</p><br>";
    $desc .= "<p>Địa chỉ :" . $address . "</p><br>";
    $desc .= "<p>Số điện thoại :" . $phone . "</p><br>";
    $desc .= "<p>Ghi chú :" . $note . "</p><br>";
    $desc .= "<p>Hình thức thanh toán : Thanh toán khi nhận hàng . </p><br>";
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
        <td>" . $temp . "</td><td style='width:200px'>" . $item['pro_name'] . "</td><td>" . $item['pro_price'] . "</td><td>" . $item['qty'] . "</td><td>" . $item['pro_price'] * $item['qty'] . "đ </td></tr>";
    }
    $desc .= "</table>";

    $desc .= "<br> <h2> Tổng tiền :" . $_SESSION['cart']['info'][$user_id]['sum_sub_total'] ."đ" ."</h2>";
    $mail = new Mailer();
    $mail->pay($title, $desc, $mail_pay);
    unset($_SESSION['cart']['buy'][$user_id]);
    unset($_SESSION['checkout'][$user_id]);
    header("Location:?mod=pay&act=sucess&user_id=$user_id&suces=1");
}


?>



<div id="main">
    <div class="container">
        <h3>Lựa chọn hình thức thanh toán</h3>
        <form action="" method="POST">
            <div class="row mt-4 mb-4">
                
                <div class="col-md-2 ">
                    <input type="submit" class="btn btn-primary" value="Thanh toán khi nhận hàng" name="btn_order">
                </div>
            </div>

        </form>
        <div class="row mt-4 mb-4">
           

            <div class="col-md-2 ">
                <form class="" method="POST" target="_blank" enctype="application/x-www-form-urlencoded"
                    action="?mod=momo&act=momo_qr_treatment">
                    <input type="hidden" value="<?php echo $user_id ?>" name="user_id">
                    <input type="hidden" value="<?php echo $_SESSION['cart']['info'][$user_id]['sum_sub_total']; ?>"
                        name="amount">
                    <input type="submit" name="momo" value="MomoQR" class="btn btn-primary">
                </form>
            </div>
        </div>
        <div class="row mt-4 mb-4">
            

            <div class="col-md-2 ">
                <form class="" method="POST" target="_blank" enctype="application/x-www-form-urlencoded"
                    action="?mod=momo&act=momo_atm_treatment">
                    <input type="hidden" value="<?php echo $user_id ?>" name="user_id">
                    <input type="hidden" value="<?php echo $_SESSION['cart']['info'][$user_id]['sum_sub_total']; ?>"
                        name="amount">
                    <input type="submit" name="momo" value="MomoATM" class="btn btn-primary">
                </form>
            </div>
        </div>


    </div>
</div>