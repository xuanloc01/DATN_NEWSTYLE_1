<?php
if (isset($_GET['user_id'])) {
    ?>
    <div id="main">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h2>Giỏ hàng</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <?php
                    if (empty($_SESSION['cart']['buy'][$_GET['user_id']])) {
                        ?>
                        <p>Không có sản phẩm nào trong giỏ hàng</p>
                        <?php
                    } else {
                        ?>
                        <form action="?mod=cart&act=update&user_id=<?php echo $_GET['user_id'] ?>" method="post">
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr style="margin:auto">
                                        <th>STT</th>
                                        <th>Tên</th>
                                        <th>Màu</th>
                                        <th>Hình ảnh</th>
                                        <th>Giá</th>
                                        <th>Số lượng</th>
                                        <th>Thành tiền</th>
                                        <th>Chức năng</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <?php
                                    $user_id = $_GET['user_id'];
                                    $temp = 0;
                                    foreach ($_SESSION['cart']['buy'][$user_id] as $item) {
                                        $temp++;
                                        ?>

                                        <tr style="margin:auto">
                                            <td>
                                                <?php echo $temp ?>
                                            </td>
                                            <td style="width:200px">
                                                <?php echo $item['pro_name'] ?><br>(Phiên bản :
                                                <?php echo $item['memory'] ?>)
                                            </td>
                                            <td>
                                                <?php
                                                $sql = "select *from `color` where `id_color`={$item['color']}";
                                                $x = mysqli_query($conn, $sql);
                                                $cl = mysqli_fetch_assoc($x);
                                                echo $cl['name_color'];
                                                ?>

                                            </td>
                                            <td><img width="auto" height="100px" src="upload/product/<?php echo $item['pro_img'] ?>"
                                                    alt=""></td>
                                            <td>
                                                <?php echo format_number($item['pro_price']) ?>
                                            </td>
                                            <td><input style="width: 50px; height:50px;" name="qty[<?php echo $item['id_pro'] ?>]"
                                                    type="number" min="1" max="<?php echo $item['pro_warehouse'] ?>"
                                                    value="<?php echo $item['qty'] ?>"></td>
                                            <td>
                                                <?php echo format_number($item['sub_total']) ?>
                                            </td>
                                            <td><a href="?mod=cart&act=delete_one<?php
                                            if (isset($_GET['user_id'])) {
                                                echo "&user_id=" . $_GET['user_id'];
                                            }

                                            ?>&id_pro=<?php echo $item['id_pro'] ?>">Xóa</a></td>
                                        </tr>
                                        <?php
                                    }
                                    ?>

                                </tbody>

                            </table>
                            <?php
                            $item = $_SESSION['cart']['info'][$user_id];

                            ?>
                            <div class="sum-cart">

                                <h4 id="sum">Tổng tiền : <span>
                                        <?php echo format_number($item['sum_sub_total']) ?>
                                    </span></h4>
                            </div>
                            <input type="submit" style="margin-left: 900px;" class="btn btn-success mb-4 mt-4" value="Cập nhật giỏ hàng" class="update" name="btn_up">
                        </form>

                        <div style="margin-left: 900px;" class="pay">
                            <a class="btn btn-primary"
                                href="?mod=cart&act=delete_all&user_id=<?php echo $_GET['user_id'] ?>">Xóa tất cả</a>
                            <a class="btn btn-primary" href="?mod=pay&atc=main&user_id=<?php echo $_GET['user_id'] ?>">Đặt
                                hàng</a>
                        </div>
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