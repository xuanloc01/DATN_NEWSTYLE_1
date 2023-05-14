<?php
$user_id = $_GET['user_id'];
$sql = "select *from `tbl_order`,`tbl_user` where `tbl_order`.`user_id`=`tbl_user`.`user_id` and `status`=0";
$result = mysqli_query($conn, $sql);
$list_order = array();
while ($row = mysqli_fetch_array($result)) {
    $list_order[] = $row;
}


?>


<?php
require('inc/header.php')

?>
<div id="main">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2>Danh sách đơn hàng</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center">
                <?php
                if (empty($list_order)) {
                    ?>
                    <p>Không có đơn hàng nào !</p>
                    <?php
                } else {
                    ?>
                    <table class="table table-hover">
                        <thead>
                            <th>STT</th>
                            
                            <th>Mã đơn</th>
                            <th>Địa chỉ</th>
                            <th>Tổng tiền</th>
                            <th>Thời gian</th>
                            <th>Trạng thái</th>
                            <th>Chức năng</th>
                        </thead>
                        <tbody>
                            <?php
                            $temp = 0;
                            foreach ($list_order as $item) {
                                $temp++;
                                ?>

                                <tr>
                                    <td>
                                        <?php echo $temp ?>
                                    </td>
                                   
                                    <td>
                                        <?php echo $item['code_order'] ?>
                                    </td>

                                    <td style="width:300px">
                                        <?php echo $item['address_order'] ?>
                                    </td>
                                    <?php
                                    $sql = "select *from `tbl_order_detail`,`tbl_product` where `tbl_order_detail`.`id_pro`=`tbl_product`.`id_pro`  and `code_order`={$item['code_order']}";
                                    $result = mysqli_query($conn, $sql);
                                    $list_order_detail = array();
                                    while ($row = mysqli_fetch_array($result)) {
                                        $list_order_detail[] = $row;
                                    }
                                    ?>
                                    <td>
                                        <?php
                                        $sum = 0;
                                        foreach ($list_order_detail as $detail) {
                                            $sum += $detail['price_buy'] * $detail['quantity_buy'];
                                        }
                                        echo $sum;
                                        ?>
                                    </td>
                                    <td>
                                        <?php echo $item['time'] ?>
                                    </td>
                                    <td>
                                        <?php
                                        if ($item['status'] == 0) {
                                            echo "Chờ xử lí";
                                        } else {
                                            if ($item['status'] == 1) {
                                                echo "Đã gửi yêu cầu hủy !";
                                            }
                                        }

                                        ?>
                                    </td>
                                    <td><a
                                            href="?mod=order&act=detail&user_id=<?php echo $user_id ?>&id_order=<?php echo $item['id_order'] ?>">Xem</a>
                                        | <a
                                            href="?mod=order&act=check&user_id=<?php echo $user_id ?>&id_order=<?php echo $item['id_order'] ?>">duyệt</a>
                                    </td>
                                </tr>
                                <?php
                            }
                            ?>
                        </tbody>
                    </table>

                    <?php
                }

                ?>

            </div>
        </div>
    </div>
</div>
<?php
require('inc/footer.php')

    ?>