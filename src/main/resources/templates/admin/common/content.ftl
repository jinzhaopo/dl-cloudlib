<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8" />
		<title>云图书馆决策支持系统</title>
		<script type="text/javascript" src="${base}/default/js/jquery-1.8.3.js"></script>
		<style type="text/css">
			body,
			ul,
			li {
				padding: 0;
				margin: 0;
			}
			
			a {
				color: rgb(1, 124, 185);
				text-decoration: none;
			}
			
			body {
				font-size: 16px;
				color: #5a5d63;
				background: #d6d7d9;
				background: -webkit-radial-gradient(#eeefef, #d6d7d9);
				background: -moz-radial-gradient(#eeefef, #d6d7d9);
				background: -o-radial-gradient(#eeefef, #d6d7d9);
				background: -ms-radial-gradient(#eeefef, #d6d7d9);
				background: radial-gradient(#eeefef, #d6d7d9);
				padding: 50px;
			}
			
			.box {
				width: 540px;
				height: 200px;
				margin: 50px auto;
			}
			
			.box li {
				position: relative;
				text-align: center;
				list-style-type: none;
				display: inline-block;
				width: 150px;
				height: 160px;
				text-shadow: 0 2px 1px #f4f4f4;
				border: 1px solid #9fa2ad;
				border-radius: 5px;
				margin-right: 10px;
				background: -webkit-gradient(linear, 0 0, 0 100%, color-stop(.2, rgba(248, 248, 248, .3)), color-stop(.5, rgba(168, 173, 190, .5)), color-stop(.51, rgba(168, 173, 190, .3)), color-stop(.9, rgba(248, 248, 248, .2)));
				background: -webkit-linear-gradient(top, rgba(248, 248, 248, .3) 20%, rgba(168, 173, 190, .5) 50%, rgba(168, 173, 190, .3) 51%, rgba(248, 248, 248, .2) 90%);
				background: -moz-linear-gradient(top, rgba(248, 248, 248, .3) 20%, rgba(168, 173, 190, .5) 50%, rgba(168, 173, 190, .3) 51%, rgba(248, 248, 248, .2) 90%);
				background: -o-linear-gradient(top, rgba(248, 248, 248, .3) 20%, rgba(168, 173, 190, .5) 50%, rgba(168, 173, 190, .3) 51%, rgba(248, 248, 248, .2) 90%);
				background: -ms-linear-gradient(top, rgba(248, 248, 248, .3) 20%, rgba(168, 173, 190, .5) 50%, rgba(168, 173, 190, .3) 51%, rgba(248, 248, 248, .2) 90%);
				background: linear-gradient(top, rgba(248, 248, 248, .3) 20%, rgba(168, 173, 190, .5) 50%, rgba(168, 173, 190, .3) 51%, rgba(248, 248, 248, .2) 90%);
				box-shadow: inset 0 -2px 0 #f1f1f1, 0 1px 0 #f1f1f1, 0 2px 0 #9fa2ad, 0 3px 0 #f1f1f1, 0 4px 0 #9fa2ad;
			}
			
			.box li:before,
			.box li:after {
				display: block;
				content: "";
				position: absolute;
				width: 150px;
			}
			
			.box li:before {
				top: 50%;
				height: 1px;
				box-shadow: 0 1px 0 #868995, 0 2px 1px #fff;
			}
			
			.box li:after {
				bottom: -65px;
				height: 60px;
				border-radius: 0 0 5px 5px;
				background: -webkit-gradient(linear, 0 0, 0 100%, from(rgba(0, 0, 0, .1)), to(rgba(0, 0, 0, 0)));
				background: -webkit-linear-gradient(top, rgba(0, 0, 0, .1), rgba(0, 0, 0, 0));
				background: -moz-linear-gradient(top, rgba(0, 0, 0, .1), rgba(0, 0, 0, 0));
				background: -o-linear-gradient(top, rgba(0, 0, 0, .1), rgba(0, 0, 0, 0));
				background: -ms-linear-gradient(top, rgba(0, 0, 0, .1), rgba(0, 0, 0, 0));
				background: linear-gradient(top, rgba(0, 0, 0, .1), rgba(0, 0, 0, 0));
				z-index: 1
			}
			
			.box li span:first-child {
				font: 120px 'BitstreamVeraSansMonoBold';
				color: #52555a;
				display: block;
				height: 130px;
				line-height: 150px;
			}
		</style>
	</head>

	<body>

		<div class="box">
			<ul>
				<li><span id="hour"></span><span>时</span></li>
				<li><span id="minute"></span><span>分</span></li>
				<li><span id="second"></span><span>秒</span></li>
			</ul>
		</div>

		<script type="text/javascript">
			var hour = document.getElementById('hour');
			var minute = document.getElementById('minute');
			var second = document.getElementById('second');

			function showTime() {
				var oDate = new Date();
				var iHours = oDate.getHours();
				var iMinute = oDate.getMinutes();
				var iSecond = oDate.getSeconds();
				hour.innerHTML = AddZero(iHours);
				minute.innerHTML = AddZero(iMinute);
				second.innerHTML = AddZero(iSecond);
			}
			showTime();
			setInterval(showTime, 1000);

			function AddZero(n) {
				if(n < 10) {
					return '0' + n;
				}
				return '' + n;
			}
		</script>

	</body>

</html>