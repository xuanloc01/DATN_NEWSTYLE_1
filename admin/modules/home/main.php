<?php
require('inc/header.php');

?>
<div id="main">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h3>Thống kê theo : <span id="text-date"></span></h3>
			</div>
			<div class="col-md-12">
				<select class="select-date" id="">
					<option value="day">hôm nay</option>
					<option value="7day">7 ngày</option>
					<option value="28day">28 ngày</option>
					<option value="90day">90 ngày</option>
					<option value="365day" selected="selected">365 ngày</option>
				</select>
			</div>
		</div>
		<div id="myfirstchart" style="height: 250px;"></div>
	</div>

</div>
<?php
require('inc/footer.php');

?>