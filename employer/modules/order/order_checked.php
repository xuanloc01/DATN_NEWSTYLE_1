<?php
$user_id = $_GET['user_id'];
$sql = "select *from `tbl_order`,`tbl_user` where `tbl_order`.`user_id`=`tbl_user`.`user_id` and `status`=2";
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

                                    <td>
                                        <?php
                                        echo $item['sum_price'];
                                        ?>
                                    </td>
                                    <td>
                                        <?php echo $item['time'] ?>
                                    </td>
                                    <td>
                                        <?php
                                        if ($item['status'] == 2) {
                                            echo "Đã duyệt !";
                                        }

                                        ?>
                                    </td>
                                    <td><a
                                            href="?mod=order&act=detail&user_id=<?php echo $user_id ?>&id_order=<?php echo $item['id_order'] ?>">Xem</a>|<a
                                            href="?mod=order&act=print&user_id=<?php echo $user_id ?>&id_order=<?php echo $item['id_order'] ?>">In
                                            đơn hàng</a>

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