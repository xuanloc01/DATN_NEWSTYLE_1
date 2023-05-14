<?php
if (isset($_GET['user_id'])) {
    $user_id = $_GET['user_id'];
    $id_memory = (int) $_GET['id_memory'];
    $sql_del = "delete from `memory` where `id_memory`={$id_memory}";
    if (mysqli_query($conn, $sql_del)) {
        header("location:?mod=different&act=memory&user_id=$user_id");
    }


} else {
    header("Location:login.php");
}





?>