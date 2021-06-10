<#macro nav_left>
<nav class="navbar-default navbar-static-side" role="navigation">
	<div class="sidebar-collapse">
		<ul class="nav metismenu" id="side-menu">
			<li class="nav-header">
				<div class="dropdown profile-element"> 
					<span>
						<img alt="image" class="img-circle" src="/static/img/profile_small.jpg">
					</span>
					<a data-toggle="dropdown" class="dropdown-toggle" href="#">
						<span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">用户名</strong>
						</span> <span class="text-muted text-xs block">说明 <b class="caret"></b></span> </span> </a>
						<ul class="dropdown-menu animated fadeInRight m-t-xs">
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li class="divider"></li>
							<li><a href="login.html">注销</a></li>
						</ul>
					</div>
					<div class="logo-element">
						IN+
					</div>
				</li>
				<li class="active">
					<a href="index.html"><i class="fa fa-th-large"></i> <span class="nav-label">
						Grid-window
					</span></a>
				</li>
				<li>
					<a href="minor.html">
						<i class="fa fa-th-large"></i> 
						<span class="nav-label">
							Resource Mapping
						</span> 
					</a>
				</li>
			</ul>
		</div>
	</nav>
	<#nested>
	</#macro>

	<#macro nav_top>
	<nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
		<div class="navbar-header">
			<a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
			<form role="search" class="navbar-form-custom" action="search_results.html">
				<div class="form-group">
					<input type="text" placeholder="输入关键字..." class="form-control" name="top-search" id="top-search">
				</div>
			</form>
		</div>
		<ul class="nav navbar-top-links navbar-right">
			<li>
				<span class="m-r-sm text-muted welcome-message"></span>
			</li>
			<li>
				<a href="login.html">
					<i class="fa fa-sign-out"></i> 注销
				</a>
			</li>
		</ul>

	</nav>
	<#nested>
	</#macro>


	<#macro BaseStyle>
	<link href="/static/theme/products/css/bootstrap.min.css" rel="stylesheet">
	<link href="/static/theme/products/font-awesome/css/font-awesome.css" rel="stylesheet">
	<link href="/static/theme/products/css/animate.css" rel="stylesheet">
	<link href="/static/css/sweetalert/sweetalert.css" rel="stylesheet">
	<link href="/static/css/awesome-bootstrap-checkbox.css" rel="stylesheet">
	<link href="/static/theme/products/css/style.css" rel="stylesheet">
	<link rel='stylesheet' href='/static/component/common/css/style.css'/>
	<#nested>
	</#macro>

	<#macro BaseScripts>
	<!-- Mainly scripts -->
	<script src="/static/lib/jquery/jquery-2.2.3.js"></script>
	<script src="/static/lib/bootstrap/bootstrap.min.js"></script>
	<script src="/static/lib/metisMenu/jquery.metisMenu.js"></script>
	<script src="/static/lib/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="/static/lib/handlebars/handlebars.js"></script>
	<!-- Custom and plugin javascript -->
	<script src="/static/lib/inspinia/inspinia.js"></script>
	<script src="/static/lib/pace/pace.min.js"></script>
	<script src="/static/lib/sweetalert/sweetalert.min.js"></script>
	<script src="/static/lib/idle-timer/idle-timer.min.js"></script>

	<script type="text/javascript" src="/static/component/common/js/common.js"></script>
	</#macro>