<#include "/layout/layout.ftl"/>

<@htmlHead title="卖家云">
<link rel="stylesheet" type="text/css" href="/static/mui/css/icons-extra.css">
</@htmlHead>

<@htmlBody>


<nav class="mui-bar mui-bar-tab">
	<a class="mui-tab-item" href="#tabbar-with-chat">
		<span class="mui-icon mui-icon-star-filled"><span class="mui-badge">9</span></span>
		<span class="mui-tab-label">菜单</span>
	</a>
	<a class="mui-tab-item" href="#tabbar-with-contact">
		<span class="mui-icon mui-icon-star-filled"></span>
		<span class="mui-tab-label">列表</span>
	</a>
	<a class="mui-tab-item" href="#tabbar-with-map">
		<span class="mui-icon mui-icon-star-filled"></span>
		<span class="mui-tab-label">表单</span>
	</a>
</nav>
<div class="mui-content">
	<div id="tabbar-with-chat" class="mui-control-content mui-active">
		<div class="search-box">
			<div class="search-filter">筛选<span class="mui-icon mui-icon-arrowdown"></span></div>
			<div class="mui-input-row mui-search input-box">
				<input type="search" class="mui-input-clear" placeholder="输入商品名或SKU编码">
			</div>
		</div>

		<ul class="mui-table-view mui-table-view-chevron item-list">
			<li class="mui-table-view-cell"><a href="tab-top" class="mui-navigate-right">顶部与底部菜单</a></li>
			<li class="mui-table-view-cell"><a href="###" class="mui-navigate-right">其他页面</a></li>

			<li class="mui-table-view-cell"><a href="###">
				<div class="mui-input-row mui-checkbox mui-left pull-left">
					<label>名称</label>
					<input name="checkbox" value="Item 1" type="checkbox" >
				</div>
				<div class="pull-right text-panel">本月销售业绩：<span class='text-strong'>100w</span></div>
			</a></li>
			<li class="mui-table-view-cell"><a href="" class="mui-navigate-right">选项</a></li>
		</ul>

	</div>
	<div id="tabbar-with-contact" class="mui-control-content">
		<ul class="mui-card-view">
			<li class="mui-card">
				<div class="mui-card-header">
					<div class="pull-left">EW3232343432</div>
					<div class="text-warn pull-right">已完成</div>
				</div>
				<div class="mui-card-content">
					<div class="mui-card-content-inner">
						<div class="text-title">代理名称代理</div>
						<div class="text-title text-strong"><span class="small">￥</span>100</div>
					</div>
				</div>
			</li>

			<li class="mui-card">
				<div class="mui-card-header">
					<div class="pull-left">EW3232343432</div>
					<div class="text-warn pull-right">已完成</div>
				</div>
				<div class="mui-card-content">
					<div class="mui-card-content-inner">
						<div class="text-title">代理名称代理</div>
						<div class="text-title text-strong"><span class="small">￥</span>100</div>
						<button class="mui-btn mui-btn-primary mui-btn-outlined">
							发货
						</button>
					</div>
				</div>
			</li>



			<li class="mui-card">
				<div class="mui-card-content">
					<div class="mui-card-content-inner mui-card-content-noheader">
						<div>
							<div class="text-block pull-left">
								<div class="text-title">代理名称代理</div>
								<div class="text-code small"><span class="mui-icon mui-icon-phone"></span>5435353343</div>
								<div class="small">
									近30天采购:<span class="text-strong">100w</span>
									<br/>
									<span class="text-strong">7%</span>上升


								</div>
							</div>
							<div class="text-block pull-right">
								<span class="text-title">B级</span>
								<br/>
								<span class="small">即时付款</span>
							</div>
							<div class="clear"></div>
						</div>
						<button class="mui-btn mui-btn-primary mui-btn-outlined">
							编辑
						</button>
					</div>
				</div>
			</li>

			<li class="mui-card mui-media">
				<a href="javascript:;">
					<img class="mui-media-object mui-pull-left">
					<div class="mui-media-body">
						<div class="text-title">商品名称</div>
						<div class="text-strong">
							￥100 - ￥200
						</div>
						<div class="text-code">3种规格<div class="text-right">已上架</div></div>
					</div>
				</a>
				<div class="mui-card-footer">
					<div class="text-left">
						代理名称
					</div>
					<div class="text-right">
						<span>本周销量10K↑</span>
						<span>70%分销商采购</span>
					</div>
				</div>
			</li>

			<li class="mui-card mui-media">
				<a href="javascript:;">
					<img class="mui-media-object mui-pull-left">
					<div class="mui-media-body">
						<div class="text-title">商品名称</div>
						<div class="text-strong">
							￥100 - ￥200
						</div>
						<div class="text-code">3种规格</div>
					</div>
				</a>
				<div class="mui-card-footer">
					<div class="text-left">
						代理名称
					</div>
					<div class="text-right">
						<span>本周销量10K↑</span>
						<span>70%分销商采购</span>
					</div>
				</div>
			</li>

		</ul>
	</div>
	<div id="tabbar-with-map" class="mui-control-content">
		<ul class="mui-table-view mui-table-view-chevron list-input">
			<li class="mui-table-view-cell">
				<a>
					<div class="mui-input-row">
						<label>价格</label>
						<input type="text" placeholder="输入提示">
					</div>
				</a>
			</li>
			<li class="mui-table-view-cell">
				<a>
					<div class="mui-input-row">
						<label>数量</label>
						<input type="text" placeholder="输入提示" value="100">
					</div>
				</a>
			</li>

			<li class="mui-table-view-cell input-title">
				<a>
					名称
				</a>
			</li>

			<li class="mui-table-view-cell">
				<a>
					<input type="text" placeholder="输入提示" value="100">
				</a>
			</li>
		</ul>
		<ul class="mui-table-view mui-table-view-radio list-input">
			<li class="mui-table-view-cell input-title">
				<a>
					名称
				</a>
			</li>
			<li class="mui-table-view-cell">
				<a class="mui-navigate-right">
					A级
				</a>
			</li>
			<li class="mui-table-view-cell mui-selected">
				<a class="mui-navigate-right">
					B级
				</a>
			</li>
			<li class="mui-table-view-cell">
				<a class="mui-navigate-right">
					C级
				</a>
			</li>
		</ul>
	</div>
</div>
</@htmlBody>

<@htmlFoot>
<script src="/static/component/ui/js/main.js"></script>
<script>
		mui.init({
			swipeBack:true //启用右滑关闭功能
		});
		
	</script>
</@htmlFoot>