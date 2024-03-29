<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<title>Hello MUI</title>
		<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<!--标准mui.css-->
		<link rel="stylesheet" href="/static/mui/css/mui.min.css">
		<!--App自定义的css-->
		<link rel="stylesheet" type="text/css" href="/static/mui/css/app.css"/>
		<style>
			h5 {
				margin: 10px;
			}
			.mui-badge {
				margin: 10px;
			}
		</style>
	</head>

	<body>
		<header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
			<h1 class="mui-title">badge（数字角标）</h1>
		</header>
		<div class="mui-content">
			<div class="mui-content-padded">
				<h5>有底色</h5>
				<span class="mui-badge">1</span>
				<span class="mui-badge mui-badge-primary">12</span>
				<span class="mui-badge mui-badge-success">123</span>
				<span class="mui-badge mui-badge-warning">3</span>
				<span class="mui-badge mui-badge-danger">45</span>
				<span class="mui-badge mui-badge-purple">456</span>
				<h5>无底色（使用父元素背景色）</h5>
				<span class="mui-badge mui-badge-inverted">1</span>
				<span class="mui-badge mui-badge-primary mui-badge-inverted">2</span>
				<span class="mui-badge mui-badge-success mui-badge-inverted">3</span>
				<span class="mui-badge mui-badge-warning mui-badge-inverted">4</span>
				<span class="mui-badge mui-badge-danger mui-badge-inverted">5</span>
				<span class="mui-badge mui-badge-royal mui-badge-inverted">6</span>
			</div>
		</div>
	</body>
	<script src="/static/mui/js/mui.min.js"></script>
	<script>
		mui.init({
			swipeBack:true //启用右滑关闭功能
		});
	</script>
</html>