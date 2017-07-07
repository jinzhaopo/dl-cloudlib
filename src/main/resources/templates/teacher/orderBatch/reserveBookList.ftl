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
				width:50px;
			}
			.main .add,.min {
				line-height:20px;
				width:20px;
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
		
		
		<script type="text/javascript">
			function exportExcel(){
				$("#form_ids").attr("action","${base}/teacher/batch/exportExcel?batchId=${ids }");
				$("#form_ids").submit();	
			}
			
			function deleteDate(url){
				editDataByCheckId(url);
			}
			
			$(function(){
				var source=$("#text").val();
				
				//加法
				$(".add").click(function() {
					var	t = $(this).parent().find('input[class*=text_box]');
					if(t.val() == "" || undefined || null || 0) {
						t.val(1);
					}
					t.val(parseInt(t.val()) + 1)
					
					var bookReplication=t.val();
					var id=$("#id").val();
					$.ajax({
						url:"${base}/teacher/batch/updateBookReplication",
						dataType:"json",
						data:{"id":id,"bookReplication":bookReplication},
						type:"POST",
						success:function(data){
							if(data.messageType == "SUCCESS") {
								
							} else {
								t.val(source);
								alert("更新错误，请稍候再操作");
							}
						}
					})
					
				})
				//减法
				$(".min").click(function() {
					var t = $(this).parent().find('input[class*=text_box]');
					if(t.val() == "" || undefined || null || 0) {
						t.val(1);
					}
					
					t.val(parseInt(t.val()) - 1)
					if(parseInt(t.val()) < 1) {
						t.val(1);
					}
					
					var bookReplication=t.val();
					var id=$("#id").val();
					$.ajax({
						url:"${base}/teacher/batch/updateBookReplication",
						dataType:"json",
						data:{"id":id,"bookReplication":bookReplication},
						type:"POST",
						success:function(data){
							if(data.messageType == "SUCCESS") {
								
							} else {
								t.val(source);
								alert("更新错误，请稍候再操作");
							}
						}
					})
					
				})
				
				
				$(".text_box").blur(function() {
					var t = $(this).parent().find('input[class*=text_box]');
					var reg = /[1-9]|[1-9][\d]*/;
					if(!reg.test(t.val())) {
						t.val(1);
					}
					
					var	bookReplication=t.val();
					var id=$("#id").val();
					$.ajax({
						url:"${base}/teacher/batch/updateBookReplication",
						dataType:"json",
						data:{"id":id,"bookReplication":bookReplication},
						type:"POST",
						success:function(data){
							if(data.messageType == "SUCCESS") {
								
							} else {
								t.val(source);
								alert("更新错误，请稍候再操作");
							}
						}
					})
					
				})
			})
		</script>
		
	</head>

	<body>
		<form action="${base}/teacher/batch/selectBatch" method="post" id="formId">
			<div class="main">
				[#include "/teacher/include/path.ftl"]
				<div class="main_content">
					<div class="search">
						<div class="search_condition">
							<input type="hidden" name="search_EQ_bookBatchId" value="${ids }"> 
							<span>
								<font>ISBN：</font>
								<input name="search_LIKE_isbn" type="text" value="${(LIKE_isbn)!''}" id="isbn" />
							</span> 
							<span>
								<font>题名：</font>
								<input name="search_LIKE_title" type="text" value="${(LIKE_title)!''}" />
							</span> 
							<span>
								<font>著者：</font>
								<input name="search_LIKE_author" type="text" value="${(LIKE_author)!''}" />
							</span> 
							<span>
								<font>分类号：</font>
								<input name="search_EQ_classification" type="text" value="${EQ_classification!'' }" />
							</span> 
							<span>
								<font>出版社：</font>
								<input name="search_LIKE_press" type="text" value="${(LIKE_press)!''}" />
							</span> 
							<span class="search_button">
								<input name=""  type="submit" value="查询" class="btn_orange" />
							</span>
							<span class="search_button" onclick="exportExcel();" >
								<input name="" type="button" value="导出Excel" class="btn_orange" />
							</span>
						</div>
					</div>
					<div class="list_table_title">
						<h3>电子书订购目录</h3>
						<ul>
							<li><span class="btn_left"></span>
								<a href="" class="btn btn_confirm">订购</a>
								<span class="btn_right"></span>
							</li>
							<li>
								<font></font>
							</li>

							<li><span class="btn_left"></span>
								<a href="javascript:deleteDate('${base}/teacher/batch/deleteBookApply');" class="btn btn_delete">删除</a>
								<span class="btn_right"></span>
							</li>
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
									<th width="15%">副本数</th>

								</tr>
							</thead>
							<tbody>
								[#if (page.list)??] [#list page.list as data]
								<tr onclick="checkedTr(this);">
									<td width="2%" align="center" bgcolor="#f9f9f9"><input type="hidden"  value="${data.bookBatchId }">&nbsp;</td>
									<td width="2%" align="right"><input name="ids" type="radio" class="input_none" id="id" value="${data.id }" form="form_ids"/></td>
									<td>${data.isbn }</td>
									<td>${data.classification }</td>
									<td>${data.title }</td>
									<td>${data.author }</td>
									<td>${data.press }</td>
									<td>${data.publicationDate }</td>
									<td>${data.price }</td>
									<td>
										<input class="min" name="" type="button" value="-" />
										<input class="text_box" id="text"  name="" type="text" value="${data.bookReplication }"  /> 
										<input class="add" name="" type="button" value="+" />
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
		<form action="" id="form_ids" hidden="hidden" method="post"></form>
	</body>

</html>