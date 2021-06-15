<#include "/layout/layout.ftl"/>

<@htmlHead title="卖家云">
<link rel="stylesheet" type="text/css" href="/static/mui/css/icons-extra.css">
<style>
			.mui-card .mui-control-content {
				padding: 10px;
			}
			.mui-control-content {
				height: 450px;
			}
		</style>
</@htmlHead>

<@htmlBody>


<div class="mui-content">

		<div class="mui-input-row mui-search input-box">
			<input type="search" class="mui-input-clear" placeholder="输入商品名或SKU编码">
		</div>

	<div class="mui-slider">
		<div id="sliderSegmentedControl" class="mui-slider-indicator mui-segmented-control mui-segmented-control-inverted">
			<a class="mui-control-item mui-active" href="#item11">
				待付款<span class="mui-badge">9</span>
			</a>
			<a class="mui-control-item" href="#item2">
				待发货<span class="mui-badge">23</span>
			</a>
			<a class="mui-control-item" href="#item3">
				待收货<span class="mui-badge">N</span>
			</a>
			<a class="mui-control-item" href="#item4">
				已完成
			</a>
		</div>
	</div>
	<div class="bottom-bar">
		<div class="bottom-bar-total">
			<span class="text-block">
				数量：<span class="text-strong">12</span>
			</span>
			<span class="text-block">
				价格:<span  class="text-strong">￥100</span>
			</span>
		</div>
		<button class="mui-btn mui-btn-primary btn-max">+ 加入清单</button>
	</div>
	<div>
		<div id="item11" class="mui-control-content mui-active">
			<div id="scroll" class="mui-scroll-wrapper">
				<div class="mui-scroll">
					<ul class="mui-table-view">
						<li class="mui-table-view-cell">
							第一个选项卡子项-1
						</li>
						<li class="mui-table-view-cell">
							第一个选项卡子项-2
						</li>
						<li class="mui-table-view-cell">
							第一个选项卡子项-3
						</li>
						<li class="mui-table-view-cell">
							第一个选项卡子项-4
						</li>
						<li class="mui-table-view-cell">
							第一个选项卡子项-5
						</li>
						<li class="mui-table-view-cell">
							第一个选项卡子项-6
						</li>
						<li class="mui-table-view-cell">
							第一个选项卡子项-7
						</li>
						<li class="mui-table-view-cell">
							第一个选项卡子项-8
						</li>
						<li class="mui-table-view-cell">
							第一个选项卡子项-9
						</li>
						<li class="mui-table-view-cell">
							第一个选项卡子项-10
						</li>
						<li class="mui-table-view-cell">
							第一个选项卡子项-11
						</li>
						<li class="mui-table-view-cell">
							第一个选项卡子项-12
						</li>
						<li class="mui-table-view-cell">
							第一个选项卡子项-13
						</li>
						<li class="mui-table-view-cell">
							第一个选项卡子项-14
						</li>
						<li class="mui-table-view-cell">
							第一个选项卡子项-15
						</li>
						<li class="mui-table-view-cell">
							第一个选项卡子项-16
						</li>
						<li class="mui-table-view-cell">
							第一个选项卡子项-17
						</li>
						<li class="mui-table-view-cell">
							第一个选项卡子项-18
						</li>
						<li class="mui-table-view-cell">
							第一个选项卡子项-19
						</li>
						<li class="mui-table-view-cell">
							第一个选项卡子项-20
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div id="item2" class="mui-control-content">
			<ul class="mui-table-view">
				<li class="mui-table-view-cell">
					第二个选项卡子项-1
				</li>
				<li class="mui-table-view-cell">
					第二个选项卡子项-2
				</li>
				<li class="mui-table-view-cell">
					第二个选项卡子项-3
				</li>
			</ul>
		</div>
		<div id="item3" class="mui-control-content">
			<ul class="mui-table-view">
				<li class="mui-table-view-cell">
					第三个选项卡子项-1
				</li>
				<li class="mui-table-view-cell">
					第三个选项卡子项-2
				</li>
				<li class="mui-table-view-cell">
					第三个选项卡子项-3
				</li>
			</ul>
		</div>
	</div>
</div>

</@htmlBody>

<@htmlFoot>
<script src="/static/component/ui/js/main.js"></script>
<script>
			mui.init({
				swipeBack:true //启用右滑关闭功能
			});
			(function($) {
				$('#scroll').scroll({
					indicators: true //是否显示滚动条
				});
				$('#scroll')[0].style.height=(window.innerHeight-163)+"px";
				var segmentedControl = document.getElementById('segmentedControl');
				$('.mui-input-group').on('change', 'input', function() {
					if (this.checked) {
						var styleEl = document.querySelector('input[name="style"]:checked');
						var colorEl = document.querySelector('input[name="color"]:checked');
						if (styleEl && colorEl) {
							var style = styleEl.value;
							var color = colorEl.value;
							segmentedControl.className = 'mui-segmented-control' + (style ? (' mui-segmented-control-' + style) : '') + ' mui-segmented-control-' + color;
						}
					}
				});
			})(mui);
		</script>
</@htmlFoot>