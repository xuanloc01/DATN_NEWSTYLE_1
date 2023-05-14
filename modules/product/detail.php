<?php
if (isset($_GET['user_id'])) {
    $user_id = $_GET['user_id'];
}
$id_cat = (int) $_GET['id_cat'];
$id_com = (int) $_GET['id_com'];
$id_pro = (int) $_GET['id_pro'];
$id_color = $_GET['id_color'];
$name_memory = $_GET['name_memory'];
$sql = "select *from `tbl_category` where `id_cat`={$id_cat}";
$result = mysqli_query($conn, $sql);
$cat = mysqli_fetch_assoc($result);

// $category = array();
// $sql = "select *from `tbl_category`";
// $result = mysqli_query($conn, $sql);
// while ($row = mysqli_fetch_assoc($result)) {
//     $category[] = $row;
// }

$sql = "select *from `tbl_company` where `id_com`={$id_com}";
$result = mysqli_query($conn, $sql);
$com_name = mysqli_fetch_assoc($result);

// $com = array();
// $sql = "select *from `tbl_category`,`tbl_company` where  `tbl_category`.`id_cat`=`tbl_company`.`id_cat` ";
// $result = mysqli_query($conn, $sql);
// while ($row = mysqli_fetch_assoc($result)) {
//     $com[] = $row;
// }
// $com_new = array();
// foreach ($com as $item) {
//     if ($item['id_cat'] == $id_cat) {
//         $com_new[] = $item;
//     }
// }

$sql = "select *from `tbl_product` where `id_pro`={$id_pro}";
$result = mysqli_query($conn, $sql);
$pro = mysqli_fetch_assoc($result);

if (isset($_POST['comm'])) {
    if (isset($_GET['user_id'])) {
        $desc = $_POST['comm_desc'];
        $sql = "Insert into `tbl_comment` (`user_id`,`id_pro`,`desc`,`time_at`) values ({$user_id},{$id_pro},'{$desc}','{$now}')";
        if (mysqli_query($conn, $sql)) {
            header("Location:?mod=product&act=detail&user_id=$user_id&id_color=$id_color&name_memory=$name_memory&id_pro=$id_pro&id_cat=$id_cat&id_com=$id_com");
        }
    } else {
        header("Location:login.php");
    }

}
// if (isset($_POST['check_color'])) {
//     $id_color = $_POST['color'];
//     if ($_POST['color'] != "chonmau") {
//         $sql = "select *from `tbl_pro_class` where `id_color`={$id_color} and `id_pro`={$id_pro}";
//         $x = mysqli_query($conn, $sql);
//         $pr = mysqli_fetch_assoc($x);
//     }
// }
if (isset($_GET['page'])) {
    $num_page = $_GET['page'];
    $start = $num_page * 5 - 5;
} else {
    $num_page = 1;
    $start = 0;
}


?>





<div id="main">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">
                    Chi tiết sản phẩm
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h5>
                    <a href="?mod=product<?php
                    if (isset($_GET['user_id'])) {
                        echo "&user_id=" . $_GET['user_id'];
                    }

                    ?>&act=product_cat&id_cat=<?php echo $id_cat ?>"><?php echo $cat['category_name'] ?></a>
                    =><a href="?mod=product&act=product_cat_com<?php
                    if (isset($_GET['user_id'])) {
                        echo "&user_id=" . $_GET['user_id'];
                    }

                    ?>&id_cat=<?php echo $id_cat ?>&id_com=<?php echo $id_com ?>">
                        <?php echo $com_name['company_name'] ?>
                    </a>

                </h5>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div style="width:350px; height:350px;">
                    <img id="img-big" width="auto" height="100%" src="upload/product/<?php echo $pro['pro_img'] ?>"
                        alt="">
                </div>

            </div>
            <div class="col-md-4">
                <h2>
                    <?php echo $pro['pro_name'] ?>
                </h2>
                <p>Mã :
                    <?php echo $pro['pro_code'] ?>
                </p>
                <?php
                $sql = "select * from `tbl_pro_class` where `id_pro`={$id_pro} and `id_color`={$id_color} and `name_memory`='{$name_memory}'";
                $result = mysqli_query($conn, $sql);
                $inf = mysqli_fetch_assoc($result);

                ?>
                <p>Kho :
                    <?php echo $inf['quantity'] ?>



                </p>
                <p>Giá gốc : <strike>
                        <?php echo format_number($inf['price']) ?>
                    </strike>


                </p>
                <p>Giảm giá : -
                    <?php echo $pro['pro_sale'] ?>%
                </p>
                <p>Giá hiện tại :
                    <?php
                    $s = $inf['price'] - ($inf['price'] * $pro['pro_sale'] / 100);
                    echo format_number($s);
                    ?>

                </p>
                <p>Mô tả :
                    <?php echo $pro['pro_desc'] ?>
                </p>
            </div>

            <?php
            $pr = array();
            $sql = "select * from `tbl_pro_class`,`color` where `tbl_pro_class`.`id_color`=`color`.`id_color` and  `id_pro`={$id_pro}";
            $result = mysqli_query($conn, $sql);
            while ($row = mysqli_fetch_assoc($result)) {
                $pr[] = $row;
            }
            ?>
            <div class="col-md-4">
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label ">MÀU SẮC</label>
                </div>
                <?php
                $list_color = array();
                $sql = "SELECT DISTINCT `id_color` FROM  `tbl_pro_class` where `id_pro`={$id_pro}";
                $result = mysqli_query($conn, $sql);
                while ($row = mysqli_fetch_assoc($result)) {
                    $list_color[] = $row;
                }
                ?>
                <?php
                foreach ($list_color as $item) {
                    $sql = "select * from `color` where `id_color`={$item['id_color']}";
                    $result = mysqli_query($conn, $sql);
                    $color = mysqli_fetch_assoc($result);
                    ?>
                    <a class="btn btn-success" <?php if ($id_color == $item['id_color']) {
                        echo "style='border: 1px solid black;'";
                    } ?>
                        href="?mod=product&act=detail<?php
                        if (isset($_GET['user_id'])) {
                            echo "&user_id=" . $_GET['user_id'];
                        }

                        ?>&id_pro=<?php echo $id_pro ?>&id_cat=<?php echo $id_cat ?>&id_com=<?php echo $id_com ?>&id_color=<?php echo $color['id_color'] ?>&name_memory=<?php echo $name_memory ?>"><?php echo $color['name_color'] ?></a>

                    <?php
                }

                ?>

                <?php
                if (!empty($name_memory)) {
                    ?>
                    <?php

                    $memory = array();
                    $sql = "select * from `tbl_pro_class` where `id_color`={$id_color} and `id_pro`={$id_pro}";
                    $result = mysqli_query($conn, $sql);
                    while ($row = mysqli_fetch_assoc($result)) {
                        $memory[] = $row;
                    }

                    ?>
                    <div class="mb-3 mt-4">
                        <label for="formGroupExampleInput" class="form-label ">BỘ NHỚ</label>
                    </div>
                    <?php
                    foreach ($memory as $item) {
                        ?>
                        <a class="btn btn-success" <?php if ($name_memory == $item['name_memory']) {
                            echo "style='border: 1px solid black;'";
                        } ?> href="?mod=product&act=detail<?php
                          if (isset($_GET['user_id'])) {
                              echo "&user_id=" . $_GET['user_id'];
                          }

                          ?>&id_pro=<?php echo $id_pro ?>&id_cat=<?php echo $id_cat ?>&id_com=<?php echo $id_com ?>&id_color=<?php echo $id_color ?>&name_memory=<?php echo $item['name_memory'] ?>">
                            <?php echo $item['name_memory'] ?>
                        </a>

                        <?php
                    }

                    ?>
                    <?php
                }

                ?>


                <div class="col-md-4">

                    <a class="btn btn-outline-danger p-2 mb-2 mt-4" href="<?php
                    if (isset($_GET['user_id'])) {
                        echo "?mod=cart&act=add&user_id=" . $user_id . "&id_pro=" . $id_pro . "&id_color=" . $id_color . "&name_memory=" . $name_memory;
                    } else {
                        echo "login.php";
                    }

                    ?>">Thêm vào giỏ</a>

                </div>
            </div>

            <div class="row">
                <div id="img" style="width:150px; height:150px" class="col-md-12 d-flex mt-4">
                    <?php
                    $img_pro = array();
                    $sql = "select * from `img_pro` where `id_pro`={$id_pro}";
                    $result = mysqli_query($conn, $sql);
                    while ($row = mysqli_fetch_assoc($result)) {
                        $img_pro[] = $row;
                    }
                    foreach ($img_pro as $item) {
                        ?>
                        <img width="auto" height="100%" src="upload/product/<?php echo $item['name_img'] ?>" alt="">
                        <?php
                    }
                    ?>
                </div>
            </div>








            <script>
                $(() => {
                    $('#img img').click(function () {
                        let img_path = $(this).attr('src');
                        $('#img-big').attr('src', img_path);
                    })
                })
            </script>

            <div class="row">
                <div class="col-md-12 mt-4">
                    <div class="tabs">
                        <ul id="tabs-nav">
                            <li><a href="#tab1">Thông số kĩ thuật</a></li>
                            <li><a href="#tab2">Thông tin chi tiết</a></li>


                        </ul> <!-- END tabs-nav -->
                        <div id="tabs-content">
                            <div id="tab1" class="tab-content">
                                <?php echo $pro['pro_technical'] ?>
                            </div>
                            <div id="tab2" class="tab-content">
                                <?php echo $pro['info_detail'] ?>
                            </div>

                        </div> <!-- END tabs-content -->
                    </div> <!-- END tabs -->
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 d-flex mt-4">
                    <h5>Bình luận sản phẩm</h5>
                </div>
            </div>
            <div class="row">
                <form action="" method="POST">
                    <div class="mb-3">
                        <textarea class="form-control" name="comm_desc" id="exampleFormControlTextarea1" rows="3"
                            placeholder="Nhập phản hồi của bạn ở đây."></textarea>
                        <input type="submit" name="comm" class="btn btn-primary" value="Gửi">
                    </div>
                </form>

            </div>
            <div class="row">

                <?php
                $sql = "select * from `tbl_comment`,`tbl_user` where `tbl_comment`.`user_id`=`tbl_user`.user_id and `id_pro`={$id_pro} order by `time_at` DESC limit $start,5";
                $result = mysqli_query($conn, $sql);
                while ($row = mysqli_fetch_assoc($result)) {
                    $comm[] = $row;
                }
                if (!empty($comm)) {
                    foreach ($comm as $item) {
                        ?>
                        <div class="col-md-12 d-flex mt-4">
                            <div>
                                <strong>
                                    <?php echo $item['username'] ?>
                                </strong>
                                <p>
                                    <?php echo $item['time_at'] ?>
                                </p>
                                <p>
                                    <?php echo $item['desc'] ?>
                                </p>
                            </div>
                        </div>
                        <?php
                    }
                } else {
                    ?>
                    <p>Sản phẩm này chưa có bình luận nào.</p>

                    <?php
                }
                ?>

            </div>
            <style>
                .page {
                    list-style: none;
                    display: inline-flex;
                }

                .page li {
                    background: gray;
                    margin: 5px;
                }

                .page li a {
                    display: block;
                    padding: 10px;
                    color: white;
                    text-decoration: none;
                }
            </style>
            <div class="row">
                <div class="col-md-12 text-center">
                    <?php
                    $sql = "select * from `tbl_comment`,`tbl_user` where `tbl_comment`.`user_id`=`tbl_user`.user_id and `id_pro`={$id_pro}";
                    $result = mysqli_query($conn, $sql);
                    $sum_pro = mysqli_num_rows($result);
                    $sum_page = ceil($sum_pro / 5);

                    ?>
                    <ul class="page" style="list-style:none;">
                        <?php
                        for ($i = 1; $i < $sum_page; $i++) {
                            ?>
                            <li><a <?php if ($num_page == $i) {
                                echo "style='background-color: red;' ";
                            } ?> href="?mod=product<?php
                              if (isset($_GET['user_id'])) {
                                  echo "&user_id=" . $_GET['user_id'];
                              }

                              ?>&act=detail&page=<?php echo $i ?>">
                                    <?php echo $i ?>
                                </a></li>
                            <?php
                        }
                        ?>


                    </ul>
                </div>
            </div>

        </div>
    </div>