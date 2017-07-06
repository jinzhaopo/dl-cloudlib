<!DOCTYPE html>
<html>

	<head>
		[#include "/teacher/include/head.htm"]
		<script type="text/javascript">
			$(function() {
				showPath("当前位置：电子书管理→ 电子书→ 电子书列表");
			});
			/**
			 * 修改
			 * @param {Object} url
			 *
			 */
			function editDate(url) {
				editDataByCheckId(url);
			}
			/**
			 * 订购点击事件
			 * @param {Object} url
			 */
			function addOrder(url) {
				var judge = true;
				//先验证是否有预定批次
				$.ajax({
					type: "post",
					url: base + '/teacher/batch/getOrderBookBatch',
					async: false,
					success: function(data) {
						if(data == null) {
							judge = false;
						}
					},
					error: function() {
						judge = false;
						showMessageWarn("系统错误!");
					}

				});
				if(!judge) {
					showMessageWarn("请先选择批次!");
					return;
				}
				//判断有没有选择电子书
				var ids = getCheckIds();
				var length = ids.length;
				if(length < 1) {
					showMessageWarn("请选择记录!");
					return;
				}
				//先自动赋值
				$("#bookReplication").val(1);
				$("#mon").val(12);
				//显示填写的内容
				showBg();
			}
			/**
			 * 订购
			 */
			function submitIds() {
				//验证
				var bookReplication = $("#bookReplication").val();
				var mon = $("#mon").val();
				
				var data = $("#form_ids").serializeArray();
				$.ajax({
					type: "post",
					data:data,
					url: base + '/teacher/order/add',
					async: false,
					success: function(data) {
						alert(data);
					},
					error: function() {
						showMessageWarn("系统错误!");
					}

				});
			}
		</script>
	</head>

	<body>
		<form action="${base}/teacher/book/list" method="post" id="formId">
			<div class="main">
				[#include "/teacher/include/path.ftl"]
				<div class="main_content">
					<div class="search">
						<div class="search_condition">
							<span><font>题名：</font> <input name="search_LIKE_title" type="text" value="${LIKE_title}"> </span>
							<span><font>作者：</font> <input name="search_LIKE_author" type="text" value="${LIKE_author}"> </span>
							<span><font>出版社：</font> <input name="search_LIKE_press" type="text" value="${LIKE_press}"> </span>
							<span class="search_button">
								<input  type="submit" value="查询" class="btn_orange">
							</span>
						</div>
					</div>
					<div class="list_table_title">
						<h3>电子书列表</h3>
						<span style="color:red;">当前预定批次:${(bookBatch.name)!''}<span>
						<ul>
							<li><span class="btn_left"></span>
						<a href="javascript:addOrder('${base}/teacher/batchOrder/addOrder')">订购</a><span class="btn_right"></span></li>
						</ul>
					</div>
					<div class="list" id="list1">
						<table id="myTable01" class="list_table" width="100%" border="0" cellspacing="0" cellpadding="0">
							<thead>
								<tr class="odd even">
									<th width="60">选择</th>
									<th>入库时间</th>
									<th>ISBN</th>
									<th>题名</th>
									<th>作者</th>
									<th>出版社</th>
									<th>出版时间</th>
									<th>分类号</th>
									<th>价格</th>
								</tr>
							</thead>
							<tbody>
								[#if (page.list)??] [#list page.list as data]

								<tr class="odd">
									<td><input type="checkbox" name="ids" value="${data.id }" form="form_ids" class="input_none" /></td>
									<td>
										<div title="${data.createDate?string('yyyy-MM-dd') }">${data.createDate?string('yyyy-MM-dd') }</div>
									</td>
									<td>
										<div title="${data.isbn }">${data.isbn }</div>
									</td>
									<td>
										<div title="${data.title }">${data.title }</div>
									</td>
									<td>
										<div title="${data.author }">${data.author }</div>
									</td>
									<td>
										<div title="${data.press }">${data.press }</div>
									</td>
									<td>
										<div title="${data.publicationDate }">${data.publicationDate }</div>
									</td>
									<td>
										<div title="${data.classification }">${data.classification }</div>
									</td>
									<td>
										<div title="${data.price }">${data.price }</div>
									</td>
								</tr>

								[/#list][/#if]

							</tbody>
						</table>
					</div>

					[#include "/teacher/include/page.ftl"]
				</div>
			</div>
		</form>
		<form action="" id="form_ids" hidden="hidden" method="post">

		</form>
	</body>
	</div>
	<div id="fullbg" onclick="closeBg();"></div>
	<div id="dialog">
		<p id="" class="title">请填写数量和期限</p>
		<div class="content">
			<span>副本数:</span><input type="number" name="bookReplication" id="bookReplication" form="form_ids" min="1"  required="required"><br/>
			<span>期限(月):</span><input type="number" name="mon" id="mon" form="form_ids" required="required" min="1">
		</div>
		<p class="close" style="margin-top: 50px;background-color: #F4AB4C;" onclick="submitIds();">确定</p>
	</div>

</html>