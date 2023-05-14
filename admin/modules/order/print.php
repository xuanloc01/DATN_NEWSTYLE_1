<?php
require('PDF/tfpdf.php');

$pdf = new tFPDF();
$pdf->AddPage("0");
$pdf->AddFont('DejaVu', '', 'DejaVuSansCondensed.ttf', true);
$pdf->SetFont('DejaVu', '', 8);

$user_id = $_GET['user_id'];
$id_order = $_GET['id_order'];
$sql = "select *from `tbl_order` where `id_order`={$id_order} ";
$result = mysqli_query($conn, $sql);
$order = mysqli_fetch_array($result);

$sql = "select *from `tbl_order_detail`,`tbl_product` where `tbl_order_detail`.`id_pro`=`tbl_product`.`id_pro`  and `code_order`={$order['code_order']}";
$print = mysqli_query($conn, $sql);


$pdf->Write(10, 'THÔNG TIN ĐƠN HÀNG:', 'C');
$pdf->Ln(10);

$pdf->Write(10, 'Mã đơn hàng : ' . $order['code_order']);
$pdf->Ln(10);
$pdf->Write(10, 'Tên người nhận : ' . $order['fullname']);
$pdf->Ln(10);
$pdf->Write(10, 'Địa chỉ : ' . $order['address_order']);
$pdf->Ln(10);
$pdf->Write(10, 'SĐT : ' . $order['phone_order']);
$pdf->Ln(10);
$pdf->Write(10, 'Ghi chú : ' . $order['note']);
$pdf->Ln(10);

$pdf->Write(10, 'Đơn hàng của bạn gồm có:');
$pdf->Ln(10);

$width_cell = array(10, 160, 10, 50, 50);

$pdf->Cell($width_cell[0], 10, 'STT', 1, 0, 'C', false);
$pdf->Cell($width_cell[1], 10, 'Tên sản phẩm', 1, 0, 'C', false);
$pdf->Cell($width_cell[2], 10, 'SL', 1, 0, 'C', false);
$pdf->Cell($width_cell[3], 10, 'Giá', 1, 0, 'C', false);
$pdf->Cell($width_cell[4], 10, 'Tổng tiền', 1, 1, 'C', false);
$pdf->SetFillColor(230, 230, 0);
$fill = false;
$i=0;
$sum = 0;
while ($row = mysqli_fetch_array($print)) {
    $i++;
    $pdf->Cell($width_cell[0], 10, $i, 1, 0, 'C', $fill);
    $pdf->Cell($width_cell[1], 10, $row['pro_name'], 1, 0, 'L', $fill);
    $pdf->Cell($width_cell[2], 10, $row['quantity_buy'], 1, 0, 'C', $fill);
    $pdf->Cell($width_cell[3], 10, format_number((int)$row['price_buy']), 1, 0, 'C', $fill);
    $pdf->Cell($width_cell[4], 10, format_number((int)$row['price_buy'] * (int)$row['quantity_buy']), 1, 1, 'C', $fill);
    $sum=$sum+(int)$row['price_buy'] * (int)$row['quantity_buy'];
    $fill = !$fill;

}
if($order['payment']==3)
{
    $sum=0;
}
$pdf->Ln(10);
$pdf->Write(10, 'Số tiền cần thanh toán :  ' . format_number((int)$sum));
$pdf->Ln(10);
$pdf->Write(10, 'Cảm ơn bạn đã đặt hàng tại website của chúng tôi.');
$pdf->Ln(10);

$pdf->Output();




?>