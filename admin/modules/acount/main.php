<?php



?>


<?php
require('inc/header.php')

    ?>
<div id="main">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3>Danh sách tài khoản</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <a href="?mod=acount&act=add<?php
                    if (isset($_GET['user_id'])) {
                        echo "&user_id=" . $_GET['user_id'];
                    }

                    ?>" class="btn btn-primary">Thêm tài khoản</a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>STT</td>
                            <th>Họ tên</td>
                            <th>Username</td>
                            <th>Email</td>
                            <th>SĐT</td>
                            <th>Địa chỉ</td>
                            <th>Cấp độ</td>
                            <th>Chức năng</td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $k = 2;
                        $z=3;
                        $user=array();
                        $sql = "select * from `tbl_user` where `role_id`={$k} or `role_id`={$z}";
                        $result = mysqli_query($conn, $sql);
                        while ($row = mysqli_fetch_assoc($result)) {
                            $user[] = $row;
                        }
                        $temp = 0;

                        foreach ($user as $item) {
                            $temp++;
                            ?>
                            <tr>
                                <td>
                                    <?php echo $temp; ?>
                                </td>
                                <td>
                                    <?php echo $item['fullname'] ?>
                                </td>
                                <td>
                                    <?php echo $item['username'] ?>
                                </td>
                                <td>
                                    <?php echo $item['email'] ?>
                                </td>
                                <td>
                                    <?php echo $item['phone'] ?>
                                </td>
                                <td>
                                    <?php echo $item['address'] ?>
                                </td>
                                <td>
                                    <?php if($item['role_id']==2){
                                        echo "Người dùng";
                                    }
                                    else{
                                        echo "Nhân Viên";
                                    } ?>
                                </td>
                                <td><a href="?mod=acount&act=delete<?php
                                   if (isset($_GET['user_id'])) {
                                       echo "&user_id=" . $_GET['user_id'];
                                   }

                                   ?>&user_id=<?php echo $item['user_id'] ?>">Xóa</a>
                                </td>
                            </tr>

                            <?php

                        }
                        ?>


                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<?php
require('inc/footer.php')

    ?>