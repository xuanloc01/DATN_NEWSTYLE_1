<?php
$product = array();
$sql = "select *from `tbl_product`,`tbl_category`,`tbl_company` where `tbl_product`.id_cat=`tbl_category`.id_cat AND `tbl_product`.id_com=`tbl_company`.id_com
";
$result = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_assoc($result)) {
    $product[] = $row;
}


?>


<?php
require('inc/header.php')

    ?>
<style>

</style>
<div id="main">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <a href="?mod=product&act=add<?php
                if (isset($_GET['user_id'])) {
                    echo "&user_id=" . $_GET['user_id'];
                }

                ?>" class="btn btn-primary">Thêm sản phẩm</a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th class="text-center">STT</th>
                            <th class="text-center">Danh mục</th>
                            <th class="text-center">NSX</th>
                            <th class="text-center">Mã</th>
                            <th>Tên</th>
                            <th class="text-center">Hình ảnh</th>
                            <th class="text-center">Sale(%)</th>
                            <th class="text-center">Kho</th>
                            <th class="text-center">Chức năng</th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php
                        $temp = 0;
                        foreach ($product as $item) {
                            $temp++;
                            ?>
                            <tr>
                                <td class="text-center">
                                    <?php echo $temp; ?>
                                </td>
                                <td class="text-center">
                                    <?php echo $item['category_name']; ?>
                                </td>
                                <td class="text-center">
                                    <?php echo $item['company_name']; ?>
                                </td>

                                <td class="text-center">
                                    <?php echo $item['pro_code'] ?>
                                </td>
                                <td style="max-width: 100px;">
                                    <?php echo $item['pro_name'] ?>
                                </td>
                                <td class="text-center"><img width="100px" height="100px"
                                        src="../upload/product/<?php echo $item['pro_img'] ?>" alt=""></td>
                               
                                <td class="text-center">
                                    <?php echo $item['pro_sale'] ?>
                                </td>
                             
                                <td class="text-center">
                                    <?php echo $item['pro_warehouse'] ?>
                                </td>
                                <td class="text-center"><a href="?mod=product&act=update<?php
                                if (isset($_GET['user_id'])) {
                                    echo "&user_id=" . $_GET['user_id'];
                                }

                                ?>&id_pro=<?php echo $item['id_pro'] ?>">Sửa</a> | <a href="?mod=product&act=delete<?php
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
            </div>
        </div>
    </div>
</div>
<?php
require('inc/footer.php')

    ?>