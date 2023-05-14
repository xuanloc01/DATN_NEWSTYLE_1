<?php
// echo "<pre>";
// print_r($_SESSION);
// echo "</pre>";
$user_id = $_GET['user_id'];
require("modules/mail/send_mail.php");


if (isset($_POST['btn_con'])) {
    $_SESSION['checkout'][$user_id]['fullname'] = $fullname = $_POST['fullname'];
    $_SESSION['checkout'][$user_id]['phone'] = $phone = $_POST['phone'];
    $_SESSION['checkout'][$user_id]['address'] = $address = $_POST['address'];
    $_SESSION['checkout'][$user_id]['note'] = $note = $_POST['note'];
    $_SESSION['checkout'][$user_id]['code_order'] = $code_order = rand(1000, 9999);
    $_SESSION['checkout'][$user_id]['sum_price'] = $_SESSION['cart']['info'][$user_id]['sum_sub_total'];
    header("location:?mod=pay&act=checkout&user_id=" . $user_id);
}

?>



<div id="main">
    <div class="container">
        <div class="row mt-4 mb-4">
            <div class="col-md-12 text-center">
                <h2>Thông tin đặt hàng</h2>
            </div>
        </div>
        <div class="row mt-4 mb-4">
            <div class="col-md-5 text-center">
                <h2>Thông tin người nhận</h2>
            </div>

            <div class="col-md-7 text-center">
                <h2>Thông tin đơn hàng</h2>
            </div>
        </div>
        <form action="" method="POST">
            <div class="row mt-4 mb-4">
                <div class="col-md-5">
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Họ và tên</label>
                        <input type="text" name="fullname" class="form-control" id="exampleFormControlInput1"
                            placeholder="">
                    </div>

                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Số điện thoại</label>
                        <input type="number" name="phone" class="form-control" id="exampleFormControlInput1"
                            placeholder="">
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormControlTextarea1" class="form-label">Địa chỉ</label>
                        <textarea class="form-control" name="address" id="exampleFormControlTextarea1"
                            rows="3"></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormControlTextarea1" class="form-label">Ghi chú </label>
                        <textarea class="form-control" name="note" id="exampleFormControlTextarea1" rows="3"></textarea>
                    </div>
                </div>

                <div class="col-md-7 text-center">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th style="width:250px">Tên mặt hàng</th>
                                <th>Màu</th>
                                <th>Đơn giá</th>
                                <th>Số lượng</th>
                                <th>Thành tiền</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $temp = 0;
                            foreach ($_SESSION['cart']['buy'][$user_id] as $item) {
                                $temp++;
                                ?>
                                <tr>
                                    <td>
                                        <?php echo $temp ?>
                                    </td>
                                    <td style="width:250px">
                                        <?php echo $item['pro_name'] ?><br>(Phiên bản : <?php echo $item['memory'] ?>)
                                    </td>
                                    <td>
                                        <?php
                                        $sql = "select *from `color` where `id_color`={$item['color']}";
                                        $x = mysqli_query($conn, $sql);
                                        $cl = mysqli_fetch_assoc($x);
                                        echo $cl['name_color'];
                                        ?>
                                    </td>
                                    <td>
                                        <?php echo $item['pro_price'] ?>
                                    </td>
                                    <td>
                                        <?php echo $item['qty'] ?>
                                    </td>
                                    <td>
                                        <?php echo $item['sub_total'] ?>
                                    </td>
                                </tr>
                                <?php
                            }
                            ?>

                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row mt-4 mb-4">
                <div class="col-md-4 ">
                    <h3> Tổng tiền :
                        <?php echo $_SESSION['cart']['info'][$user_id]['sum_sub_total']; ?>
                    </h3>
                </div>
            </div>
            <div class="row mt-4 mb-4">
                <div class="col-md-10">
                </div>
                <div class="col-md-2 ">
                    <input type="submit" class="btn btn-primary" value="Tiếp theo" name="btn_con">
                </div>
            </div>

        </form>




    </div>
</div>