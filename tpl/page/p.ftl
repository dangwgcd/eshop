<!doctype html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<title>左栏固定宽度，右栏自适应之负margin法</title>
	<style type="text/css">

	#nav{
		float: right;
		width: 230px;
		background: #ccc;
		margin-left: -230px;
		position: relative;
	}

	</style>
</head>
<body>
	<div id="container">
		<div id="nav">
			左栏
		</div>
		<div id="main">
			右栏
		</div>
	</div>
</body>
</html>