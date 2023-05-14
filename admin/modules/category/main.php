<?php
$category = array();
$sql = "select *from `tbl_category`";
$result = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_assoc($result)) {
    $category[] = $row;
}


?>


<?php
require('inc/header.php')

    ?>
<div id="main">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <a href="?mod=category&act=add<?php
                    if (isset($_GET['user_id'])) {
                        echo "&user_id=" . $_GET['user_id'];
                    }

                    ?>" class="btn btn-primary">Thêm danh mục</a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>STT</td>
                            <th>Tên danh mục</td>
                            <th>Chức năng</td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $temp = 0;

                        foreach ($category as $item) {
                            $temp++;
                            ?>
                            <tr>
                                <td>
                                    <?php echo $temp; ?>
                                </td>
                                <td>
                                    <?php echo $item['category_name'] ?>
                                </td>
                                <td><a href="?mod=category&act=update<?php
                                if (isset($_GET['user_id'])) {
                                    echo "&user_id=" . $_GET['user_id'];
                                }

                                ?>&id_cat=<?php echo $item['id_cat'] ?>">Sửa</a> | <a href="?mod=category&act=delete<?php
                                   if (isset($_GET['user_id'])) {
                                       echo "&user_id=" . $_GET['user_id'];
                                   }

                                   ?>&id_cat=<?php echo $item['id_cat'] ?>">Xóa</a>
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