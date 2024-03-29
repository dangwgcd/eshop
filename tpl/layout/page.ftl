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

		.title{
			margin: 20px 15px 10px;
			color: #6d6d72;
			font-size: 15px;
		}

		.oa-contact-cell.mui-table .mui-table-cell {
			padding: 11px 0;
			vertical-align: middle;
		}

		.oa-contact-cell {
			position: relative;
			margin: -11px 0;
		}

		.oa-contact-avatar {
			width: 75px;
		}
		.oa-contact-avatar img {
			border-radius: 50%;
		}
		.oa-contact-content {
			width: 100%;
		}
		.oa-contact-name {
			margin-right: 20px;
		}
		.oa-contact-name, oa-contact-position {
			float: left;
		}
	</style>
</head>

<body>
	<nav class="mui-bar mui-bar-tab">
		<a class="mui-tab-item" href="#tabbar-with-chat">
			<span class="mui-icon mui-icon-email"><span class="mui-badge">9</span></span>
			<span class="mui-tab-label">销售员</span>
		</a>
		<a class="mui-tab-item" href="#tabbar-with-contact">
			<span class="mui-icon mui-icon-contact"></span>
			<span class="mui-tab-label">销售单</span>
		</a>
		<a class="mui-tab-item" href="#tabbar-with-map">
			<span class="mui-icon mui-icon-gear"></span>
			<span class="mui-tab-label">商品</span>
		</a>
	</nav>
	<div class="mui-content">
		<div id="tabbar-with-chat" class="mui-control-content mui-active">
			<div class="title">这是div模式选项卡中的第2个子页面，该页面展示一个消息列表
			</div>

			<ul class="mui-table-view mui-table-view-chevron">
				<li class="mui-table-view-cell"><a href="" class="mui-navigate-right">Item 1</a></li>
			</ul>

		</div>
		<div id="tabbar-with-contact" class="mui-control-content">
			<div class="title">这是div模式选项卡中的第3个子页面，该页面展示一个通讯录示例.</div>
			<ul class="mui-table-view mui-table-view-striped mui-table-view-condensed">
				<li class="mui-table-view-cell">
					<div class="mui-slider-cell">
						<div class="oa-contact-cell mui-table">
							<div class="oa-contact-avatar mui-table-cell">
								<img src="../images/60x60.gif" />
							</div>
							<div class="oa-contact-content mui-table-cell">
								<div class="mui-clearfix">
									<h4 class="oa-contact-name">叶文洁</h4>
									<span class="oa-contact-position mui-h6">董事长</span>
								</div>
								<p class="oa-contact-email mui-h6">
									yewenjie@sina.com
								</p>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<div id="tabbar-with-map" class="mui-control-content">
			<div class="title">这是div模式选项卡中的第4个子页面，该页面展示一个常见的设置示例.</div>
			<ul class="mui-table-view">
				<li class="mui-table-view-cell">
					<a class="mui-navigate-right">
						新消息通知
					</a>
				</li>
				<li class="mui-table-view-cell">
					<a class="mui-navigate-right">
						隐私
					</a>
				</li>
				<li class="mui-table-view-cell">
					<a class="mui-navigate-right">
						通用
					</a>
				</li>
			</ul>
			<ul class="mui-table-view" style="margin-top: 25px;">
				<li class="mui-table-view-cell">
					<a class="mui-navigate-right">
						关于mui
					</a>
				</li>
			</ul>
			<ul class="mui-table-view" style="margin-top: 25px;">
				<li class="mui-table-view-cell">
					<a style="text-align: center;color: #FF3B30;">
						退出登录
					</a>
				</li>
			</ul>
		</div>
	</div>
</body>
<script src="/static/mui/js/mui.min.js"></script>
</html>