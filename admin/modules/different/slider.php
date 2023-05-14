<?php
$slider = array();
$sql = "select *from `slider`";
$result = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_assoc($result)) {
    $slider[] = $row;
}


?>


<?php
require('inc/header.php')

    ?>
<div id="main">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <a href="?mod=different&act=add_slider<?php
                if (isset($_GET['user_id'])) {
                    echo "&user_id=" . $_GET['user_id'];
                }

                ?>" class="btn btn-primary">Thêm slider</a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>STT</td>
                            <th>Tên slider</td>
                            <th class="text-center" >Hình ảnh</td>
                            <th class="text-center" >Chức năng</td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $temp = 0;

                        foreach ($slider as $item) {
                            $temp++;
                            ?>
                            <tr>
                                <td>
                                    <?php echo $temp; ?>
                                </td>
                                <td>
                                    <?php echo $item['name_slider'] ?>
                                </td>
                                <td class="text-center" style="width:100px; height:100px;"><img width="100%" height="100%"
                                        src="../upload/slide/<?php echo $item['name_img'] ?>" alt=""></td>
                                <td class="text-center" ><a href="?mod=different&act=update_slider<?php
                                if (isset($_GET['user_id'])) {
                                    echo "&user_id=" . $_GET['user_id'];
                                }

                                ?>&id_slider=<?php echo $item['id_slider'] ?>">Sửa</a> | <a href="?mod=different&act=delete_slider<?php
                                   if (isset($_GET['user_id'])) {
                                       echo "&user_id=" . $_GET['user_id'];
                                   }

                                   ?>&id_slider=<?php echo $item['id_slider'] ?>">Xóa</a>
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