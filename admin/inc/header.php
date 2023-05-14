<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,800;1,400;1,600;1,800&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="public/plugin/fontawesome/css/all.css">
    <link rel="stylesheet" href="public/css/reset.css">
    <link rel="stylesheet" href="public/css/style.css">
    <script src="public/js/jquery.min.js" type="text/javascript"></script>

    <link href="public/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="public/js/bootstrap.bundle.min.js"></script>
    <script src="public/js/popper.min.js"></script>
    <script src="public/js/bootstrap.min.js"></script>
    <script src="public/js/jquery-3.6.3.min.js"></script>

    <script src="https://cdn.ckeditor.com/4.21.0/standard/ckeditor.js"></script>
    
    
    <title>NEWSTYLE</title>
</head>

<body>
    <div id="wrapper">
        <div id="header">
            <div class="container">
                <div class="row  bg-yellow">
                    <div class="col-md-12 logo text-center">NEWSTYLE</div>

                </div>
                <div class="row  bg-yellow">
                    <div class="col-md-12 text-center"><a href="../log_out.php">Đăng xuất</a></div>

                </div>
                <div class="row bg-yellow-1">
                    <div class="col-md-12">
                        <div class="main-menu">
                            <ul>
                                <li>
                                    <a href="?mod=home&act=main&<?php
                                    if (isset($_GET['user_id'])) {
                                        echo "user_id=" . $_GET['user_id'];
                                    }

                                    ?>">Trang chủ</a>
                                </li>
                                <li>
                                    <a href="?mod=category&act=main<?php
                                    if (isset($_GET['user_id'])) {
                                        echo "&user_id=" . $_GET['user_id'];
                                    }

                                    ?>">Danh mục</a>

                                </li>
                                <li>
                                    <a href="?mod=company&act=main<?php
                                    if (isset($_GET['user_id'])) {
                                        echo "&user_id=" . $_GET['user_id'];
                                    }

                                    ?>">Nhà sản suất</a>

                                </li>
                                <li>
                                    <a href="?mod=product&act=main<?php
                                    if (isset($_GET['user_id'])) {
                                        echo "&user_id=" . $_GET['user_id'];
                                    }

                                    ?>">Sản phẩm</a>
                                </li>
                               
                                <li><a href="?mod=acount&act=main<?php
                                if (isset($_GET['user_id'])) {
                                    echo "&user_id=" . $_GET['user_id'];
                                }

                                ?>">Tài khoản</a></li>
                                <li><a href="?mod=different&act=main<?php
                                if (isset($_GET['user_id'])) {
                                    echo "&user_id=" . $_GET['user_id'];
                                }

                                ?>">Khác</a></li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>