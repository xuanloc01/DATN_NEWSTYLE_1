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
<script>
	$('#tabs-nav li:first-child').addClass('active');
	$('.tab-content').hide();
	$('.tab-content:first').show();

	// Click function
	$('#tabs-nav li').click(function () {
		$('#tabs-nav li').removeClass('active');
		$(this).addClass('active');
		$('.tab-content').hide();

		var activeTab = $(this).find('a').attr('href');
		$(activeTab).fadeIn();
		return false;
	});
</script>
<script>
	$(document).ready(function () {

		var back = $(".prev");
		var next = $(".next");
		var steps = $(".step");

		next.bind("click", function () {
			$.each(steps, function (i) {
				if (!$(steps[i]).hasClass('current') && !$(steps[i]).hasClass('done')) {
					$(steps[i]).addClass('current');
					$(steps[i - 1]).removeClass('current').addClass('done');
					return false;
				}
			})
		});
		back.bind("click", function () {
			$.each(steps, function (i) {
				if ($(steps[i]).hasClass('done') && $(steps[i + 1]).hasClass('current')) {
					$(steps[i + 1]).removeClass('current');
					$(steps[i]).removeClass('done').addClass('current');
					return false;
				}
			})
		});

	})
	
</script>

</div>
</body>

</html>