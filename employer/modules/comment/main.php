<?php
$comment = array();
$sql = "select *from `tbl_comment`,`tbl_product`,`tbl_user` where `tbl_product`.id_pro=`tbl_comment`.id_pro AND `tbl_comment`.user_id=`tbl_user`.user_id
";
$result = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_assoc($result)) {
    $comment[] = $row;
}


?>


<?php
require('inc/header.php')

    ?>
<style>

</style>
<div id="main">
    <div class="container">
        <h2>Danh sách bình luận sản phẩm</h2>
        <div class="row">
            <div class="col-md-12">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th class="text-center">STT</th>
                            <th class="text-center">Sản phẩm</th>
                            <th class="text-center">Username</th>
                            <th class="text-center">Nội dung</th>
                            <th class="text-center">Chức năng</th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php
                        $temp = 0;
                        foreach ($comment as $item) {
                            $temp++;
                            ?>
                            <tr>
                                <td class="text-center">
                                    <?php echo $temp; ?>
                                </td>
                                <td class="text-center">
                                    <?php echo $item['pro_name']; ?>
                                </td>
                                <td class="text-center">
                                    <?php echo $item['username']; ?>
                                </td>
                                <td class="text-center">
                                    <?php echo $item['desc']; ?>
                                </td>


                                <td class="text-center"> <a href="?mod=comment&act=delete<?php
                                if (isset($_GET['user_id'])) {
                                    echo "&user_id=" . $_GET['user_id'];
                                }

                                ?>&id_cm=<?php echo $item['id_cm'] ?>">Xóa</a></td>
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