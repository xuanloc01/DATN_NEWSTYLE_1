<?php

$user_id=$_GET['user_id'];
?>
<?php
require('inc/header.php')
    ?>
<div id="main">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul style="list-style: none;"> 
                    <li><a class="btn btn-success mb-4 mt-4" href="?mod=order&act=order_wait&user_id=<?php  echo $user_id ?>">Đơn hàng chờ xác nhận</a></li>
                    <li><a class="btn btn-success mb-4" href="?mod=order&act=order_uncheck&user_id=<?php  echo $user_id ?>">Đơn hàng chờ duyệt</a></li>
                    <li><a class="btn btn-success" href="?mod=order&act=order_checked&user_id=<?php  echo $user_id ?>">Đơn hàng đã duyệt</a></li>
                    
                </ul>
            </div>
        </div>
    </div>
</div>
<?php
require('inc/footer.php')

    ?>