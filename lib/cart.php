<?php

function add_cart($user_id,$id_pro,$id_color,$name_memory)
{
    $conn= mysqli_connect('localhost','root','','newstyle');
    $sql = "select * from `tbl_product` where `id_pro`={$id_pro}";
    $result = mysqli_query($conn, $sql);
    $product = mysqli_fetch_assoc($result);
    $qty = 1;

    if (isset($_SESSION['cart']['buy'][$user_id])) {
        if(array_key_exists($id_pro, $_SESSION['cart']['buy'][$user_id]))
        {
            $qty = $_SESSION['cart']['buy'][$user_id][$id_pro]['qty'] + 1;
        }
    

    }
    $sql="select *from `tbl_pro_class` where `id_color`={$id_color} and `name_memory`='{$name_memory}' and `id_pro`={$id_pro}";
    $x=mysqli_query($conn,$sql);
    $pr = mysqli_fetch_assoc($x);
     $sale_price_x = $pr['price'] - ($pr['price'] * $product['pro_sale'] / 100);
     $sale_price=ceil($sale_price_x);
    $_SESSION['cart']['buy'][$user_id][$id_pro] = array(
        'id_pro' => $product['id_pro'],
        'pro_code' => $product['pro_code'],
        'pro_name' => $product['pro_name'],
        'pro_img' => $product['pro_img'],
        'color' => $pr['id_color'],
        'memory' => $pr['name_memory'],
        'pro_price' => $sale_price,
        'pro_warehouse' => $product['pro_warehouse'],
        'qty' => $qty,
        'sub_total' => (int) $sale_price * $qty,
    );
    
    $sum_qty=0;
    $sum_sub_total=0;
    foreach($_SESSION['cart']['buy'][$user_id] as $item)
    {
        $sum_qty=$sum_qty+$item['qty'];
        $sum_sub_total=$sum_sub_total+$item['sub_total'];
    }
    $_SESSION['cart']['info'][$user_id] = array(
        'sum_qty'=>$sum_qty,
        'sum_sub_total'=>$sum_sub_total
    );
}

?>