<?php
$contact = array();
$sql = "select *from `tbl_contact`
";
$result = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_assoc($result)) {
    $contact[] = $row;
}


?>


<?php
require('inc/header.php')

    ?>
<style>

</style>
<div id="main">
    <div class="container">
        <h2>Danh sách phản hồi khách hàng</h2>
        <div class="row">
            <div class="col-md-12">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th class="text-center">STT</th>
                            <th class="text-center">Email</th>
                            <th class="text-center">Nội dung</th>
                            <th class="text-center">Chức năng</th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php
                        $temp = 0;
                        foreach ($contact as $item) {
                            $temp++;
                            ?>
                            <tr>
                                <td class="text-center">
                                    <?php echo $temp; ?>
                                </td>
                                <td class="" style="width:150px;">
                                    <?php echo $item['email']; ?>
                                </td>
                                
                                <td class="text-center">
                                    <?php echo $item['desc']; ?>
                                </td>
                                <td class="text-center"> <a href="?mod=contact&act=delete<?php
                                if (isset($_GET['user_id'])) {
                                    echo "&user_id=" . $_GET['user_id'];
                                }

                                ?>&id_ct=<?php echo $item['id_contact'] ?>">Xóa</a></td>
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