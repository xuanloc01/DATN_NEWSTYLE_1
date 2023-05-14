<?php
$company = array();
$sql = "select *from `tbl_company`,`tbl_category` where `tbl_category`.id_cat=`tbl_company`.id_cat";
$result = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_array($result)) {
    $company[] = $row;
}

?>


<?php
require('inc/header.php')

    ?>
<div id="main">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <a href="?mod=company&act=add<?php
                    if (isset($_GET['user_id'])) {
                        echo "&user_id=" . $_GET['user_id'];
                    }

                    ?>" class="btn btn-primary">Thêm NSX</a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>STT</td>
                            <th>Tên NSX</td>
                            <th>Địa chỉ</td>
                            <th>Danh mục</td>
                            <th>Chức năng</td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $temp = 0;

                        foreach ($company as $item) {
                            $temp++;
                            ?>
                            <tr>
                                <td><?php echo $temp;  ?></td>
                                <td><?php echo $item['company_name']  ?></td>
                                <td><?php echo $item['company_address']  ?></td>
                                <td><?php echo $item['category_name']  ?></td>
                                <td><a href="?mod=company&act=update<?php
                    if (isset($_GET['user_id'])) {
                        echo "&user_id=" . $_GET['user_id'];
                    }

                    ?>&id_com=<?php echo $item['id_com'] ?>">Sửa</a> | <a href="?mod=company&act=delete<?php
                    if (isset($_GET['user_id'])) {
                        echo "&user_id=" . $_GET['user_id'];
                    }

                    ?>&id_com=<?php echo $item['id_com'] ?>">Xóa</a>
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