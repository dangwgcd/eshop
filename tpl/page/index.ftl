<#include "/layout/layout.ftl"/>

<@htmlHead title="卖家云">
<link rel="stylesheet" type="text/css" href="/static/mui/css/icons-extra.css">
</@htmlHead>

<@htmlBody>


<nav class="mui-bar mui-bar-tab">
	<a class="mui-tab-item" href="#tabbar-with-chat">
		<span class="mui-icon mui-icon-person-filled"><span class="mui-badge">9</span></span>
		<span class="mui-tab-label">销售员</span>
	</a>
	<a class="mui-tab-item" href="#tabbar-with-contact">
		<span class="mui-icon mui-icon-extra mui-icon-extra-topic"></span>
		<span class="mui-tab-label">销售单</span>
	</a>
	<a class="mui-tab-item" href="#tabbar-with-map">
		<span class="mui-icon mui-icon-extra mui-icon-extra-class"></span>
		<span class="mui-tab-label">商品</span>
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
				<li class="mui-table-view-cell"><a href="tab-top" class="mui-navigate-right">顶部tab</a></li>
				<li class="mui-table-view-cell"><a href="###" class="mui-navigate-right">page1</a></li>

				<li class="mui-table-view-cell"><a href="###">
					<div class="mui-input-row mui-checkbox mui-left pull-left">
						<label>买买买 1</label>
						<input name="checkbox" value="Item 1" type="checkbox" >
					</div>
					<div class="pull-right text-panel">本月销售业绩：<span class='text-strong'>100w</span></div>
				</a></li>
				<li class="mui-table-view-cell"><a href="" class="mui-navigate-right">买买买 1</a></li>
			</ul>


			<ul class="mui-table-view mui-table-view-chevron">
				<li class="mui-table-view-cell"><a href="" class="mui-navigate-right">买买买 1</a></li>
				<li class="mui-table-view-cell"><a href="" class="mui-navigate-right">买买买 1</a></li>
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


				<li class="mui-card">
					<div class="mui-card-header">页眉</div>
					<div class="mui-card-content">
						<div class="mui-card-content-inner">
							包含页眉页脚的卡片，页眉常用来显示面板标题，页脚用来显示额外信息或支持的操作（比如点赞、评论等）
						</div>
					</div>
					<div class="mui-card-footer">页脚</div>
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
	</@htmlBody>

	<@htmlFoot>
	<script src="/static/component/ui/js/main.js"></script>
	</@htmlFoot>