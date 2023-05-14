<div id="footer">
<div class="container">
		<div style="background-color: aquamarine;" class="row text-lignt mt-5">
			<div class="col-md-12 mt-5">
				<p style="text-align:center">Công ty cổ phần NEWSTYLE. GPDKKD: 0303217354 do sở KH & ĐT TP.HN cấp ngày
					02/01/2023. 
					<br>
					GPMXH: 238/GP-BTTTT do Bộ Thông Tin và Truyền Thông cấp ngày 04/06/2020.
					Địa chỉ: Nguyên Xá, P. Minh Khai, TP.Hà Nội. 
					<br>
					Điện thoại: 028 38125960. 
					Email:cskh@newstyle.com. Chịu trách nhiệm nội dung: Nguyễn Xuân Lộc. </p>
			</div>

		</div>
	</div>
</div>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
<script>
	

	CKEDITOR.replace('title_news');
	CKEDITOR.replace('desc_news');
	CKEDITOR.replace('name_news');
	CKEDITOR.replace('pro_technical');
	CKEDITOR.replace('pro_inf_detail');
	

</script>
<script>
	$(Document).ready(function () {

		$('.select-date').change(function () {
			var time = $(this).val();
			if (time == "7day") {
				var text = "7 ngày qua"
			}
			else {
				if (time == "28day") {
					var text = "28 ngày qua"
				}
				else {
					if (time == "90day") {
						var text = "90 ngày qua"
					}
					else {
						if (time == "365day") {
							var text = "365 ngày qua"
						}
						else {
							if (time == "day") {
								var text = "hôm nay"
							}
						}
					}
				}
			}
			$.ajax({
				url: 'thongke.php',
				method: 'POST',
				dataType: 'JSON',
				data: { time: time },
				success: function (data) {
					char.setData(data);
					$('#text-date').text(text);
				},
				error: function (xhr, ajaxOptions, thrownError) {
					alert(xhr.status);
					alert(thrownError);
				}

			});

		});
		thongke();
		var char = new Morris.Area({
			// ID of the element in which to draw the chart.
			element: 'myfirstchart',
			xkey: 'date',
			// A list of names of data record attributes that contain y-values.
			ykeys: ['date', 'order', 'sales', 'quantity'],
			// Labels for the ykeys -- will be displayed when you hover over the
			// chart.
			labels: ['Năm', 'Đơn hàng', 'Doanh thu', 'Số lượng đã bán']
		});
		function thongke() {
			var text = '365 ngày';
			$.ajax({
				url: 'thongke.php',
				method: 'POST',
				dataType: 'JSON',
				success: function (data) {
					char.setData(data);
					$('#text-date').text(text);
				}

			});
		}
	})




</script>

</div>
</body>

</html>