<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<title>Hello MUI</title>
		<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<link rel="stylesheet" href="/static/mui/css/mui.min.css">
		<style type="text/css">
			#list {
				/*避免导航边框和列表背景边框重叠，看起来像两条边框似得；*/
				margin-top: -1px;
			}
		</style>
	</head>

	<body>
		<div class="mui-content">
			<ul id="list" class="mui-table-view mui-table-view-chevron">
				<li class="mui-table-view-cell">
					<a class="mui-navigate-right" open-type="common" href="/tm/content">
						加载测试
					</a>
				</li>
			</ul>
			
		</div>
		<script src="/static/mui/js/mui.min.js"></script>
		<script>
			var aniShow = "pop-in";
			 //只有ios支持的功能需要在Android平台隐藏；
			if (mui.os.android) {
				var list = document.querySelectorAll('.ios-only');
				if (list) {
					for (var i = 0; i < list.length; i++) {
						list[i].style.display = 'none';
					}
				}
				//Android平台暂时使用slide-in-right动画
				if(parseFloat(mui.os.version)<4.4){
					aniShow = "slide-in-right";
				}
			}
			//初始化，并预加载webview模式的选项卡			
			function preload () {
				mui.preload({
					url:'examples/tab-webview-main.html',
					styles: {
						popGesture: 'hide'
					}
				});
				mui.preload({
					url:"examples/pullrefresh_main.html",
					styles:{
						popGesture:'hide'
					}
				});
			}
			var templates = {};
			var getTemplate = function(name, header, content) {
				var template = templates[name];
				if (!template) {
					//预加载共用父模板；
					var headerWebview = mui.preload({
						url: header,
						id: name + "-main",
						styles: {
							popGesture: "hide",
						},
						extras: {
							mType: 'main'
						}
					});
					//预加载共用子webview
					var subWebview = mui.preload({
						url: !content ? "" : content,
						id: name + "-sub",
						styles: {
							top: '45px',
							bottom: '0px',
						},
						extras: {
							mType: 'sub'
						}
					});
					subWebview.addEventListener('titleUpdate', function() {
						setTimeout(function() {
							subWebview.show();
						}, 50);
					});
					subWebview.hide();
					headerWebview.append(subWebview);
					//iOS平台支持侧滑关闭，父窗体侧滑隐藏后，同时需要隐藏子窗体；
					if (mui.os.ios) { //5+父窗体隐藏，子窗体还可以看到？不符合逻辑吧？
						headerWebview.addEventListener('hide', function() {
							subWebview.hide("none");
						});
					}
					templates[name] = template = {
						name: name,
						header: headerWebview,
						content: subWebview,
					};
				}
				return template;
			};
			var initTemplates = function() {
				getTemplate('default', 'examples/template.html');
			};

			mui.plusReady(function() {
				//读取本地存储，检查是否为首次启动
				var showGuide = plus.storage.getItem("lauchFlag");
				if(showGuide){
					//有值，说明已经显示过了，无需显示；
					//关闭splash页面；
					plus.navigator.closeSplashscreen();
					plus.navigator.setFullscreen(false);
					//初始化模板
					initTemplates(); 
					//预加载
					preload();
				}else{
					//显示启动导航
					mui.openWindow({
						id:'guide',
						url:'examples/guide.html',
						show:{
							aniShow:'none'
						},
						waiting:{
							autoShow:false
						}
					});
					//延迟的原因：优先打开启动导航页面，避免资源争夺
					setTimeout(function () {
						//初始化模板
						initTemplates(); 
						//预加载
						preload();
					},200);
				}
			});
			 //主列表点击事件
			mui('#list').on('tap', 'a', function() {
				var id = this.getAttribute('href');
				var href = this.href;
				var type = this.getAttribute("open-type");
				//不使用父子模板方案的页面
				if (type == "common") {
					var webview_style = {
						popGesture: "close"
					};
					//侧滑菜单需动态控制一下zindex值；
					if (~id.indexOf('offcanvas-')) {
						webview_style.zindex = 9998;
						webview_style.popGesture = ~id.indexOf('offcanvas-with-right') ? "close" : "none";
					}
					//图标界面需要启动硬件加速
					if(~id.indexOf('icons.html')){
						webview_style.hardwareAccelerated = true;
					}
					mui.openWindow({
						id: id,
						url: this.href,
						styles: webview_style,
						show: {
							aniShow: aniShow
						},
						waiting: {
							autoShow: false
						}
					});
				} else if (id && ~id.indexOf('.html')) {
					if (!mui.os.plus || (!~id.indexOf('popovers.html')&&mui.os.ios)) {
						mui.openWindow({
							id: id,
							url: this.href,
							styles: {
								popGesture: 'close'
							},
							show: {
								aniShow: aniShow
							},
							waiting: {
								autoShow: false
							}
						});
					} else {
						//TODO  by chb 当初这么设计，是为了一个App中有多个模板，目前仅有一个模板的情况下，实际上无需这么复杂
						//使用父子模板方案打开的页面
						//获得共用模板组
						var template = getTemplate('default');
						//判断是否显示右上角menu图标；
						var showMenu = ~href.indexOf('popovers.html') ? true : false;
						//获得共用父模板
						var headerWebview = template.header;
						//获得共用子webview
						var contentWebview = template.content;
						var title = this.innerText.trim();
						//通知模板修改标题，并显示隐藏右上角图标；
						mui.fire(headerWebview, 'updateHeader', {
							title: title,
							showMenu: showMenu,
							target:href,
							aniShow: aniShow
						});
						
						if(mui.os.ios||(mui.os.android&&parseFloat(mui.os.version)<4.4)){
							var reload = true;
							if (!template.loaded) {
								if (contentWebview.getURL() != this.href) {
									contentWebview.loadURL(this.href);
								} else {
									reload = false;
								}
							} else {
								reload = false;
							}
							(!reload) && contentWebview.show();
							
							headerWebview.show(aniShow, 150);
						}
					}
				}
			});
			var index = null; //主页面
			function openMenu() {
				!index && (index = mui.currentWebview.parent());
				mui.fire(index, "menu:open");
			}
			//在android4.4.2中的swipe事件，需要preventDefault一下，否则触发不正常
			window.addEventListener('dragstart', function(e) {
				mui.gestures.touch.lockDirection = true; //锁定方向
				mui.gestures.touch.startDirection = e.detail.direction;
			});
			window.addEventListener('dragright', function(e) {
				if (!mui.isScrolling) {
					e.detail.gesture.preventDefault();
				}
			});
			 //监听右滑事件，若侧滑菜单未显示，右滑要显示菜单；
			window.addEventListener("swiperight", function(e) {
				//默认滑动角度在-45度到45度之间，都会触发右滑菜单，为避免误操作，可自定义限制滑动角度；
				if (Math.abs(e.detail.angle) < 4) {
					openMenu();
				}
			});
		</script>
	</body>

</html>
