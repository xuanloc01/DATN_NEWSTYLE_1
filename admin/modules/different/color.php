<?php
$color = array();
$sql = "select *from `color`";
$result = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_assoc($result)) {
    $color[] = $row;
}


?>


<?php
require('inc/header.php')

    ?>
<div id="main">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <a href="?mod=different&act=add_color<?php
                    if (isset($_GET['user_id'])) {
                        echo "&user_id=" . $_GET['user_id'];
                    }

                    ?>" class="btn btn-primary">Thêm màu sắc</a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>STT</td>
                            <th>Tên màu</td>
                            <th>Chức năng</td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $temp = 0;

                        foreach ($color as $item) {
                            $temp++;
                            ?>
                            <tr>
                                <td>
                                    <?php echo $temp; ?>
                                </td>
                                <td>
                                    <?php echo $item['name_color'] ?>
                                </td>
                                <td><a href="?mod=different&act=update_color<?php
                                if (isset($_GET['user_id'])) {
                                    echo "&user_id=" . $_GET['user_id'];
                                }

                                ?>&id_color=<?php echo $item['id_color'] ?>">Sửa</a> | <a href="?mod=different&act=delete_color<?php
                                   if (isset($_GET['user_id'])) {
                                       echo "&user_id=" . $_GET['user_id'];
                                   }

                                   ?>&id_color=<?php echo $item['id_color'] ?>">Xóa</a>
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