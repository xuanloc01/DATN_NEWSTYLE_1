<?php
if (isset($_GET['user_id'])) {
    $user_id = $_GET['user_id'];
}
if (isset($_POST['btn-contact'])) {
    $email = $_POST['email'];
    $desc = $_POST['desc'];
    $sql = "insert into `tbl_contact` (`email`,`desc`,`time_at`) values ('{$email}','{$desc}','{$now}')";
    if (mysqli_query($conn, $sql)) {
        header("Location:?mod=contact&act=main&user_id=$user_id");
    }
}

?>

<div id="main">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center mt-4 mb-4">
                <h2>Gửi ý kiến khách hàng</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <form action="" method="post">
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Email:</label>
                        <input type="email" class="form-control" name="email" id="exampleFormControlInput1"
                            placeholder="Nhập email của người gửi .">
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormControlTextarea1" class="form-label">Nội dung</label>
                        <textarea class="form-control" name="desc" id="exampleFormControlTextarea1" rows="5"></textarea>
                    </div>
                    <input type="submit" class="btn btn-primary" value="Gửi" name="btn-contact">
                </form>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
</div>