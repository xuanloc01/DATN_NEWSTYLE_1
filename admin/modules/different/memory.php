<?php
$memory = array();
$sql = "select *from `memory`";
$result = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_assoc($result)) {
    $memory[] = $row;
}


?>


<?php
require('inc/header.php')

    ?>
<div id="main">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <a href="?mod=different&act=add_memory<?php
                    if (isset($_GET['user_id'])) {
                        echo "&user_id=" . $_GET['user_id'];
                    }

                    ?>" class="btn btn-primary">Thêm bộ nhớ</a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>STT</td>
                            <th>Tên</td>
                            <th>Chức năng</td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $temp = 0;

                        foreach ($memory as $item) {
                            $temp++;
                            ?>
                            <tr>
                                <td>
                                    <?php echo $temp; ?>
                                </td>
                                <td>
                                    <?php echo $item['name_memory'] ?>
                                </td>
                                <td><a href="?mod=different&act=update_memory<?php
                                if (isset($_GET['user_id'])) {
                                    echo "&user_id=" . $_GET['user_id'];
                                }

                                ?>&id_memory=<?php echo $item['id_memory'] ?>">Sửa</a> | <a href="?mod=different&act=delete_memory<?php
                                   if (isset($_GET['user_id'])) {
                                       echo "&user_id=" . $_GET['user_id'];
                                   }

                                   ?>&id_memory=<?php echo $item['id_memory'] ?>">Xóa</a>
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