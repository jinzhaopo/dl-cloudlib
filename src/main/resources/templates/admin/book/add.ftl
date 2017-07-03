<!DOCTYPE>
<html>

	<head>
		[#include "/admin/include/head.htm"]
		<script type="text/javascript">
			function submitForm(obj) {
				$obj = $(obj);
				WD.disabledBtn($obj); // 禁用按钮
				if(!WD.check_null_add_notice($("#path"))) {
					WD.rmDisabledBtn($obj);
					return false;
				}
				if(!WD.check_null_add_notice($("#isbn"))) {
					WD.rmDisabledBtn($obj);
					return false;
				}
				
				if($("#batchId").val() == 0){
					$("#batchId_notice").html("请选择批次*");
					return false;
				}
				if(!WD.check_null_add_notice($("#title"))) {
					WD.rmDisabledBtn($obj);
					return false;
				}
				if(!WD.check_null_add_notice($("#author"))) {
					WD.rmDisabledBtn($obj);
					return false;
				}
				if(!WD.check_null_add_notice($("#press"))) {
					WD.rmDisabledBtn($obj);
					return false;
				}
				if(!WD.check_null_add_notice($("#publicationDate"))) {
					WD.rmDisabledBtn($obj);
					return false;
				}
				if(!WD.check_null_add_notice($("#classification"))) {
					WD.rmDisabledBtn($obj);
					return false;
				}
				$("#formId").submit();
				
			}
			
			function clearNoNum(obj){
				//先把非数字的都替换掉，除数字和.
				obj.value=obj.value.replace(/[^\d.]/g,"");
				//保证只有出现一个.而没有多个.
				obj.value=obj.value.replace(/\.{2,}/g,".");
				//必须保证第一个为数字而不是.
				obj.value=obj.value.replace(/^\./g,"");
				//保证.只出现一次，而不是出现两次以上
				obj.value=obj.value.replace(".","$#$").replace(/\./g,"").replace("$#$",".");
				//只能输入两位小数
				obj.value=obj.value.replace(/^(\-)*(\d+)\.(\d\d).*$/,'$1$2.$3');
			}
			
			
		</script>
	</head>

	<body>
		<article class="main">
			<div class="title">
				<section>
					<a href="javascript:history.go(-1);"><b class=icon-arrow-left-thick></b>返回</a>
					<a href="javascript:history.go(1);">向前<b class=icon-arrow-right-thick></b></a>
				</section>
				<span>当前位置：</span>
				<a href="#">电子书管理</a>
				<a href="#" class="on">电子书管理</a>
			</div>
			<div class="nav">添加电子书</div>
			<div class="pubFormTable">
				<form action="${base}/admin/book/add" method="post" id="formId" >
					
					<table cellpadding="0" cellspacing="0" border="0">
					    <tr>
							<td>文件路径</td>
							<td><input name="path" id="path"  onfocus="cleanNotice(this)" placeholder="请输入文件路径"/><span id="path_notice" class="field_notice">*</span></td>
						</tr>
						<tr>
							<td>ISBN:</td>
							<td><input name="isbn" id="isbn"  onfocus="cleanNotice(this)" placeholder="请输入ISBN" /><span id="isbn_notice" class="field_notice">*</span></td>
						</tr>
                        <tr>
							<td>批次名:</td>
							<td>
								<select name="batchId" id="batchId" onfocus="cleanNotice(this)">
									<option value="0">请选择批次</option>
									[#list batch as b]
										<option value="${b.id }">${b.name }</option>
									[/#list]
								</select> 
								<span id="batchId_notice" class="field_notice">*</span>
							</td>
						</tr>     
						<tr>
							<td>题名:</td>
							<td><input name="title" id="title" placeholder="请填写题名" /><span id="title_notice" class="field_notice">*</span>
							</td>
						</tr>
						
						<tr>
							<td>作者:</td>
							<td><input name="author" id="author" placeholder="请填写作者" /><span id="author_notice" class="field_notice">*</span>
							</td>
						</tr>
						
						<tr>
							<td>出版社:</td>
							<td><input name="press" id="press" placeholder="请填写出版社" /><span id="press_notice" class="field_notice">*</span>
							</td>
						</tr>
						
						<tr>
							<td>出版时间:</td>
							<td><input name="publicationDate" id="publicationDate" placeholder="请填写出版时间"  /><span id="publicationDate_notice" class="field_notice">*</span>
							</td>
						</tr>
						
						<tr>
							<td>分类号:</td>
							<td><input name="classification" id="classification" placeholder="请填写分类号"  /><span id="classification_notice" class="field_notice">*</span>
							</td>
						</tr>
						
						<tr>
							<td>启用:</td>
							<td>
								<input type="radio" class="radioClass" name="enable" value="true"  /> 是<br />
								<input type="radio" class="radioClass" name="enable" value="false"  checked="checked"   /> 否<br />
							</td>
						</tr>
						
						<tr>
							<td>上架:</td>
							<td>
								<input type="radio" class="radioClass" name="shelves" value="true" /> 是<br />
								<input type="radio" class="radioClass" name="shelves" value="false"  checked="checked"  /> 否<br />
							</td>
						</tr>
						<tr>
							<td>免费:</td>
							<td>
								<input type="radio" class="radioClass" name="free" value="true" /> 是<br />
								<input type="radio" class="radioClass" name="free" value="false"  checked="checked" /> 否<br />
							</td>
						</tr>
						
						<tr>
							<td>价格:</td>
							<td>
								<input type="text" id="aaa" name="price" onkeyup="clearNoNum(this)" onblur="clearNoNum(this)"/>
							</td>
						</tr>
						
						<tr>
							<td></td>
							<td>
								<button type="button" onclick="submitForm(this);">确 认</button>
								<button type="reset">重 置</button>
								<button type="button">返 回</button>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</article>
	</body>

</html>