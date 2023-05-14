<?php
if (isset($_GET['user_id'])) {
    $user_id = $_GET['user_id'];
    $sql = "select *from `tbl_order` where  `user_id`={$user_id}";
    $result = mysqli_query($conn, $sql);
    $list_order = array();
    while ($row = mysqli_fetch_array($result)) {
        $list_order[] = $row;
    }
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
                                <th>Sản phẩm</th>
                                <th>Tổng tiền</th>
                                <th>Thời gian</th>
                                <th>Trạng thái</th>
                                <th>Thanh toán</th>
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
                                        <?php
                                        $sql = "select *from `tbl_order_detail`,`tbl_product` where `tbl_order_detail`.`id_pro`=`tbl_product`.`id_pro`  and `code_order`={$item['code_order']}";
                                        $result = mysqli_query($conn, $sql);
                                        $list_order_detail = array();
                                        while ($row = mysqli_fetch_array($result)) {
                                            $list_order_detail[] = $row;
                                        }
                                        ?>
                                        <td style="width:300px">
                                            <?php
                                            foreach ($list_order_detail as $detail) {
                                                echo $detail['pro_name'];
                                                ?>
                                                <br>
                                                <?php
                                            }

                                            ?>
                                        </td>
                                        <td>
                                            <?php
                                            echo format_number($item['sum_price']);
                                            ?>

                                        </td>
                                        <td>
                                            <?php echo $item['time_at'] ?>
                                        </td>

                                        <td>
                                            <?php
                                            if ($item['status'] == 0) {
                                                echo "Chờ duyệt";
                                            } else {
                                                if ($item['status'] == 1) {
                                                    echo "Đã gửi yêu cầu hủy !";
                                                } else {
                                                    if ($item['status'] == 2) {
                                                        echo "Đã duyệt !";
                                                    } else {
                                                        if ($item['status'] == 3) {
                                                            echo "Đã hủy !";
                                                        }
                                                    }
                                                }
                                            }

                                            ?>
                                        </td>
                                        <td>
                                            <?php
                                            if ($item['payment'] == 0) {
                                                echo "Thanh toán khi nhận hàng";
                                            } else {
                                                if ($item['payment'] == 0) {
                                                    echo "Đã thanh toán quan VNPAY";
                                                } else {
                                                    echo "Đã thanh toán quan MOMO";
                                                }
                                            }

                                            ?>
                                        </td>
                                        <td><a
                                                href="?mod=order&act=detail&user_id=<?php echo $user_id ?>&id_order=<?php echo $item['id_order'] ?>">Xem</a>
                                            | <a
                                                href="?mod=order&act=cancel&user_id=<?php echo $user_id ?>&id_order=<?php echo $item['id_order'] ?>">Hủy</a>
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
} else {
    header("location:login.php");
}
?>