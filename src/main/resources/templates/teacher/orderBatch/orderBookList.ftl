<!DOCTYPE html>

<html>

	<head>
		[#include "/teacher/include/head.htm"]
	
		<style>
			body {
				border-left: 1px solid #E7EBEF;
			}
			
			.path_module {
				color: #222;
			}
			
			.path_right a {
				font-weight: 600;
				color: #222;
			}
			
			.main {
				border: 0px solid #F7F3F7;
			}
			
			.main input[type="text"] {
				background: #FFFFFF;
			}
			
			.search .search_button .btn_orange {
				width: 100px;
				height: 24px;
				color: #fff;
				letter-spacing: 1px;
				background: #00A2DE;
				border: 0px solid #F7F3F7;
			}
			
			.search .search_button .btn_orange:hover {
				width: 100px;
				height: 24px;
				color: #fff;
				letter-spacing: 1px;
				background: #6AD0F6;
				border: 0px solid #F7F3F7;
			}
		</style>
	</head>

	<body>
		<form action="${base}/teacher/bookOrder/listSellerBiblio" method="post" id="formId">

			<div class="main">
				[#include "/teacher/include/path.ftl"]
				<div class="main_content">


					<style>
						div[type=number] {
							-moz-appearance: textfield;
							/* Firefox */
							-webkit-appearance: textfield;
							/* Safari and Chrome */
						}
						
						input[type=number]::-webkit-inner-spin-button,
						input[type=number]::-webkit-outer-spin-button {
							-webkit-appearance: none;
							margin: 0;
						}
					</style>

					<div id="divmsg">
						<div class="tipBox">
							<div class="ico"></div>
							<p id="pMsg"></p>
							<div class="close" id="close"></div>
							<div class="clear"></div>
						</div>
					</div>

					<div id="fullbg1"></div>
					<div id="dialog1">

						<p class="close1" onclick="closeHelp();" style="margin-top: 340px;">关闭</p>
					</div>
					<div class="search">
						<div class="search_condition">
							<input type="hidden" name="batchId" value="301"> <span><font>ISBN：</font>
							<input name="isbn" type="text"
							value="" id="isbn" onfocus="onFocusSubmit('isbn','/bookOrder/querySellerBiblio')"/></span> <span><font>题名：</font>
							<input name="title" type="text"
							value="" /></span> <span><font>著者：</font>
							<input name="author" type="text"
							value="" /></span> <span><font>分类号：</font>
							<input name="classNo" type="text"
							value="" /></span> <span><font>出版社：</font>
							<input name="publisher" type="text"
							value="" /></span> 
							<span class="search_button" onclick="doFormSubmit('formId','/bookOrder/querySellerBiblio')">
								<input name="" type="button" value="查询" class="btn_orange" />
							</span>
							<span class="search_button" onclick="doFormSubmit('formId','/bookOrder/querySellerBiblio')">
								<input name="" type="button" value="导出Excel" class="btn_orange" />
							</span>
						</div>
					</div>
					<div class="list_table_title">
						<h3>书商征订目录</h3>
						<ul>
							<li><span class="btn_left"></span>
									总价格：100元
								<span class="btn_right"></span></li>
							<li>
								<font></font>
							</li>

							<li><span class="btn_left"></span>
									总数量：10本
								<span class="btn_right"></span></li>
							<li>
								<font></font>
							</li>
						</ul>
					</div>
					<div class="list" id="list1">
						<table id="myTable01" class="list_table" width="100%" border="0" cellspacing="0" cellpadding="0">
							<thead>
								<tr>
									<th colspan="2" width="4%" align="right">选择</th>
									<th width="10%">ISBN</th>
									<th width="10%">分类号</th>
									<th>题名</th>
									<th width="10%">著者</th>
									<th width="10%">出版社</th>

									<th width="10%">出版日期</th>
									<th width="10%">价格</th>
									<th width="10%">复本数</th>

								</tr>
							</thead>
							<tbody>

								[#if (page.list)??] [#list page.list as data]
								<tr onclick="checkedTr(this);">
									<td width="2%" align="center" bgcolor="#f9f9f9">&nbsp;</td>
									<td width="2%" align="right"><input name="id" type="radio" class="input_none" id="id" value="${data.id }" /></td>
									<td>${data.isbn }</td>
									<td>${data.classification }</td>
									<td>${data.title }</td>
									<td>${data.author }</td>
									<td>${data.press }</td>
									<td>${data.publicationDate }</td>
									<td>${data.price }</td>
									<td>${data.bookReplication }</td>	
								</tr>
								[/#list][/#if]
								
							</tbody>
						</table>
					</div>
					[#include "/teacher/include/page.ftl"]
				</div>
			</div>
		</form>
	</body>

</html>