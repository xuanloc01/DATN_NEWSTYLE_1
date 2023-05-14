<?php

$user_id = $_GET['user_id'];
$id_order = $_GET['id_order'];
$sql = "select *from `tbl_order` where `id_order`={$id_order} ";
$result = mysqli_query($conn, $sql);
$order = mysqli_fetch_array($result);

$sql = "select *from `tbl_order_detail`,`tbl_product` where `tbl_order_detail`.`id_pro`=`tbl_product`.`id_pro`  and `code_order`={$order['code_order']}";
$result = mysqli_query($conn, $sql);
$list_order_detail = array();
while ($row = mysqli_fetch_array($result)) {
    $list_order_detail[] = $row;
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
        <div class="row mt-4 mb-4">
            <div class="col-md-5">
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Mã đơn hàng :
                        <?php echo $order['code_order'] ?>
                    </label>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Thời gian :
                        <?php echo $order['time_at'] ?>
                    </label>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Họ và tên :
                        <?php echo $order['fullname'] ?>
                    </label>
                </div>
               
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Số điện thoại :
                        <?php echo $order['phone_order'] ?>
                    </label>

                </div>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Địa chỉ :
                        <?php echo $order['address_order'] ?>
                    </label>

                </div>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Ghi chú :
                        <?php echo $order['note'] ?>
                    </label>
                </div>
            </div>

            <div class="col-md-7 text-center">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th style="width:250px">Tên mặt hàng</th>
                            <th>Đơn giá</th>
                            <th>Số lượng</th>
                            <th>Thành tiền</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $temp=0;
                        $sum=0;
                        foreach ($list_order_detail as $item) {
                            $temp++;
                            ?>
                            <tr>
                                <td><?php  echo $temp; ?></td>
                                <td><?php  echo $item['pro_name'] ?></td>
                                <td><?php  echo format_number($item['price_buy']) ?></td>
                                <td><?php  echo $item['quantity_buy'] ?></td>
                                <td><?php  echo format_number($item['price_buy']*$item['quantity_buy']) ?></td>
                                
                            </tr>
                            <?php
                            $sum+=$item['price_buy']*$item['quantity_buy'];
                        }
                        ?>

                    </tbody>
                </table>
            </div>
        </div>
        <div class="row mt-4 mb-4">
            <div class="col-md-8">
                
            </div>
            <div class="col-md-4 ">
                <h3> Tổng tiền :
                    <?php echo format_number($sum); ?>
                </h3>
            </div>
        </div>
    </div>
</div>