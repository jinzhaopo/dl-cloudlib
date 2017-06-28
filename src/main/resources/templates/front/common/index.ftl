<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta property="wb:webmaster" content="af8b98fbe4698cac" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>云图书馆•云图数字图书馆</title>
		<link type="text/css" rel="stylesheet" href="${base}/front//css/yd_base.css" />
		<link type="text/css" rel="stylesheet" href="${base}/front/css/yd_index_other.css" />
		<script type="text/javascript" src="${base}/front/js/yd_win.js"></script>
		<script type="text/javascript" src="${base}/front/js/jquery-1.8.3.js"></script>

		<script>
			var _hmt = _hmt || [];
			(function() {
				var hm = document.createElement("script");
				hm.src = "//hm.baidu.com/hm.js?2cb70313e397e478740d394884fb0b8a";
				var s = document.getElementsByTagName("script")[0];
				s.parentNode.insertBefore(hm, s);
			})();
		</script>

		<SCRIPT LANGUAGE="javascript">
			function winSizer() {
				windowWidth = window.screen.availWidth;
				windowHeight = window.screen.availHeight;
				window.moveTo(0, 0);
				window.resizeTo(windowWidth, windowHeight);
			}

			var tmArray_dh = [
				{ lose_f: ".//images/dsb_index1101yyc_13.jpg", get_f: ".//images/dsb_index1125yyc_01.jpg" },
				{ lose_f: ".//images/dsb_index1101yyc_14.jpg", get_f: ".//images/dsb_index1125yyc_02.jpg" },
				{ lose_f: ".//images/dsb_index1101yyc_15.jpg", get_f: ".//images/dsb_index1125yyc_03.jpg" },
				{ lose_f: ".//images/dsb_index1101yyc_16.jpg", get_f: ".//images/dsb_index1125yyc_04.jpg" },
				{ lose_f: ".//images/dsb_index1101yyc_17.jpg", get_f: ".//images/dsb_index1125yyc_05.jpg" },
				{ lose_f: ".//images/dsb_index1101yyc_18.jpg", get_f: ".//images/dsb_index1125yyc_06.jpg" },
				{ lose_f: ".//images/dsb_index1101yyc_19.jpg", get_f: ".//images/dsb_index1125yyc_07.jpg" },
				{ lose_f: ".//images/dsb_index1101yyc_20.jpg", get_f: ".//images/dsb_index1125yyc_08.jpg" }

			];

			function CL(n) {

				for(i = 0; i < 8; i++) {

					if(i == n) {
						document.getElementById("tp00" + i).src = tmArray_dh[i].get_f;
						document.getElementById("ff").className = "show";
					} else {
						document.getElementById("tp00" + i).src = tmArray_dh[i].lose_f;

					}

				}

			}

			function CL1(n) {

				for(i = 0; i < 8; i++) {

					if(i == n) {
						document.getElementById("tp00" + i).src = tmArray_dh[i].get_f;
						document.getElementById("bc00" + i).className = "show";
						document.getElementById("top1").className = "hide";
						document.getElementById("ff").className = "show";
					} else {
						document.getElementById("tp00" + i).src = tmArray_dh[i].lose_f;
						document.getElementById("bc00" + i).className = "hide";
						document.getElementById("top1").className = "hide";

					}

				}

			}

			function fhsy(obj) {
				switch(obj) {
					case 0:
						document.getElementById("ff").className = "hide";
						break;
				}
			}

			menushow = 0;
			nowmenu = 0;

			function ShowMenu() {
				if(menushow == 0) {
					document.getElementById("srhmenu").className = "show";
					menushow = 1;
				} else {
					document.getElementById("srhmenu").className = "hide";
					menushow = 0;
				}

			}

			function IntoMenus(n) {
				document.getElementById("smenus" + n).className = "smenusc2";
			}

			function OutMenus(n) {
				if(n == nowmenu) {
					document.getElementById("smenus" + n).className = "smenusc1";
				} else {
					document.getElementById("smenus" + n).className = "smenusc0";
				}
			}

			function ClickMenus(n) {
				document.getElementById("sltmenu").innerHTML = document.getElementById("smenus" + n).innerHTML;
				document.getElementById("srhmenu").className = "hide";
				menushow = 0;
				document.getElementById("smenus" + nowmenu).className = "smenusc0";
				nowmenu = n;
				document.getElementById("smenus" + n).className = "smenusc1";
			}

			function submitf() {
				if(document.getElementById("ft").value == "") {
					alert("");
					return;
				} else {
					//alert(document.getElementById("slt").value);
					if(nowmenu == "0") {
						urlstr = "http://find.nlc.cn/search/doSearch?query=" + encodeURIComponent(document.getElementById("ft").value) + "&secQuery=&actualQuery=" + encodeURIComponent(document.getElementById("ft").value) + "&searchType=2&docType=%E5%85%A8%E9%83%A8&isGroup=isGroup&targetFieldLog=%E5%85%A8%E9%83%A8%E5%AD%97%E6%AE%B5&fromHome=true";
						window.open(urlstr);
					} else if(nowmenu == "1") {
						urlstr = encodeURI("http://opac.nlc.cn/F/?request=" + document.getElementById("ft").value + "&func=find-m&find_code=WRD&FIND_BASE=NLC01&FIND_BASE=NLC09");
						window.location.href = urlstr;

					} else if(nowmenu == "2") {
						urlstr = encodeURI("http://mylib.nlc.cn/web/guest/search/searchresult?singleLibList=0&subject=40283415347ed8bd013483174ef60002&CAT1_rel=and&CAT1_m=true&__checkbox_CAT1_m=true&CAT1_input=" + document.getElementById("ft").value);
						window.location.href = urlstr;

					} else if(nowmenu == "3") {
						urlstr = encodeURI("http://mylib.nlc.cn/web/guest/search/searchresult?singleLibList=0&subject=402834c3361e6e5001361ee3299c0045&TITLE_rel=and&TITLE_m=true&__checkbox_TITLE_m=true&TITLE_input=" + document.getElementById("ft").value);
						window.location.href = urlstr;
					} else if(nowmenu == "4") {
						urlstr = encodeURI("http://202.106.125.42:8080/search/search?channelid=154615&templet=nlc_outline.jsp&token=1.1328063976107.41&searchword=" + document.getElementById("ft").value);
						window.location.href = urlstr;
					}
				}

			}

			function keyact() {
				if(window.event.keyCode == 13) {
					submitf();
				}
			}
		</script>

		<style type="text/css">
			<!-- #lovexin12 {
				width: 36px;
				height: 162px;
			}
			
			#ft {
				background: url(./zy_120313mai_07.jpg);
			}
			
			.a-lan {
				color: #05576e;
				text-decoration: none;
			}
			
			.a-lan:hover {
				color: #05576e;
				text-decoration: underline;
			}
			
			.a-fhsy {
				color: #18657b;
				text-decoration: none;
			}
			
			.a-fhsy:hover {
				color: #18657b;
				text-decoration: none;
			}
			
			-->
		</style>
		<style type="text/css">
			#msg_win {
				position: absolute;
				right: -2px;
				display: none;
				overflow: hidden;
				z-index: 99;
				width: 255px;
				font-size: 12px;
				margin: 0px;
			}
			
			#msg_win .icos {
				position: absolute;
				top: 2px;
				*top: 0px;
				right: 2px;
				z-index: 9;
			}
			
			.icos a {
				float: left;
				color: #FFFFFF;
				margin: 1px;
				text-align: center;
				font-weight: bold;
				width: 14px;
				height: 22px;
				line-height: 22px;
				padding: 1px;
				text-decoration: none;
				font-family: webdings;
			}
			
			.icos a:hover {
				color: #FFFFFF;
			}
			
			#msg_title {
				height: 24px;
				line-height: 24px;
			}
			
			#msg_content {
				margin: 5px;
				margin-right: 17px;
				width: 255px;
				overflow: hidden;
			}
			
			#uboxstyle .select_box {
				width: 100px;
				height: 27px;
			}
			
			#uboxstyle div.tag_select {
				display: block;
				color: #000;
				width: 80px;
				height: 27px;
				background: transparent url(.//images/ubox-select.jpg) no-repeat 0 0;
				padding: 0 10px;
				line-height: 27px;
			}
			
			#uboxstyle div.tag_select_hover {
				display: block;
				color: #000;
				width: 80px;
				height: 27px;
				background: transparent url(.//images/ubox-select.jpg) no-repeat 0 -27px;
				padding: 0 10px;
				line-height: 27px;
			}
			
			#uboxstyle div.tag_select_open {
				display: block;
				color: #000;
				width: 80px;
				height: 27px;
				background: transparent url(.//images/ubox-select.jpg) no-repeat 0 -54px;
				padding: 0 10px;
				line-height: 27px;
			}
			
			#uboxstyle ul.tag_options {
				position: absolute;
				padding: 0;
				margin: 0;
				list-style: none;
				background: transparent url(.//images/ubox-select.jpg) no-repeat right bottom;
				width: 100px;
				padding: 0 0 5px;
				margin: 0;
			}
			
			#uboxstyle ul.tag_options li {
				background: transparent url(.//images/ubox-select.jpg) repeat-y -100px 0;
				display: block;
				width: 80px;
				padding: 0 10px;
				height: 24px;
				text-decoration: none;
				line-height: 24px;
				color: #000;
			}
			
			#uboxstyle ul.tag_options li.open_hover {
				background: transparent url(.//images/ubox-select.jpg) no-repeat 0 -81px;
				color: #fff
			}
			
			#uboxstyle ul.tag_options li.open_selected {
				background: transparent url(.//images/ubox-select.jpg) no-repeat 0 -105px;
				color: #fff
			}
			
			#srhmenu {
				width: 100px;
				height: 130px;
				position: relative;
				left: 328px;
				top: 27px;
				z-index: 100;
			}
			
			.smenusc1 {
				background: url(images/20121130_lx_nlcindex_menu_04.png);
				color: #FFFFFF;
				padding-left: 12px;
				cursor: pointer;
			}
			
			.smenusc0 {
				background: url(images/20121130_lx_nlcindex_menu_02.png);
				color: #000000;
				padding-left: 12px;
				cursor: pointer;
			}
			
			.smenusc2 {
				background: url(images/20121130_lx_nlcindex_menu_05.png);
				color: #FFFFFF;
				padding-left: 12px;
				cursor: pointer;
			}
		</style>
	</head>

	<body onLoad="winSizer();" leftmargin="0" topmargin="0" onkeydown="keyact();">
		<table align="center" width="1024" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="147" valign="top">
					<table width="1024" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="112" valign="top" background="./images/dsb_index1101yyc_01new.jpg" style="background-repeat:no-repeat;">
								<table width="836" border="0" align="center" cellpadding="0" cellspacing="0">
									<tr>
										<td colspan="2" height="102" valign="bottom">
											<div align="right">
												<table width="836" border="0" cellspacing="0" cellpadding="0" height="61">
													<tr>
														<td width="661"></td>
														<td width="120" valign="top" align="right">
															<table width="120" border="0" cellspacing="0" cellpadding="0">
																<tr>
																	<td valign="top" align="right">
																		<table width="109" height="35" border="0" cellspacing="0" cellpadding="0">
																			<tr>
																				<td valign="bottom" width="33">
																					<a href="http://weibo.com/nationallibrary" target="_blank"><img src="./images/wxindex_20140424yyc_04.jpg" /></a>
																				</td>
																				<td width="5"></td>
																				<td valign="bottom" width="33">
																					<a href="http://t.qq.com/chnlibrary" target="_blank"><img src="./images/wxindex_20140424yyc_03.jpg" /></a>
																				</td>
																				<td width="5"></td>
																				<td valign="bottom" width="33">
																					<a href="./weixin/201404/t20140424_84072.htm" target="_blank"><img src="./images/wxindex_20140424yyc_02.jpg" /></a>
																				</td>
																			</tr>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td height="4"></td>
																</tr>
																<tr>
																	<td valign="top" align="right">
																		<a href="http://www.nlc.cn/newen/" target="_blank"><img src="./images/dsb_index1115yf_01.jpg" width="56" height="22" /></a>
																		<a href="./dsb_footer/rss/" target="_blank"><img src="./images/dsb_index1115yf_02.jpg" width="53" height="22" /></a>
																	</td>
																</tr>
															</table>
														</td>
														<td width="65" valign="top" align="right"><img src="./images/wxindex_20140424yyc_01.jpg" /></td>
													</tr>
												</table>
											</div>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td height="35" valign="top" background="./images/dsb_index1101yyc_80.jpg">
								<table width="836" height="35" border="0" align="center" cellpadding="0" cellspacing="0">
									<tr>
										<td width="9"><img src="./images/dsb_index1101yyc_03.jpg" /></td>
										<td width="819" valign="top" background="./images/dsb_index1101yyc_79.jpg">
											<table width="819" height="35" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td width="30"></td>
													<td width="77" valign="top">
														<table width="77" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td height="6"></td>
															</tr>
															<tr>
																<td valign="top"><img src="./images/dsb_extra0104yyc_10.jpg" /></td>
															</tr>
															<tr>
																<td valign="top"><img src="./images/dsb_extra0104yyc_11.jpg" /></td>
															</tr>
														</table>
													</td>
													<td width="5"></td>
													<td valign="top" width="77">
														<table width="77" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td height="6"></td>
															</tr>
															<tr>
																<td valign="top">
																	<a href="/index_zt_3339.htm"><img src="./images/dsb_index1101yyc_75.jpg" border="0" /></a>
																</td>
															</tr>
															<tr>
																<td valign="top"></td>
															</tr>
														</table>
													</td>
													<td width="5"></td>
													<td valign="top" width="77">
														<table width="77" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td height="6"></td>
															</tr>
															<tr>
																<td valign="top">
																	<a href="/index_zx_3342.htm"><img src="./images/dsb_index1101yyc_76.jpg" border="0" /></a>
																</td>
															</tr>
															<tr>
																<td valign="top"></td>
															</tr>
														</table>
													</td>
													<td width="24"></td>
													<td valign="top" width="106">
														<table width="106" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td height="6"></td>
															</tr>
															<tr>
																<td valign="top">
																	<a href="http://www.nlc.cn/nmcb/"><img src="./images/dsb_index150414yyc_01.jpg" border="0" /></a>
																</td>
															</tr>
															<tr>
																<td valign="top"></td>
															</tr>
														</table>
													</td>
													<td width="34"></td>
													<td width="384" background="./images/dsb_index1101yyc_05.jpg" style="background-repeat:no-repeat;" align="right" class="fs14p cf fwb">
														<script src="${base}/front/js/yd_nongli.js" type="text/javascript" language="javascript"></script>
													</td>
												</tr>
											</table>
										</td>
										<td width="8"><img src="./images/dsb_index1101yyc_04.jpg" /></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<table align="center" width="1024" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td valign="top" background="./images/dsb_index1101yyc_70.jpg" style="background-repeat:repeat-y;">
					<table align="center" width="1024" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td valign="top">
								<table width="1024" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td valign="top" width="1024">
											<table width="1024" align="center" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td width="94" align="left" valign="top">
														<!--对联广告-->
													</td>
													<td width="6"></td>
													<td width="824" valign="top">
														<table width="825" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td valign="top">
																	<table width="825" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="824" valign="top" bgcolor="#FFFFFF"><iframe src="${base}/shuffling" width="825" height="257" frameborder="0" scrolling="no"></iframe></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td valign="top" align="left">
																	<table width="824" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td valign="bottom">
																				<!-- update start-->

																				<table width="824" height="126" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
																					<tr>
																						<td background="./images/20121130_lx_nlcindex_01.jpg" style="background-repeat:no-repeat" width="666" height="126" align="left" valign="top">
																							<table cellpadding="0" cellspacing="0" height="75" style="z-index:-1;">
																								<tr>
																									<td width="74" height="48"></td>
																								</tr>
																								<tr>
																									<td></td>
																									<td height="27">
																										<div id="srhout" style="position:relative; left:0px; top:0px; width:592px; height:78px;">
																											<table style="position:absolute; left:0px; top:0px;" width="517" height="27" border="0" cellpadding="0" cellspacing="0">
																												<tr>
																													<td><img src="./images/20121130_lx_nlcindex_01_03_.jpg" width="5" height="27" alt /></td>
																													<td background="./images/20121130_lx_nlcindex_01_-02.jpg" width="4" height="27"></td>
																													<td background="./images/20121130_lx_nlcindex_01_-02.jpg" width="307" height="27" style="font-size:12px;" valign="middle">
																														<table cellpadding="0" cellspacing="0">
																															<tr>
																																<td height="5"></td>
																															</tr>
																															<tr>
																																<td><input id="ft" type="text" style=" border:none; width:307px; height:18px;" /> </td>
																															</tr>
																															<tr>
																																<td height="2"></td>
																															</tr>
																														</table>
																													</td>
																													<td background="./images/20121130_lx_nlcindex_01_-02.jpg" width="4" height="27"></td>
																													<td><img src="./images/20121130_lx_nlcindex_01_-03.jpg" width="5" height="27" alt /></td>
																													<td width="3"></td>
																													<td><img src="./images/20121130_lx_nlcindex_01_-05.jpg" width="5" height="27" alt /></td>
																													<td background="./images/20121130_lx_nlcindex_01_-02.jpg" width="3" height="27"></td>
																													<td background="./images/20121130_lx_nlcindex_01_-02.jpg" width="63" height="27" style="font-size:12px;" id="sltmenu">文津搜索 </td>
																													<td background="./images/20121130_lx_nlcindex_01_-02.jpg" width="1" height="27"></td>
																													<td><img src="./images/20121130_lx_nlcindex_01_-07.jpg" width="28" height="27" onclick="ShowMenu();" alt style="cursor:pointer" /></td>
																													<td width="3"></td>
																													<td><img src="./images/20121130_lx_nlcindex_01_-09.jpg" width="86" height="27" alt onclick="submitf();" style="cursor:pointer" /></td>
																												</tr>
																											</table>
																											<div id="srhmenu" class="hide">
																												<table cellpadding="0" cellspacing="0">
																													<tr>
																														<td><img src="./images/20121130_lx_nlcindex_menu_01.png" /></td>
																													</tr>
																													<tr>
																														<td background="./images/20121130_lx_nlcindex_menu_02.png" height="98">
																															<table cellpadding="0" cellspacing="0" width="100" style="font-size:12px;">
																																<tr>
																																	<td height="2"></td>
																																</tr>
																																<tr>
																																	<td id="smenus0" class="smenusc1" height="20" onclick="ClickMenus(0);" onmouseover="IntoMenus(0);" onmouseout="OutMenus(0)"> 文津搜索 </td>
																																</tr>
																																<tr>
																																	<td height="5"></td>
																																</tr>
																																<tr>
																																	<td id="smenus1" class="smenusc0" height="20" onclick="ClickMenus(1);" onmouseover="IntoMenus(1);" onmouseout="OutMenus(1)"> 馆藏目录 </td>
																																</tr>
																																<tr>
																																	<td height="5"></td>
																																</tr>
																																<tr>
																																	<td id="smenus2" class="smenusc0" height="20" onclick="ClickMenus(2);" onmouseover="IntoMenus(2);" onmouseout="OutMenus(2)"> 特色资源 </td>
																																</tr>
																																<tr>
																																	<td height="5"></td>
																																</tr>
																																<tr>
																																	<td id="smenus3" class="smenusc0" height="20" onclick="ClickMenus(3);" onmouseover="IntoMenus(3);" onmouseout="OutMenus(3)"> 地方馆资源 </td>
																																</tr>
																																<tr>
																																	<td height="5"></td>
																																</tr>
																																<tr>
																																	<td id="smenus4" class="smenusc0" height="20" onclick="ClickMenus(4);" onmouseover="IntoMenus(4);" onmouseout="OutMenus(4)"> 站内搜索 </td>
																																</tr>
																															</table>
																														</td>
																													</tr>
																													<tr>
																														<td><img src="./images/20121130_lx_nlcindex_menu_03.png" height="7" /></td>
																													</tr>
																												</table>
																											</div>
																										</div>
																									</td>
																								</tr>
																							</table>
																						</td>
																						<td width="10" height="126"> </td>
																						<td width="148" height="126" valign="top">
																							<table width="148" height="125" border="0" cellpadding="0" cellspacing="0">
																								<tr>
																									<td width="148" height="10"> </td>
																								</tr>
																								<tr>
																									<td>
																										<a href="http://mylib.nlc.cn/web/guest/reader_login?redirect=/web/guest/home" target="_blank"><img src="./images/20121130_lx_03_02etc1.jpg" alt width="148" height="25" border="0" /></a>
																									</td>
																								</tr>
																								<tr>
																									<td align="right">
																										<a href="http://opac.nlc.cn/F/B2LYQVUJH7V1LX1Q879MVTBI6FSA3XR8QTFMLLTCE1I6DSNA8G-84640?func=file&file_name=login-session" target="_blank"><img src="./images/20131101_yyc_01_etc.jpg" alt width="148" height="27" border="0" /></a>
																									</td>
																								</tr>
																								<tr>
																									<td align="right">
																										<a href="http://dportal.nlc.cn:8332/zylb/zylb.htm" target="_blank"><img src="./images/20121130_lx_nlcindex_03_04.jpg" alt width="133" height="24" border="0" /></a>
																									</td>
																								</tr>
																								<tr>
																									<td align="right">
																										<a href="http://www.nlc.cn/dsb_zyyfw/wdtsg/wszxt/" target="_blank"><img src="./images/20121130_lx_nlcindex_03_05.jpg" alt width="133" height="23" border="0" /></a>
																									</td>
																								</tr>
																								<tr>
																									<td width="133" height="10"> </td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																				</table>

																				<!--update end-->

																			</td>
																		</tr>

																		<tr>
																			<td height="1" bgcolor="#e3e6e8"></td>
																		</tr>

																		<tr>
																			<td valign="top" bgcolor="#FFFFFF">
																				<table width="824" border="0" cellspacing="0" cellpadding="0">

																					<tr>
																						<td height="21" align="left" valign="top">
																							<A name="M1"></A>
																							<div id="ff" class="hide">
																								<table width="110" border="0" cellspacing="0" cellpadding="0">
																									<tr>

																										<td height="21" align="left" valign="middle" background="./images/shouye_120326mak_01.jpg" style="color:#18657b;">　　&nbsp;
																											<a href="http://www.nlc.cn/" class="a-fhsy" onclick="fhsy(0)">返回首页</a>
																										</td>
																									</tr>
																								</table>
																							</div>
																						</td>
																					</tr>
																					<tr>
																						<td valign="top">
																							<table width="824" border="0" cellspacing="0" cellpadding="0">
																								<tr>
																									<td width="25"></td>
																									<td width="772" valign="top">
																										<table width="772" border="0" cellspacing="0" cellpadding="0">
																											<tr>
																												<td align="center">
																													<table width="772" border="0" cellspacing="0" cellpadding="0">
																														<tr>
																															<td width="90" height="119" align="center" valign="middle" onmousemove="CL(0)">
																																<a href="http://www.nlc.cn/dsb_zyyfw/ts/tszyk/" target="_blank"><img id="tp000" src="./images/dsb_index1101yyc_13.jpg" onclick="CL1(0)" border="0" /></a>
																															</td>
																															<td></td>

																															<td width="90" height="119" align="center" valign="middle" onmousemove="CL(1)">
																																<a href="http://www.nlc.cn/dsb_zyyfw/qk/qkzyk/" target="_blank"><img id="tp001" src="./images/dsb_index1101yyc_14.jpg" onclick="CL1(1)" border="0" /></a>
																															</td>
																															<td></td>
																															<td width="90" height="119" align="center" valign="middle" onmousemove="CL(2)">
																																<a href="http://www.nlc.cn/dsb_zyyfw/bz/bzzyk/" target="_blank"><img id="tp002" src="./images/dsb_index1101yyc_15.jpg" onclick="CL1(2)" border="0" /></a>
																															</td>
																															<td></td>
																															<td width="90" height="119" align="center" valign="middle" onmousemove="CL(3)">
																																<a href="http://www.nlc.cn/dsb_zyyfw/lw/lwzyk/" target="_blank"><img id="tp003" src="./images/dsb_index1101yyc_16.jpg" onclick="CL1(3)" border="0" /></a>
																															</td>
																															<td></td>

																															<td width="90" height="119" align="center" valign="middle" onmousemove="CL(4)">
																																<a href="http://www.nlc.cn/dsb_zyyfw/gj/gjzyk/" target="_blank"><img id="tp004" src="./images/dsb_index1101yyc_17.jpg" onclick="CL1(4)" border="0" /></a>
																															</td>
																															<td></td>
																															<td width="90" height="119" align="center" valign="middle" onmousemove="CL(5)">
																																<a href="./dsb_zyyfw/sytc/yy/" target="_blank"><img id="tp005" src="./images/dsb_index1101yyc_18.jpg" onclick="CL1(5)" border /></a>
																															</td>
																															<td></td>
																															<td width="90" height="119" align="center" valign="middle" onmousemove="CL(6)">
																																<a href="./dsb_zyyfw/sytc/sp/" target="_blank"><img id="tp006" src="./images/dsb_index1101yyc_19.jpg" onclick="CL1(6)" border="0" /></a>
																															</td>
																															<td></td>
																															<td width="90" height="119" align="center" valign="middle" onmousemove="CL(7)">
																																<a href="./dsb_zyyfw/sytc/sw/" target="_blank"><img id="tp007" src="./images/dsb_index1101yyc_20.jpg" onclick="CL1(7)" border="0" /></a>
																															</td>
																														</tr>
																													</table>
																												</td>
																											</tr>
																										</table>
																									</td>
																									<td width="27"></td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td valign="top">
																				<div id="top1" class="show">

																					<table width="824" border="0" cellspacing="0" cellpadding="0">
																						<tr>
																							<td width="213" height="453" align="right" valign="top" background="./images/zy_120313mai_01.jpg">
																								<table width="200" border="0" cellspacing="0" cellpadding="0">
																									<tr>
																										<td height="140" colspan="2">&nbsp;</td>
																									</tr>
																									<tr>
																										<td colspan="2" align="left" valign="top" style="line-height:16px; font-size:12px;">
																											<img src="./images/2017syetc_170112yyc_01.jpg" usemap="#Map" border="0" />
																										</td>
																									</tr>
																									<tr>
																										<td width="161" align="right" valign="middle" style="font-size:12px;">
																											<a class="a-lan" href="./dsb_zyyfw/wdtsg/dzzn/dsb_kgsj/" target="_blank">更多>></a>
																										</td>
																										<td width="31" align="right" valign="middle" style="font-size:12px;">&nbsp;</td>
																									</tr>

																									<tr>
																										<td colspan="2" align="left" valign="top" style="color:#05576e; line-height:20px; padding-top:12px;">
																											<a href="http://www.nlc.cn/newhjzx/" target="_blank"><img src="./dsb_zyyfw/syfj/201203/W020120327554277384670.jpg" /></a>
																										</td>
																									</tr>
																									<tr>
																										<td colspan="2" height="3"></td>
																									</tr>
																									<tr>
																										<td colspan="2" align="left" valign="top">
																											<a href="http://www.nlc.cn/dsb_zyyfw/wdtsg/yjjy/" target="_blank"><img src="./dsb_zyyfw/syfj/201203/W020120327554895770589.jpg" /></a>
																										</td>
																									</tr>
																								</table>
																							</td>
																							<td width="397" align="left" valign="top">
																								<table width="397" border="0" cellspacing="0" cellpadding="0">
																									<tr>
																										<td height="224" align="center" valign="top" background="./images/zy_120313mai_02.jpg">
																											<table width="94%" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td height="143">&nbsp;</td>
																													<td>&nbsp;</td>
																													<td>&nbsp;</td>
																													<td>&nbsp;</td>
																													<td>&nbsp;</td>
																												</tr>

																												<tr>
																													<td height="28" align="left" valign="middle">
																														<a href="http://www.nlc.cn/newkyck/kyfw/201011/t20101122_11696.htm" target="_blank"><img src="./dsb_zyyfw/fwtj/201203/W020120314335286742017.jpg" /></a>
																													</td>
																													<td align="left" valign="middle">
																														<a href="http://www.nlc.cn/newkyck/kyfw/201011/t20101122_11692.htm" target="_blank"><img src="./dsb_zyyfw/fwtj/201203/W020120314336435386730.jpg" /></a>
																													</td>
																													<td align="left" valign="middle">
																														<a href="http://www.nlc.cn/newkyck/kyfw/201104/t20110411_40390.htm" target="_blank"><img src="./dsb_zyyfw/fwtj/201203/W020120314341183114601.jpg" /></a>
																													</td>
																													<td align="left" valign="middle">
																														<a href="http://www.nlc.cn/newkyck/kyfw/201011/t20101122_11693.htm" target="_blank"><img src="./dsb_zyyfw/fwtj/201203/W020150204588798753299.jpg" alt="1.jpg" /></a>
																													</td>
																													<td align="left" valign="middle">
																														<a href="http://www.nlc.cn/newkyck/kyfw/201106/t20110614_44208.htm" target="_blank"><img src="./dsb_zyyfw/fwtj/201203/W020120314344731982112.jpg" /></a>
																													</td>
																												</tr>

																												<tr>
																													<td height="28" align="left" valign="middle">
																														<a href="http://www.nlc.cn/newkyck/kyfw/201011/t20101122_11697.htm" target="_blank"><img src="./dsb_zyyfw/fwtj/201203/W020120314345563315672.jpg" /></a>
																													</td>
																													<td align="left" valign="middle">
																														<a href="http://www.nlc.cn/newkyck/kyfw/201011/t20101122_11695.htm" target="_blank"><img src="./dsb_zyyfw/fwtj/201203/W020120314345954877196.jpg" /></a>
																													</td>
																													<td align="left" valign="middle">
																														<a href="http://www.nlc.cn/newkyck/kyfw/201011/t20101122_11694.htm" target="_blank"><img src="./dsb_zyyfw/fwtj/201203/W020120314346170005241.jpg" /></a>
																													</td>
																													<td align="left" valign="middle">
																														<a href="http://www.nlc.cn/newqyzx/" target="_blank"><img src="./dsb_zyyfw/fwtj/201207/W020120726322025546451.png" /></a>
																													</td>
																													<td align="left" valign="middle">
																														<a href="http://mobile.nlc.cn/" target="_blank"><img src="./dsb_zyyfw/fwtj/201207/W020120726323044704631.png" /></a>
																													</td>
																												</tr>

																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td height="229" align="left" valign="top" background="./images/zy_120313mai_03.jpg">
																											<table width="94%" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td width="63%" height="75">&nbsp;</td>
																													<td width="37%">&nbsp;</td>
																												</tr>
																												<tr>
																													<td align="right" valign="top">
																														<table width="89%" border="0" cellspacing="0" cellpadding="0">
																															<tr>
																																<td height="30" align="left" valign="middle">
																																	<a href="http://www.nlc.cn/pcab/" target="_blank"><img src="./dsb_zyyfw/zdxm/zhgjbhjh/201203/W020120316385538286908.jpg" /></a>
																																</td>
																															</tr>
																															<tr>
																																<td height="30" align="left" valign="middle">
																																	<a href="http://www.ndlib.cn/" target="_blank"><img src="./dsb_zyyfw/zdxm/sztsgtggc/201203/W020120314530847766247.jpg" /></a>
																																</td>
																															</tr>
																															<tr>
																																<td height="30" align="left" valign="middle">
																																	<a href="http://www.nlc.cn/newstgc/" target="_blank"><img src="./dsb_zyyfw/syfj/201203/W020120327563826999358.jpg" /></a>
																																</td>
																															</tr>
																														</table>
																													</td>
																													<td align="left" valign="top" style="line-height:22px;">
																														<table width="100%" border="0" cellspacing="0" cellpadding="0">
																															<tr>
																																<td height="30" align="left" valign="middle">
																																	<a href="http://mgwxbh.nlc.cn/" target="_blank"><img src="./dsb_zyyfw/zdxm/mgsqwxbh/201203/W020130325522352296761.png" /></a>
																																</td>
																															</tr>
																															<tr>
																																<td height="30" align="left" valign="middle">
																																	<a href="http://www.nlc.cn/cmptest/" target="_blank"><img src="./dsb_zyyfw/zdxm/zgjy/201203/W020130606672647403232.png" /></a>
																																</td>
																															</tr>
																															<tr>
																																<td height="30" align="left" valign="middle">
																																	<a href="http://open.nlc.cn/" target="_blank"><img src="./dsb_zyyfw/zdxm/gtgkk/201605/W020160506548384525954.jpg" alt="gtgkk.jpg" /></a>
																																</td>
																															</tr>
																														</table>
																													</td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																								</table>
																							</td>
																							<td width="214" align="left" valign="top" background="./images/zy_120313mai_04.jpg">
																								<table width="214" border="0" cellspacing="0" cellpadding="0">
																									<tr>
																										<td height="142">&nbsp;</td>
																									</tr>
																									<tr>
																										<td align="center">
																											<table width="90%" border="0" cellspacing="0" cellpadding="0">

																												<tr>
																													<td width="10%">&nbsp;</td>
																													<td height="25" align="left" valign="middle">
																														<a href="http://www.nlc.cn/dsb_zx/jzyg/" class='a-lan'>讲座</a>
																														</TRS_Appendix>
																													</td>
																													<td width="10%" align="left" valign="middle"><img src="./dsb_zyyfw/yg/201203/W020120313598406154126.jpg" /></td>
																													<td align="left" valign="middle">
																														<a href="http://www.nlc.cn/dsb_zx/pxyg/" class='a-lan'>培训</a>
																													</td>
																													<td width="10%" align="left" valign="middle"><img src="./dsb_zyyfw/yg/201203/W020120313599967405656.jpg" /></td>
																													<td height="25" align="left" valign="middle">
																														<a href="http://www.nlc.cn/dsb_zx/zlyg/" class='a-lan'>展览</a>
																														</TRS_Appendix>
																													</td>
																													<td width="10%" align="left" valign="middle"><img src="./dsb_zyyfw/yg/201203/W020120313600251013547.jpg" /></td>
																													<td align="left" valign="middle">
																														<a href="http://www.gtyszx.com/" class='a-lan'>演出</a>
																													</td>
																													<td width="10%" align="left" valign="middle"><img src="./dsb_zyyfw/yg/201203/W020120313600491884850.jpg" /></td>
																												</tr>

																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td height="5"></td>
																									</tr>
																									<tr>
																										<td align="right"><img src="./images/exindex_0906yyc_01.jpg" /></td>
																									</tr>
																									<tr>
																										<td height="5"></td>
																									</tr>
																									<tr>
																										<td align="center" valign="top" style>
																											<!--
          <a href="./dzpx/dzpx/" target="_blank"><img src="./dzpx/201306/W020150317387265522788.jpg" alt="未标题-1.jpg"/></a>
          
		<br />-->
																											<a href="http://vod.nlc.cn/" target="_blank"><img src="./dsb_zyyfw/ts/dsbzxjz/201111/W020150317387090184763.jpg" alt="未标题-2.jpg" /></a>

																											<br />
																											<a href="./dsb_zyyfw/5dzxzl/" target="_blank"><img src="./dsb_zyyfw/5dzxzl/201202/W020150317386891431981.jpg" alt="未标题-3.jpg" /></a>
																											<br />
																											<a href="http://www.gtyszx.com/" target="_blank"><img src="./dsb_zyyfw/wyyc/201502/W020150211575711726135.jpg" alt="未标题-4.jpg" /></a>
																										</td>
																									</tr>
																								</table>
																							</td>
																						</tr>
																					</table>
																				</div>

																				<div id="bc000" class="hide">
																					<table width="824" bgcolor="#ffffff" border="0" cellspacing="0" cellpadding="0">
																						<tr>
																							<td width="215" valign="top" background="./images/dsb_ylsjs120131mak_01.jpg" style="background-repeat:no-repeat;">
																								<table width="215" border="0" cellspacing="0" cellpadding="0">
																									<tr>
																										<td width="49"></td>
																										<td width="166" valign="top">
																											<table width="166" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td height="170" align="left" valign="top">
																														<table width="100%" border="0" cellspacing="0" cellpadding="0">
																															<tr>
																																<td height="110"></td>
																															</tr>
																															<tr>
																																<td align="left" valign="top">
																																	<a href="http://www.nlc.cn/dsb_zyyfw/wdtsg/dzzn/" target="_blank"><img src="./images/dsb_dzzn120131mak_01.jpg" border="0" /></a>
																																</td>
																															</tr>
																														</table>
																													</td>
																												</tr>

																												<tr>
																													<td valign="top">
																														<a href="http://www.nlc.cn/dsb_zyyfw/wdtsg/dzzn/dsb_gtfw/dsb_afwbjyd/dsb_bq/index.htm#zwtsq" target="_blank"><img src="./dsb_zyyfw/ts/ylsjs/201111/W020111114323121957572.jpg" /></a>
																													</td>
																												</tr>
																												<tr>
																													<td height="12"></td>
																												</tr>

																												<tr>
																													<td valign="top">
																														<a href="http://www.nlc.cn/dsb_zyyfw/wdtsg/dzzn/dsb_gtfw/dsb_afwbjyd/dsb_bq/index.htm#jdtsq" target="_blank"><img src="./dsb_zyyfw/ts/ylsjs/201111/W020120331537079757864.jpg" /></a>
																													</td>
																												</tr>
																												<tr>
																													<td height="12"></td>
																												</tr>

																												<tr>
																													<td valign="top">
																														<a href="http://www.nlc.cn/dsb_zyyfw/wdtsg/dzzn/dsb_gtfw/dsb_afwbjyd/dsb_bq/index.htm#gjs" target="_blank"><img src="./dsb_zyyfw/ts/ylsjs/201203/W020120331530758745850.jpg" /></a>
																													</td>
																												</tr>
																												<tr>
																													<td height="12"></td>
																												</tr>

																												<tr>
																													<td valign="top">
																														<a href="http://www.nlc.cn/dsb_zyyfw/wdtsg/dzzn/dsb_gtfw/dsb_afwbjyd/dsb_bq/index.htm#jczwyls" target="_blank"><img src="./dsb_zyyfw/ts/ylsjs/201111/W020111114324089314981.jpg" /></a>
																													</td>
																												</tr>
																												<tr>
																													<td height="12"></td>
																												</tr>

																												<tr>
																													<td valign="top">
																														<a href="http://www.nlc.cn/dsb_zyyfw/wdtsg/dzzn/dsb_gtfw/dsb_afwbjyd/dsb_bq/index.htm#bcbyls" target="_blank"><img src="./dsb_zyyfw/ts/ylsjs/201111/W020111114324321449631.jpg" /></a>
																													</td>
																												</tr>
																												<tr>
																													<td height="12"></td>
																												</tr>

																												<tr>
																													<td valign="top">
																														<a href="http://www.nlc.cn/dsb_zyyfw/wdtsg/dzzn/dsb_gtfw/dsb_afwbjyd/dsb_bq/index.htm#wwwxyls" target="_blank"><img src="./dsb_zyyfw/ts/ylsjs/201111/W020111114324651383742.jpg" /></a>
																													</td>
																												</tr>
																												<tr>
																													<td height="12"></td>
																												</tr>

																												<tr>
																													<td valign="top">
																														<a href="http://www.nlc.cn/dsb_zyyfw/wdtsg/dzzn/dsb_gtfw/dsb_afwbjyd/dsb_bq/index.htm#rbcbwwkyls" target="_blank"><img src="./dsb_zyyfw/ts/ylsjs/201111/W020111114324959488579.jpg" /></a>
																													</td>
																												</tr>
																												<tr>
																													<td height="12"></td>
																												</tr>

																												<tr>
																													<td valign="top">
																														<a href="http://www.nlc.cn/dsb_zyyfw/wdtsg/dzzn/dsb_gtfw/dsb_afwbjyd/dsb_bq/index.htm#tgawxyls" target="_blank"><img src="./dsb_zyyfw/ts/ylsjs/201111/W020120331537231546015.jpg" /></a>
																													</td>
																												</tr>
																												<tr>
																													<td height="12"></td>
																												</tr>

																												<tr>
																													<td valign="top">
																														<a href="http://www.nlc.cn/dsb_zyyfw/wdtsg/dzzn/dsb_gtfw/dsb_afwbjyd/dsb_bq/index.htm#zgnjyls" target="_blank"><img src="./dsb_zyyfw/ts/ylsjs/201203/W020120331531811750195.jpg" /></a>
																													</td>
																												</tr>
																												<tr>
																													<td height="12"></td>
																												</tr>

																											</table>
																										</td>
																									</tr>
																								</table>
																							</td>
																							<td width="392" valign="top" background="./images/dsb_index1101yyc_49.jpg" style="background-repeat:repeat-x;">
																								<table width="392" border="0" cellspacing="0" cellpadding="0">
																									<tr>
																										<td height="73"></td>
																									</tr>
																									<tr>
																										<td valign="top">
																											<table width="392" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td width="102"></td>
																													<td width="153" valign="top"><img src="./images/dsb_index1101yyc_46.jpg" /></td>
																													<td width="22"></td>
																													<td width="95" align="right" valign="bottom" class="dark-blue1">
																														<a href="./dsb_zyyfw/ts/tszyk/" class="dark-blue1" target="_blank"><img src="./images/dsb_gd120221mak_01.jpg" border="0" /></a>
																													</td>
																													<td width="20"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>

																									<tr>
																										<td height="18"></td>
																									</tr>
																									<tr>
																										<td valign="top">
																											<table width="392" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td width="19"></td>
																													<td width="357" valign="top">
																														<table width="357" border="0" cellspacing="0" cellpadding="0">

																															<tr>
																																<td width="123" valign="top">
																																	<a href="http://mylib.nlc.cn/web/guest/zhongwentushu" target="_blank"><img src="./dsb_zyyfw/ts/tszyk/201111/W020120104670306895784.jpg" /></a>
																																</td>
																																<td width="11"></td>
																																<td width="223" valign="top" class="dark-blue1 lh20p">该库包含图书56万多册，涉及各个学科，可以在线阅读。</td>
																															</tr>
																															<tr>
																																<td height="40"></td>
																																<td></td>
																																<td></td>
																															</tr>

																														</table>
																													</td>
																													<td width="16"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td height="2" align="center" background="./images/dsb_index1101yyc_47.jpg" style="background-repeat:no-repeat;"></td>
																									</tr>

																									<tr>
																										<td height="40"></td>
																									</tr>
																									<tr>
																										<td valign="top">
																											<table width="392" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td width="19"></td>
																													<td width="357" valign="top">
																														<table width="357" border="0" cellspacing="0" cellpadding="0">

																															<tr>
																																<td width="123" valign="top">
																																	<a href="http://mylib.nlc.cn/web/guest/minguotushu" target="_blank"><img src="./dsb_zyyfw/ts/tszyk/201111/W020120120409904005785.jpg" /></a>
																																</td>
																																<td width="11"></td>
																																<td width="223" valign="top" class="dark-blue1 lh20p">国家图书馆民国图书资源库现推出民国图书63000余种全文影像资源，并将不断更新，全文阅读器建议使用Acrobat Reader7.0（中文版）以上版本。</td>
																															</tr>
																															<tr>
																																<td height="30"></td>
																																<td></td>
																																<td></td>
																															</tr>

																														</table>
																													</td>
																													<td width="16"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>

																									<tr>

																										<td valign="top"></td>
																									</tr>
																									<tr>
																										<td width="392" valign="top" height="60"></td>
																									</tr>
																									<tr>
																										<td height="16"></td>
																									</tr>
																								</table>
																							</td>
																							<td width="217" valign="top" background="./images/dsb_extra0104yyc_3.jpg" style="background-repeat:no-repeat;">
																								<table width="217" border="0" cellspacing="0" cellpadding="0">
																									<tr>
																										<td height="128"></td>
																									</tr>
																									<tr>
																										<td height="20" valign="top">
																											<table width="217" height="20" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td width="38"></td>
																													<td width="179">
																														<a href="http://wenjin.nlc.cn/twelfth1/hjts2017/zhanshi2017.htm" target="_blank"><img src="./dsb_zyyfw/ts/wjtsj/201201/W020120327568378940986.jpg" /></a>
																													</td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td height="39"></td>
																									</tr>
																									<tr>

																										<td valign="top">
																											<table width="217" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td width="83"></td>
																													<td width="134" valign="top"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td valign="top">
																											<table width="217" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td width="53"></td>
																													<td width="149" valign="top">
																														<table width="149" border="0" cellspacing="0" cellpadding="0">
																															<tr>
																																<td valign="top">
																																	<table width="149" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td width="59"><img src="./dsb_zyyfw/ts/dsbsktj/201111/W020120330545943882723.jpg" /></td>
																																			<td width="10"></td>
																																			<td width="80" valign="top" style="padding-top:19px;">
																																				<a href="http://www.nlc.cn/newzxfw/sktj/" target="_blank"><img src="./dsb_zyyfw/ts/dsbsktj/201111/W020111230487913227782.jpg" /></a>
																																			</td>
																																		</tr>
																																	</table>
																																	<table width="149" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td height="15"></td>
																																		</tr>
																																	</table>

																																	<table width="149" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td width="59"><img src="./dsb_zyyfw/ts/dsbgjszx/201111/W020120330546152151044.jpg" /></td>
																																			<td width="10"></td>
																																			<td width="80" valign="top" style="padding-top:19px;">
																																				<a href="http://dportal.nlc.cn:8332/nlcdrss/gjs/gjs.htm" target="_blank"><img src="./dsb_zyyfw/ts/dsbgjszx/201111/W020111230488311183211.jpg" /></a>
																																			</td>
																																		</tr>
																																	</table>
																																	<table width="149" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td height="15"></td>
																																		</tr>
																																	</table>

																																	<table width="149" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td width="59"><img src="./dsb_zyyfw/ts/dsbydzg/201111/W020120330546354172048.jpg" /></td>
																																			<td width="10"></td>
																																			<td width="80" valign="top" style="padding-top:19px;">
																																				<a href="http://dportal.nlc.cn:8332/nlcdrss/ydzhg/ydzhg.htm" target="_blank"><img src="./dsb_zyyfw/ts/dsbydzg/201111/W020111230488758271164.jpg" /></a>
																																			</td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>
																															<tr>
																																<td height="4"></td>
																															</tr>
																														</table>
																													</td>
																													<td width="15"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td height="35"></td>

																									</tr>
																									<tr>
																										<td valign="top" style="padding-left:48px;">
																											<!--<a href="http://vod.nlc.cn/" target="_blank"><img src="./dsb_zyyfw/ts/dsbzxjz/201111/W020150317387090184763.jpg" alt="未标题-2.jpg"/></a><br /><a href="./dsb_zyyfw/5dzxzl/" target="_blank"><img src="./dsb_zyyfw/5dzxzl/201202/W020150317386891431981.jpg" alt="未标题-3.jpg"/></a>-->
																										</td>
																									</tr>
																								</table>
																							</td>
																						</tr>
																					</table>
																				</div>

																				<div id="bc001" class="hide">
																					<table width="824" bgcolor="#ffffff" border="0" cellspacing="0" cellpadding="0">
																						<tr>
																							<td width="210" height="420" valign="top" background="./images/dsb_extra1230yyc_19.jpg" style="background-repeat:no-repeat;">
																								<table width="210" border="0" cellspacing="0" cellpadding="0">
																									<tr>
																										<td width="42"></td>
																										<td width="168" valign="top">
																											<table width="168" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td height="141"></td>
																												</tr>

																												<tr>
																													<td valign="top">
																														<a href="http://www.nlc.cn/dsb_zyyfw/wdtsg/dzzn/dsb_gtfw/dsb_afwbjyd/dsb_bq/index.htm#zwqkq" target="_blank"><img src="./dsb_zyyfw/qk/qkylsjs/201111/W020111230508979288603.jpg" /></a>
																													</td>
																												</tr>
																												<tr>
																													<td height="28"></td>
																												</tr>

																												<tr>
																													<td valign="top">
																														<a href="http://www.nlc.cn/dsb_zyyfw/wdtsg/dzzn/dsb_gtfw/dsb_afwbjyd/dsb_bq/index.htm#wwwxyls" target="_blank"><img src="./dsb_zyyfw/qk/qkylsjs/201111/W020111230509203615906.jpg" /></a>
																													</td>
																												</tr>
																												<tr>
																													<td height="28"></td>
																												</tr>

																												<tr>
																													<td valign="top">
																														<a href="http://www.nlc.cn/dsb_zyyfw/wdtsg/dzzn/dsb_gtfw/dsb_afwbjyd/dsb_bq/index.htm#tgawxyls" target="_blank"><img src="./dsb_zyyfw/qk/qkylsjs/201111/W020111230509435122733.jpg" /></a>
																													</td>
																												</tr>
																												<tr>
																													<td height="28"></td>
																												</tr>

																											</table>
																										</td>
																									</tr>
																								</table>
																							</td>
																							<td width="397" valign="top" background="./images/dsb_index1125yyc_11.jpg" style="background-repeat:repeat-x;">
																								<table width="397" border="0" cellspacing="0" cellpadding="0">
																									<tr>
																										<td height="71"></td>
																									</tr>
																									<tr>
																										<td valign="top">
																											<table width="397" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td width="44"></td>
																													<td width="204" valign="top"><img src="./images/dsb_indexqk1128yyc_05.jpg" /></td>
																													<td width="34"></td>
																													<td width="98" align="right" valign="bottom" class="dark-blue1">
																														<a href="./dsb_zyyfw/qk/qkzyk/" class="dark-blue1" target="_blank"><img src="./images/dsb_gd120221mak_01.jpg" border="0" /></a>
																													</td>
																													<td width="17"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>

																									<tr>
																										<td height="18"></td>
																									</tr>
																									<tr>
																										<td valign="top">
																											<table width="397" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td width="18"></td>
																													<td width="357" valign="top">
																														<table width="357" border="0" cellspacing="0" cellpadding="0">

																															<tr>
																																<td width="135" valign="top">
																																	<a href="http://mylib.nlc.cn/web/guest/minguoqikan" target="_blank"><img src="./dsb_zyyfw/qk/qkzyk/201111/W020120120495065418817.png" /></a>
																																</td>
																																<td width="6"></td>
																																<td width="216" valign="top" class="dark-blue1 lh20p">是以馆藏民国期刊的缩微胶片数字化资料为基础建设的数据库，预计将在三年内完成近600万拍缩微胶片的数字转换。</td>
																															</tr>

																															<tr>
																																<td height="20"></td>
																																<td></td>
																																<td></td>
																															</tr>
																														</table>
																													</td>
																													<td width="16"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td height="2" align="center" background="./images/dsb_index1101yyc_47.jpg" style="background-repeat:no-repeat;"></td>
																									</tr>

																									<tr>
																										<td height="18"></td>
																									</tr>
																									<tr>
																										<td valign="top">
																											<table width="397" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td width="18"></td>
																													<td width="357" valign="top">
																														<table width="357" border="0" cellspacing="0" cellpadding="0">

																															<tr>
																																<td width="135" valign="top">
																																	<a href="http://epub.cnki.net/KNS/brief/result.aspx?dbprefix=CJFQ" target="_blank"><img src="./dsb_zyyfw/qk/qkzyk/201111/W020120120542819974375.png" /></a>
																																</td>
																																<td width="6"></td>
																																<td width="216" valign="top" class="dark-blue1 lh20p">该数据库以学术、技术、政策指导、高等科普及教育类期刊为主，内容覆盖自然科学、工程技术、农业、哲学、医学、人文社会科学等各个领域。截至2011年6月，收录国内学术期刊 7778种，包括创刊至今出版的学术期刊 4600余种，全文文献总量 3200多万篇。</td>
																															</tr>

																															<tr>
																																<td height="20"></td>
																																<td></td>
																																<td></td>
																															</tr>
																														</table>
																													</td>
																													<td width="16"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td valign="top"></td>
																									</tr>

																									<tr>
																										<td height="16"></td>
																									</tr>
																								</table>
																							</td>
																							<td width="217" valign="top" background="./images/dsb_extra1230yyc_26_x1.jpg" style="background-repeat:no-repeat;">
																								<table width="217" border="0" cellspacing="0" cellpadding="0">
																									<tr>
																										<td height="138"></td>
																									</tr>
																									<tr>
																										<td valign="top">
																											<table width="217" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td width="41"></td>
																													<td width="166" valign="top">

																														<table width="166" border="0" cellspacing="0" cellpadding="0">
																															<tr>
																																<td width="57"><img src="./dsb_zyyfw/qk/qkdzbkdh/201111/W020111128511045245210.jpg" /></td>
																																<td width="5"></td>
																																<td>
																																	<a href="http://192.168.180.130:8080/newspaper_navi/" target="_blank"><img src="./dsb_zyyfw/qk/qkdzbkdh/201111/W020111128511045403098.jpg" /></a>
																																</td>
																															</tr>
																														</table>
																														<table width="166" border="0" cellspacing="0" cellpadding="0">
																															<tr>
																																<td height="28"></td>
																															</tr>
																														</table>
																														<table width="166" border="0" cellspacing="0" cellpadding="0">
																															<tr>
																																<td width="57"><img src="./dsb_zyyfw/qk/qksktj/201111/W020111128511992647936.jpg" /></td>
																																<td width="5"></td>
																																<td>
																																	<a href="http://www.nlc.cn/newzxfw/sktj/" target="_blank"><img src="./dsb_zyyfw/qk/qksktj/201111/W020111128511992797874.jpg" /></a>
																																</td>
																															</tr>
																														</table>
																													</td>
																												</tr>
																												<tr>
																													<td height="5"></td>
																												</tr>
																											</table>
																										</td>
																										<td width="10"></td>
																									</tr>
																								</table>
																							</td>
																						</tr>
																					</table>
																				</div>

																				<div id="bc002" class="hide">
																					<table width="824" bgcolor="#ffffff" border="0" cellspacing="0" cellpadding="0">
																						<tr>
																							<td width="215" height="420" valign="top" background="./images/dsb_extra1230yyc_29.jpg" style="background-repeat:no-repeat;">
																								<table width="215" border="0" cellspacing="0" cellpadding="0">
																									<tr>
																										<td width="49"></td>
																										<td width="166" valign="top">
																											<table width="166" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td height="150"></td>
																												</tr>

																												<tr>
																													<td valign="top">
																														<a href="http://www.nlc.cn/dsb_zyyfw/wdtsg/dzzn/dsb_gtfw/dsb_afwbjyd/dsb_bq/index.htm#zwbzq" target="_blank"><img src="./dsb_zyyfw/bz/bzylsjs/201111/W020111230526881023870.jpg" /></a>
																													</td>
																												</tr>
																												<tr>
																													<td height="33"></td>
																												</tr>

																												<tr>
																													<td valign="top">
																														<a href="http://www.nlc.cn/dsb_zyyfw/wdtsg/dzzn/dsb_gtfw/dsb_afwbjyd/dsb_bq/index.htm#tgawxyls" target="_blank"><img src="./dsb_zyyfw/bz/bzylsjs/201111/W020111230527152467446.jpg" /></a>
																													</td>
																												</tr>
																												<tr>
																													<td height="33"></td>
																												</tr>

																											</table>
																										</td>
																									</tr>
																								</table>
																							</td>
																							<td width="392" valign="top" background="./images/dsb_index1125yyc_11.jpg" style="background-repeat:repeat-x;">
																								<table width="392" border="0" cellspacing="0" cellpadding="0">
																									<tr>
																										<td height="71"></td>
																									</tr>
																									<tr>
																										<td valign="top">
																											<table width="392" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td width="45"></td>
																													<td width="205" valign="top"><img src="./images/dsb_index1125yyc_10.jpg" /></td>
																													<td width="34"></td>
																													<td width="91" align="right" valign="bottom" class="dark-blue1">
																														<a href="./dsb_zyyfw/bz/bzzyk/" target="_blank" class="dark-blue1"><img src="./images/dsb_gd120221mak_01.jpg" border="0" /></a>
																													</td>
																													<td width="17"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>

																									<tr>
																										<td height="18"></td>
																									</tr>
																									<tr>
																										<td valign="top">
																											<table width="392" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td width="19"></td>
																													<td width="357" valign="top">
																														<table width="357" border="0" cellspacing="0" cellpadding="0">

																															<tr>
																																<td width="128" valign="top">
																																	<a href="http://newspaper.nlc.cn/" target="_blank"><img src="./dsb_zyyfw/bz/bzzyk/201111/W020120120531077152744.png" /></a>
																																</td>
																																<td width="6"></td>
																																<td valign="top" class="dark-blue1 lh20p">在线读报栏目收录了全国各地各大报纸的电子版内容，可每日奉上最新的报纸以供读者阅读。（仅限局域网访问）</td>
																															</tr>

																															<tr>
																																<td height="20"></td>
																																<td></td>
																																<td></td>
																															</tr>
																														</table>
																													</td>
																													<td width="16"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td height="2" align="center" background="./images/dsb_index1101yyc_47.jpg" style="background-repeat:no-repeat;"></td>
																									</tr>

																									<tr>
																										<td height="18"></td>
																									</tr>
																									<tr>
																										<td valign="top">
																											<table width="392" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td width="19"></td>
																													<td width="357" valign="top">
																														<table width="357" border="0" cellspacing="0" cellpadding="0">

																															<tr>
																																<td width="128" valign="top">
																																	<a href="http://202.106.125.15:8010/webpage_bz/webpage_CKXX/GNS-HomePage_b.htm" target="_blank"><img src="./dsb_zyyfw/bz/bzzyk/201111/W020120120521932688517.png" /></a>
																																</td>
																																<td width="6"></td>
																																<td valign="top" class="dark-blue1 lh20p">该数据库收录了参考消息1957年3月至2007年1月报纸原版、文字、图片、表格、广告信息的全文信息。（仅限局域网访问）</td>
																															</tr>

																															<tr>
																																<td height="20"></td>
																																<td></td>
																																<td></td>
																															</tr>
																														</table>
																													</td>
																													<td width="16"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td valign="top">&nbsp;</td>
																									</tr>
																									<tr>
																										<td height="16"></td>
																									</tr>
																								</table>
																							</td>
																							<td width="217" valign="top" background="./images/dsb_extra1230yyc_30.jpg" style="background-repeat:no-repeat;">
																								<table width="217" border="0" cellspacing="0" cellpadding="0">
																									<tr>
																										<td height="133"></td>
																									</tr>
																									<tr>
																										<td valign="top">
																											<table width="217" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td width="36"></td>
																													<td width="171" valign="top">
																														<table width="171" border="0" cellspacing="0" cellpadding="0">
																															<tr>

																																<td valign="top">
																																	<table width="171" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td width="55" align="center"><img src="./dsb_zyyfw/bz/szbzdcxm/201111/W020111125560321734680.jpg" /></td>
																																			<td width="4"></td>
																																			<td width="109">
																																				<a href="http://192.168.30.129/search/index.html" target="_blank"><img src="./dsb_zyyfw/bz/szbzdcxm/201111/W020111125560322045069.jpg" /></a>
																																			</td>
																																		</tr>
																																	</table>
																																	<table width="171" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td height="17"></td>
																																		</tr>
																																	</table>

																																	<table width="171" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td width="55"><img src="./dsb_zyyfw/bz/dzbkdh/201111/W020111128631582237592.jpg" /></td>

																																			<td width="4"></td>
																																			<td>
																																				<a href="http://192.168.180.130:8080/newspaper_navi/" target="_blank"><img src="./dsb_zyyfw/bz/dzbkdh/201111/W020111128631582380340.jpg" /></a>
																																			</td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>
																															<tr>
																																<td height="4"></td>
																															</tr>

																														</table>
																													</td>
																													<td width="10"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td height="45"></td>
																									</tr>
																								</table>
																							</td>
																						</tr>
																					</table>
																				</div>

																				<div id="bc003" class="hide">
																					<table width="824" bgcolor="#ffffff" border="0" cellspacing="0" cellpadding="0">
																						<tr>
																							<td width="216" height="590" valign="top" background="./images/dsb_indexgj1125yyc_01.jpg" style="background-repeat:no-repeat;">
																								<table width="216" border="0" cellspacing="0" cellpadding="0">
																									<tr>
																										<td width="28"></td>
																										<td width="188" valign="top">
																											<table width="188" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td height="98"></td>
																												</tr>
																												<tr>
																													<td valign="top" style="padding-left:15px;"><img src="./images/dsb_indexgj1125yyc_07.jpg" /></td>
																												</tr>
																												<tr>
																													<td height="35"></td>
																												</tr>
																												<tr>
																													<td height="15"></td>
																												</tr>
																												<tr>
																													<td valign="top">
																														<table width="188" border="0" cellspacing="0" cellpadding="0">

																															<tr>
																																<td valign="top"><img src="./dsb_zyyfw/lw/lwylsjs/201111/W020111126474595314693.jpg" /></td>
																															</tr>
																															<tr>
																																<td height="7"></td>
																															</tr>

																															<tr>
																																<td valign="top">
																																	<table width="188" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td width="158" valign="top" style="line-height:20px;" class="light-black1 fs12p"><span class="dark-blue2">地点：</span><br />
																																				<style type="text/css"></style>
																																				总馆北区四层北侧中</td>
																																			<td width="30"></td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>
																															<tr>
																																<td height="7"></td>
																															</tr>

																															<tr>
																																<td valign="top">
																																	<table width="188" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td width="158" valign="top" style="line-height:20px;" class="light-black1 fs12p"><span class="dark-blue2">馆藏范围：</span><br />
																																				<style type="text/css"></style>
																																				<style type="text/css"></style>本馆收藏的博士学位论文30余万种。</td>
																																			<td width="30"></td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>
																															<tr>
																																<td height="7"></td>
																															</tr>

																															<tr>
																																<td valign="top">
																																	<table width="188" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td width="158" valign="top" style="line-height:20px;" class="light-black1 fs12p"><span class="dark-blue2">开放时间：</span><br />
																																				<style type="text/css"></style>
																																				<style type="text/css"></style>周一到周五&nbsp;9:00-21:00（闭架文献网上预约时间：0:00-16:00）周日：9:00-17:00（闭架文献网上预约时间：0:00-16:00）</td>
																																			<td width="30"></td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>
																															<tr>
																																<td height="7"></td>
																															</tr>

																															<tr>
																																<td valign="top">
																																	<table width="188" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td width="158" valign="top" style="line-height:20px;" class="light-black1 fs12p"><span class="dark-blue2">联系方式：</span><br />
																																				<style type="text/css"></style>
																																				<style type="text/css"></style>（+86&nbsp;10）88545401</td>
																																			<td width="30"></td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>
																															<tr>
																																<td height="7"></td>
																															</tr>

																														</table>
																													</td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																								</table>
																							</td>
																							<td width="608" valign="top" background="./images/dsb_indexgj1125yyc_02.jpg" style="background-repeat:repeat-x;">
																								<table width="608" border="0" cellspacing="0" cellpadding="0">
																									<tr>
																										<td height="63"></td>
																									</tr>
																									<tr>
																										<td valign="top">
																											<table width="608" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td width="33"></td>
																													<td width="150" valign="top"><img src="./images/dsb_indexlw1126yyc_03.jpg" /></td>
																													<td width="45"></td>

																													<td width="380" valign="bottom" class="dark-blue1">
																														<a href="./dsb_zyyfw/lw/lwzyk/" target="_blank" class="dark-blue1"><img src="./images/dsb_gd120221mak_01.jpg" border="0" /></a>
																													</td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td height="10"></td>
																									</tr>

																									<tr>
																										<td valign="top">
																											<table width="608" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td height="9" valign="top" background="./images/dsb_indexgj1125yyc_03.jpg" style="background-repeat:no-repeat;"></td>
																												</tr>
																												<tr>
																													<td valign="top" background="./images/dsb_indexgj1125yyc_04.jpg" style="background-repeat:repeat-y;">
																														<table width="608" border="0" cellspacing="0" cellpadding="0">
																															<tr>
																																<td height="1"></td>
																															</tr>
																															<tr>
																																<td valign="top">
																																	<table width="608" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td width="30"></td>
																																			<td width="129" valign="top">
																																				<a href="http://mylib.nlc.cn/web/guest/boshilunwen" target="_blank"><img src="./dsb_zyyfw/lw/lwzyk/201111/W020120120538349298337.png" /></a>
																																			</td>
																																			<td width="14"></td>
																																			<td width="380" valign="top">
																																				<table width="380" border="0" cellspacing="0" cellpadding="0">
																																					<tr>
																																						<td height="5"></td>
																																					</tr>
																																					<tr>
																																						<td valign="top" class="fs12p lh20p light-black1">是以国家图书馆20多年来收藏的博士论文为基础建设的学位论文全文影像数据。目前博士论文全文影像资源库以书目数据、篇名数据、数字对象为内容，提供23万余种博士论文全文前24页的展示浏览。</td>
																																					</tr>
																																				</table>
																																			</td>
																																			<td></td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>

																															<tr>
																																<td height="1"></td>
																															</tr>
																														</table>
																													</td>
																												</tr>
																												<tr>
																													<td height="9" valign="top" background="./images/dsb_indexgj1125yyc_05.jpg" style="background-repeat:no-repeat;"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td height="10"></td>
																									</tr>

																									<tr>
																										<td valign="top">
																											<table width="608" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td height="9" valign="top" background="./images/dsb_indexgj1125yyc_03.jpg" style="background-repeat:no-repeat;"></td>
																												</tr>
																												<tr>
																													<td valign="top" background="./images/dsb_indexgj1125yyc_04.jpg" style="background-repeat:repeat-y;">
																														<table width="608" border="0" cellspacing="0" cellpadding="0">
																															<tr>
																																<td height="1"></td>
																															</tr>
																															<tr>
																																<td valign="top">
																																	<table width="608" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td width="30"></td>
																																			<td width="129" valign="top">
																																				<a href="http://c.g.wanfangdata.com.cn/Thesis.aspx" target="_blank"><img src="./dsb_zyyfw/lw/lwzyk/201111/W020120120524587987359.png" /></a>
																																			</td>
																																			<td width="14"></td>
																																			<td width="380" valign="top">
																																				<table width="380" border="0" cellspacing="0" cellpadding="0">
																																					<tr>
																																						<td height="5"></td>
																																					</tr>
																																					<tr>
																																						<td valign="top" class="fs12p lh20p light-black1">该库由国家法定学位论文收藏机构——中国科技信息研究所提供，并委托万方数据加工建库，收录了自1980年以来我国理、工、农、医、人文社科等各个领域的博士、博士后及硕士研究生论文，论文全文已达200余万篇。</td>
																																					</tr>
																																				</table>
																																			</td>
																																			<td></td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>

																															<tr>
																																<td height="1"></td>
																															</tr>
																														</table>
																													</td>
																												</tr>
																												<tr>
																													<td height="9" valign="top" background="./images/dsb_indexgj1125yyc_05.jpg" style="background-repeat:no-repeat;"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td height="10"></td>
																									</tr>

																									<tr>
																										<td valign="top">
																											<table width="608" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td height="9" valign="top" background="./images/dsb_indexgj1125yyc_03.jpg" style="background-repeat:no-repeat;"></td>
																												</tr>
																												<tr>
																													<td valign="top" background="./images/dsb_indexgj1125yyc_04.jpg" style="background-repeat:repeat-y;">
																														<table width="608" border="0" cellspacing="0" cellpadding="0">
																															<tr>
																																<td height="1"></td>
																															</tr>
																															<tr>
																																<td valign="top">
																																	<table width="608" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td width="30"></td>
																																			<td width="129" valign="top">
																																				<a href="http://192.168.30.10:8888/lw/b/index.jsp" target="_blank"><img src="./dsb_zyyfw/lw/lwzyk/201111/W020120120525602454530.png" /></a>
																																			</td>
																																			<td width="14"></td>
																																			<td width="380" valign="top">
																																				<table width="380" border="0" cellspacing="0" cellpadding="0">
																																					<tr>
																																						<td height="5"></td>
																																					</tr>
																																					<tr>
																																						<td valign="top" class="fs12p lh20p light-black1">收录1981年以来北京协和医学院培养的博士、硕士研究生学位论文，学科范围涉及医学、药学各专业领域及其他相关专业，可在线浏览文章的前30页。每季更新。 </td>
																																					</tr>
																																				</table>
																																			</td>
																																			<td></td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>

																															<tr>
																																<td height="1"></td>
																															</tr>
																														</table>
																													</td>
																												</tr>
																												<tr>
																													<td height="9" valign="top" background="./images/dsb_indexgj1125yyc_05.jpg" style="background-repeat:no-repeat;"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td height="10"></td>
																									</tr>

																									<tr>
																										<td valign="top">
																											<table width="608" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td height="9" valign="top" background="./images/dsb_indexgj1125yyc_03.jpg" style="background-repeat:no-repeat;"></td>
																												</tr>
																												<tr>
																													<td valign="top" background="./images/dsb_indexgj1125yyc_04.jpg" style="background-repeat:repeat-y;">
																														<table width="608" border="0" cellspacing="0" cellpadding="0">
																															<tr>
																																<td height="1"></td>
																															</tr>
																															<tr>
																																<td valign="top">
																																	<table width="608" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td width="30"></td>
																																			<td width="129" valign="top">
																																				<a href="http://pqdt.bjzhongke.com.cn/" target="_blank"><img src="./dsb_zyyfw/lw/lwzyk/201111/W020120120525785914034.png" /></a>
																																			</td>
																																			<td width="14"></td>
																																			<td width="380" valign="top">
																																				<table width="380" border="0" cellspacing="0" cellpadding="0">
																																					<tr>
																																						<td height="5"></td>
																																					</tr>
																																					<tr>
																																						<td valign="top" class="fs12p lh20p light-black1">PQDT学位论文全文库是目前国内唯一提供国外高质量学位论文全文的数据库，主要收录了来自欧美国家2000余所知名大学的优秀博硕士论文，目前中国集团可以共享的论文已经达到近50万篇，涉及文、理、工、农、医等多个领域，是学术研究中十分重要的信息资源。 </td>
																																					</tr>
																																				</table>
																																			</td>
																																			<td></td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>

																															<tr>
																																<td height="1"></td>
																															</tr>
																														</table>
																													</td>
																												</tr>
																												<tr>
																													<td height="9" valign="top" background="./images/dsb_indexgj1125yyc_05.jpg" style="background-repeat:no-repeat;"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td height="10"></td>
																									</tr>

																									<tr>
																										<td valign="top">
																											<table width="608" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td height="9" valign="top" background="./images/dsb_indexgj1125yyc_03.jpg" style="background-repeat:no-repeat;"></td>
																												</tr>
																												<tr>
																													<td valign="top" background="./images/dsb_indexgj1125yyc_04.jpg" style="background-repeat:repeat-y;">
																														<table width="608" border="0" cellspacing="0" cellpadding="0">
																															<tr>
																																<td height="1"></td>
																															</tr>
																															<tr>
																																<td valign="top">
																																	<table width="608" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td width="30"></td>
																																			<td width="129" valign="top">
																																				<a href="http://ieeexplore.ieee.org/" target="_blank"><img src="./dsb_zyyfw/lw/lwzyk/201111/W020120120526002285819.png" /></a>
																																			</td>
																																			<td width="14"></td>
																																			<td width="380" valign="top">
																																				<table width="380" border="0" cellspacing="0" cellpadding="0">
																																					<tr>
																																						<td height="5"></td>
																																					</tr>
																																					<tr>
																																						<td valign="top" class="fs12p lh20p light-black1">IEEE Xplore/IEL收录IEEE美国电气电子工程师学会(Institute of Electrical and Electronic Engineers) 及IET英国工程技术学会(Institution of Engineering and Technology)出版内容，包括1988年到现在所有的期刊、会议录和标准。当中13个学会的内容都回溯到了1950年，大部分的会议录甚至回溯到了1913年。主要内容有：（1）IEEE期刊、会刊与杂志149种；（2）IET期刊23种；（3）IEEE会议录900多种；（4）IET会议录和研讨会摘要40多种；（5）IEEE标准3100多种IEEE标准文献，包括现行、历史及作废的所有标准。</td>
																																					</tr>
																																				</table>
																																			</td>
																																			<td></td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>

																															<tr>
																																<td height="1"></td>
																															</tr>
																														</table>
																													</td>
																												</tr>
																												<tr>
																													<td height="9" valign="top" background="./images/dsb_indexgj1125yyc_05.jpg" style="background-repeat:no-repeat;"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td height="10"></td>
																									</tr>

																								</table>
																							</td>
																						</tr>
																					</table>
																				</div>

																				<div id="bc004" class="hide">
																					<table width="824" bgcolor="#ffffff" border="0" cellspacing="0" cellpadding="0">
																						<tr>
																							<td width="216" height="590" valign="top" background="./images/dsb_indexgj1125yyc_01.jpg" style="background-repeat:no-repeat;">
																								<table width="216" border="0" cellspacing="0" cellpadding="0">
																									<tr>
																										<td width="28"></td>
																										<td width="188" valign="top">
																											<table width="188" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td height="98"></td>
																												</tr>
																												<tr>
																													<td valign="top" style="padding-left:15px;"><img src="./images/dsb_indexgj1125yyc_07.jpg" /></td>
																												</tr>
																												<tr>
																													<td height="35"></td>
																												</tr>
																												<tr>
																													<td height="15"></td>
																												</tr>
																												<tr>
																													<td valign="top">
																														<table width="188" border="0" cellspacing="0" cellpadding="0">

																															<tr>
																																<td valign="top"><img src="./dsb_zyyfw/gj/gjylsjs/201111/W020111126420666236062.jpg" /></td>
																															</tr>
																															<tr>
																																<td height="7"></td>

																															</tr>

																															<tr>
																																<td valign="top">
																																	<table width="188" border="0" cellspacing="0" cellpadding="0">
																																		<tr>

																																			<td width="158" valign="top" style="line-height:20px;" class="light-black1 fs12p"><span class="dark-blue2">地点：</span><br />
																																				<style type="text/css"></style>
																																				古籍馆文津楼&nbsp;A301</td>
																																			<td width="30"></td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>
																															<tr>
																																<td height="7"></td>
																															</tr>

																															<tr>
																																<td valign="top">
																																	<table width="188" border="0" cellspacing="0" cellpadding="0">
																																		<tr>

																																			<td width="158" valign="top" style="line-height:20px;" class="light-black1 fs12p"><span class="dark-blue2">馆藏范围：</span><br />
																																				<div class=TRS_Editor>
																																					<style type="text/css"></style>
																																					<style type="text/css"></style>明清至民国时期的普通古籍，建国以后的新印古籍。</div>
																																			</td>
																																			<td width="30"></td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>
																															<tr>
																																<td height="7"></td>
																															</tr>

																															<tr>
																																<td valign="top">
																																	<table width="188" border="0" cellspacing="0" cellpadding="0">
																																		<tr>

																																			<td width="158" valign="top" style="line-height:20px;" class="light-black1 fs12p"><span class="dark-blue2">开放时间：</span><br />
																																				<style type="text/css"></style>
																																				周一至周五 9:00—17:00（取书时间：9:00—12:00，13:00—16:30）</td>
																																			<td width="30"></td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>
																															<tr>
																																<td height="7"></td>
																															</tr>

																															<tr>
																																<td valign="top">
																																	<table width="188" border="0" cellspacing="0" cellpadding="0">
																																		<tr>

																																			<td width="158" valign="top" style="line-height:20px;" class="light-black1 fs12p"><span class="dark-blue2">证卡要求：</span><br />
																																				<style type="text/css"></style>
																																				<style type="text/css"></style>凭本人国家图书馆读者卡。</td>
																																			<td width="30"></td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>
																															<tr>
																																<td height="7"></td>
																															</tr>

																														</table>
																													</td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																								</table>
																							</td>
																							<td width="608" valign="top" background="./images/dsb_indexgj1125yyc_02.jpg" style="background-repeat:repeat-x;">
																								<table width="608" border="0" cellspacing="0" cellpadding="0">
																									<tr>
																										<td height="63"></td>
																									</tr>
																									<tr>
																										<td valign="top">
																											<table width="608" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td width="33"></td>
																													<td width="216" valign="top"><img src="./images/dsb_indexgj1125yyc_08.jpg" /></td>
																													<td width="45"></td>
																													<td width="314" valign="bottom" class="dark-blue1">
																														<a href="./dsb_zyyfw/gj/gjzyk/" target="_blank" class="dark-blue1"><img src="./images/dsb_gd120221mak_01.jpg" border="0" /></a>
																													</td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									<tr>

																										<td height="10"></td>
																									</tr>

																									<tr>
																										<td valign="top">
																											<table width="608" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td height="9" valign="top" background="./images/dsb_indexgj1125yyc_03.jpg" style="background-repeat:no-repeat;"></td>
																												</tr>
																												<tr>
																													<td valign="top" background="./images/dsb_indexgj1125yyc_04.jpg" style="background-repeat:repeat-y;">
																														<table width="608" border="0" cellspacing="0" cellpadding="0">
																															<tr>
																																<td height="1"></td>
																															</tr>
																															<tr>
																																<td valign="top">
																																	<table width="608" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td width="30"></td>
																																			<td width="130" valign="top">
																																				<a href="http://mylib.nlc.cn/web/guest/shanbenjiaojuan" target="_blank"><img src="./dsb_zyyfw/gj/gjzyk/201311/W020160926557150200510.png" alt="0926-3.png" /></a>
																																			</td>
																																			<td width="14"></td>
																																			<td width="380" valign="top">
																																				<table width="380" border="0" cellspacing="0" cellpadding="0">
																																					<tr>
																																						<td height="5"></td>
																																					</tr>
																																					<tr>
																																						<td valign="top" class="fs12p lh20p light-black1">“中华古籍资源库”数据库是列入“中华古籍保护计划”的“中华古籍数字资源库”项目的重要成果，将陆续发布全国古籍影像。首批发布国家图书馆所藏善本古籍影像，本着边建设边服务的原则，将在四年内陆续提供服务。国家图书馆古籍善本直接继承了南宋缉熙殿、元翰林国史院、明文渊阁、清内阁大库等皇家珍藏，更广泛地继承了明清以来许多私人藏书家的毕生所聚。宋元旧椠、明清精刻琳琅满目；名刊名抄、名家校跋异彩纷呈；古代戏曲小说、方志家谱丰富而有特色。本数据库以保护古籍、传承文明为宗旨，使珍本秘笈为广大读者和研究者所利用，让中国传统文化精粹得到共享。</td>
																																					</tr>

																																				</table>
																																			</td>
																																			<td></td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>
																															<tr>
																																<td height="1"></td>
																															</tr>
																														</table>
																													</td>
																												</tr>
																												<tr>
																													<td height="9" valign="top" background="./images/dsb_indexgj1125yyc_05.jpg" style="background-repeat:no-repeat;"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td height="10"></td>
																									</tr>

																									<tr>
																										<td valign="top">
																											<table width="608" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td height="9" valign="top" background="./images/dsb_indexgj1125yyc_03.jpg" style="background-repeat:no-repeat;"></td>
																												</tr>
																												<tr>
																													<td valign="top" background="./images/dsb_indexgj1125yyc_04.jpg" style="background-repeat:repeat-y;">
																														<table width="608" border="0" cellspacing="0" cellpadding="0">
																															<tr>
																																<td height="1"></td>
																															</tr>
																															<tr>
																																<td valign="top">
																																	<table width="608" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td width="30"></td>
																																			<td width="130" valign="top">
																																				<a href="http://mylib.nlc.cn/web/guest/zhonghuayicang" target="_blank"><img src="./dsb_zyyfw/gj/gjzyk/201610/W020170125358635591744.png" alt="W020120120526384808152.png" /></a>
																																			</td>
																																			<td width="14"></td>
																																			<td width="380" valign="top">
																																				<table width="380" border="0" cellspacing="0" cellpadding="0">
																																					<tr>
																																						<td height="5"></td>
																																					</tr>
																																					<tr>
																																						<td valign="top" class="fs12p lh20p light-black1">2016年，习近平总书记在全国卫生与健康大会上强调“加强中医古籍、传统知识和诊疗技术的保护抢救和整理”。图书馆收藏的文献典籍是整理研究的基础资料。为使读者能够通过互联网检索、利用中医文献资源，国家图书馆（国家古籍保护中心）将逐步建设中华医药典藏资源库。目前先对92种中医古籍影像进行发布测试。（本资源库内容仅供研究参考使用）</td>
																																					</tr>

																																				</table>
																																			</td>
																																			<td></td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>
																															<tr>
																																<td height="1"></td>
																															</tr>
																														</table>
																													</td>
																												</tr>
																												<tr>
																													<td height="9" valign="top" background="./images/dsb_indexgj1125yyc_05.jpg" style="background-repeat:no-repeat;"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td height="10"></td>
																									</tr>

																									<tr>
																										<td valign="top">
																											<table width="608" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td height="9" valign="top" background="./images/dsb_indexgj1125yyc_03.jpg" style="background-repeat:no-repeat;"></td>
																												</tr>
																												<tr>
																													<td valign="top" background="./images/dsb_indexgj1125yyc_04.jpg" style="background-repeat:repeat-y;">
																														<table width="608" border="0" cellspacing="0" cellpadding="0">
																															<tr>
																																<td height="1"></td>
																															</tr>
																															<tr>
																																<td valign="top">
																																	<table width="608" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td width="30"></td>
																																			<td width="130" valign="top">
																																				<a href="http://mylib.nlc.cn/web/guest/jiagushiwu" target="_blank"><img src="./dsb_zyyfw/gj/gjzyk/201111/W020120120526384808152.png" /></a>
																																			</td>
																																			<td width="14"></td>
																																			<td width="380" valign="top">
																																				<table width="380" border="0" cellspacing="0" cellpadding="0">
																																					<tr>
																																						<td height="5"></td>
																																					</tr>
																																					<tr>
																																						<td valign="top" class="fs12p lh20p light-black1">被誉为二十世纪四大文献发现之一的甲骨文，集文献性、文物性、收藏性于一身，是研究我国商朝晚期不可多得的珍贵史料，该库包括
																																							<a href="http://mylib.nlc.cn/web/guest/jiagushiwu" target="_blank" style="text-decoration:underline;">甲骨实物</a>：元数据2964条，影像5932幅。
																																							<a href="http://mylib.nlc.cn/web/guest/jiagutuopian" target="_blank" style="text-decoration:underline;">甲骨拓片</a>：元数据2975条，影像3177幅。并将不断更新。</td>
																																					</tr>

																																				</table>
																																			</td>
																																			<td></td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>
																															<tr>
																																<td height="1"></td>
																															</tr>
																														</table>
																													</td>
																												</tr>
																												<tr>
																													<td height="9" valign="top" background="./images/dsb_indexgj1125yyc_05.jpg" style="background-repeat:no-repeat;"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td height="10"></td>
																									</tr>

																									<tr>
																										<td valign="top">
																											<table width="608" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td height="9" valign="top" background="./images/dsb_indexgj1125yyc_03.jpg" style="background-repeat:no-repeat;"></td>
																												</tr>
																												<tr>
																													<td valign="top" background="./images/dsb_indexgj1125yyc_04.jpg" style="background-repeat:repeat-y;">
																														<table width="608" border="0" cellspacing="0" cellpadding="0">
																															<tr>
																																<td height="1"></td>
																															</tr>
																															<tr>
																																<td valign="top">
																																	<table width="608" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td width="30"></td>
																																			<td width="130" valign="top">
																																				<a href="http://mylib.nlc.cn/web/guest/beitiejinghua" target="_blank"><img src="./dsb_zyyfw/gj/gjzyk/201111/W020120120526632849835.png" /></a>
																																			</td>
																																			<td width="14"></td>
																																			<td width="380" valign="top">
																																				<table width="380" border="0" cellspacing="0" cellpadding="0">
																																					<tr>
																																						<td height="5"></td>
																																					</tr>
																																					<tr>
																																						<td valign="top" class="fs12p lh20p light-black1">以国家图书馆藏有的历代甲骨、青铜器、石刻等类拓片二十三万余件为基础建设的数据库，内容涉及历史、地理、政治、经济、军事、民族、民俗、文学、艺术、科技、建筑等方面，现有元数据23000余条，影像29000余幅。</td>
																																					</tr>

																																				</table>
																																			</td>
																																			<td></td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>
																															<tr>
																																<td height="1"></td>
																															</tr>
																														</table>
																													</td>
																												</tr>
																												<tr>
																													<td height="9" valign="top" background="./images/dsb_indexgj1125yyc_05.jpg" style="background-repeat:no-repeat;"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td height="10"></td>
																									</tr>

																									<tr>
																										<td valign="top">
																											<table width="608" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td height="9" valign="top" background="./images/dsb_indexgj1125yyc_03.jpg" style="background-repeat:no-repeat;"></td>
																												</tr>
																												<tr>
																													<td valign="top" background="./images/dsb_indexgj1125yyc_04.jpg" style="background-repeat:repeat-y;">
																														<table width="608" border="0" cellspacing="0" cellpadding="0">
																															<tr>
																																<td height="1"></td>
																															</tr>
																															<tr>
																																<td valign="top">
																																	<table width="608" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td width="30"></td>
																																			<td width="130" valign="top">
																																				<a href="http://idp.nlc.cn/" target="_blank"><img src="./dsb_zyyfw/gj/gjzyk/201111/W020120120526859042862.png" /></a>
																																			</td>
																																			<td width="14"></td>
																																			<td width="380" valign="top">
																																				<table width="380" border="0" cellspacing="0" cellpadding="0">
																																					<tr>
																																						<td height="5"></td>
																																					</tr>
																																					<tr>
																																						<td valign="top" class="fs12p lh20p light-black1">包括100,000多件来自敦煌和丝绸之路上的写本、绘画、纺织品及器物的信息和图片。</td>
																																					</tr>

																																				</table>
																																			</td>
																																			<td></td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>
																															<tr>
																																<td height="1"></td>
																															</tr>
																														</table>
																													</td>
																												</tr>
																												<tr>
																													<td height="9" valign="top" background="./images/dsb_indexgj1125yyc_05.jpg" style="background-repeat:no-repeat;"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td height="10"></td>
																									</tr>

																									<tr>
																										<td valign="top">
																											<table width="608" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td height="9" valign="top" background="./images/dsb_indexgj1125yyc_03.jpg" style="background-repeat:no-repeat;"></td>
																												</tr>
																												<tr>
																													<td valign="top" background="./images/dsb_indexgj1125yyc_04.jpg" style="background-repeat:repeat-y;">
																														<table width="608" border="0" cellspacing="0" cellpadding="0">
																															<tr>
																																<td height="1"></td>
																															</tr>
																															<tr>
																																<td valign="top">
																																	<table width="608" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td width="30"></td>
																																			<td width="130" valign="top">
																																				<a href="http://mylib.nlc.cn/web/guest/xixiawenxian" target="_blank"><img src="./dsb_zyyfw/gj/gjzyk/201111/W020160808612281282182.png" alt="W020120120527031429909.png" /></a>
																																			</td>
																																			<td width="14"></td>
																																			<td width="380" valign="top">
																																				<table width="380" border="0" cellspacing="0" cellpadding="0">
																																					<tr>
																																						<td height="5"></td>
																																					</tr>
																																					<tr>
																																						<td valign="top" class="fs12p lh20p light-black1">是以国家图书馆保存的西夏、元代孤本及各种西夏的珍贵实物资料为基础建设的数据库。包括
																																							<a href="http://mylib.nlc.cn/web/guest/xixiawenxian" target="_blank" style="text-decoration:underline;">西夏文献</a>：书目数据124条；原件影像近5000拍；
																																							<a href="http://mylib.nlc.cn/web/guest/xixialunzhu" target="_blank" style="text-decoration:underline;">西夏论著</a>：研究论文篇名数据1200余条。</td>
																																					</tr>

																																				</table>
																																			</td>
																																			<td></td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>
																															<tr>
																																<td height="1"></td>
																															</tr>
																														</table>
																													</td>
																												</tr>
																												<tr>
																													<td height="9" valign="top" background="./images/dsb_indexgj1125yyc_05.jpg" style="background-repeat:no-repeat;"></td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									<tr>
																										<td height="10"></td>
																									</tr>

																								</table>
																							</td>
																						</tr>
																					</table>
																				</div>

																				<div id="bc005" class="hide">
																					<table width="824" border="0" cellspacing="0" cellpadding="0" align="center">

																						<tr>
																							<td height="47" align="left" valign="top"><img src="./images/dsb_yy1126mak_01.jpg" width="824" height="95" /></td>
																						</tr>
																						<tr>
																							<td align="center" valign="top" background="./images/dsb_xmtfw1121mak_03.jpg"></td>
																						</tr>
																						<tr>
																							<td align="left" valign="top" background="./images/dsb_yy1126mak_02.jpg" class="fs12p lh20p" style="padding-left:48px; padding-right:75px;">
																								<style type="text/css"></style>
																								<style type="text/css"></style>
																								<style type="text/css"></style>
																								<p>　　截至2012年底，国家图书馆收藏有各种音频资源9万多张/盒，其中有录音带3万余盒；激光唱片5.7万余张；立体声唱片967张；MP3&nbsp;5,377张。这些资源以中、英、日文为主。其中世界各国的经典名曲及歌曲是音频资料收藏的主要特点，外语教学磁带及CD教学光盘也有大量收藏。欢迎广大音乐爱好者了解并及时地利用这些资源。</p>
																							</td>
																						</tr>
																						<tr>
																							<td align="left" valign="top"><img src="./images/dsb_yy1126mak_03.jpg" width="824" height="35" /></td>
																						</tr>
																						<tr>
																							<td align="left" valign="top"><img src="./images/dsb_yy1126mak_04.jpg" width="824" height="37" /></td>
																						</tr>
																						<tr>
																							<td align="left" valign="top" class="fs12p lh20p" style="padding-left:48px; padding-right:75px;">
																								<style type="text/css"></style>
																								<style type="text/css"></style>
																								<style type="text/css"></style>
																								<style type="text/css"></style>
																								<style type="text/css"></style>
																								<style type="text/css"></style>
																								<style type="text/css"></style>
																								<div class="cas_content">&nbsp;&nbsp;&nbsp; <span class="ylfw_title"><strong><font color="#0f4e7b">志鸟专藏</font></strong></span></div>
																								<div class="cas_content">&nbsp;&nbsp;&nbsp;&nbsp;在国家图书馆收藏的音频资源中有一个特别的部分，那就是志鸟荣八郎先生赠送的2万张激光唱片，这2万张激光唱片全部是西方古典音乐。</div>
																								<div class="cas_content">　　志鸟荣八郎先生（1926—2001）毕生从事古典音乐评论及普及工作，在国内外享有盛誉。他多次来华讲学，极受听众欢迎。志鸟先生曾经担任日本国际音乐评论家协会会员、日本音乐家协会会员、日本旅游笔会会员。担任过中国交响乐团社会音乐学院名誉院长、北京市交响乐爱好者协会名誉理事、蒙特利尔国际唱片大奖赛评委、国际唱片学院奖评委、日本《朝日新闻》、《每日周刊》等报刊的音乐评论撰稿人。他的著作有：《音乐春夏秋冬》、《西洋音乐名作故事》、《大作曲家身边的女人们》、《大作曲家及其名曲CD唱片》、《冬之旅》、《莫扎特大全》（人、曲、CD）等等。志鸟荣八郎先生对中国人民非常友好，1995年他将自己收藏的几万张唱片中的2万张激光唱片，赠送给中国国家图书馆，他的愿望是，将这些珍藏精品奉献给中国的古典音乐爱好者，与大家分享神圣的精神资源。</div>
																							</td>
																						</tr>
																						<tr>
																							<td align="left" valign="top"><img src="./images/dsb_yy1126mak_05.jpg" width="824" height="46" /></td>
																						</tr>
																					</table>
																				</div>

																				<div id="bc006" class="hide">
																					<table width="824" border="0" cellspacing="0" cellpadding="0" align="center">

																						<tr>
																							<td height="47" align="left" valign="top"><img src="./images/dsb_ys1126mak_01.jpg" width="824" height="52" /></td>
																						</tr>
																						<tr>
																							<td align="center" valign="top" background="./images/dsb_xmtfw1121mak_03.jpg"></td>
																						</tr>
																						<tr>
																							<td align="left" valign="top" background="./images/dsb_ys1126mak_02.jpg" class="fs12p lh20p" style="padding-left:48px; padding-right:75px;">
																								<style type="text/css"></style>
																								<style type="text/css"></style>
																								<style type="text/css"></style>
																								<style type="text/css"></style>
																								<div class="cas_content">　　截至2012年底，国家图书馆收藏有各种视频资料共计18万余张/盘/盒。其中录像带1.4万余盒；LD视盘1,880张；VCD视盘9.8万余张；VHD视盘260&nbsp;盒；DVD视盘7.4万余张。</div>
																								<div class="cas_content">　　这些视频资源涉及的学科范围广泛，包括语言、文字、哲学、宗教、政治、法律、军事、文化、教育、体育、经济、艺术、文学、工业技术、医药卫生、历史、地理、数理科学、化学、天文学、地球科学、生物科学、农业科学、航空、航天、环境科学、安全科学等领域。其中中外经典故事影片是视听资料收藏的一个重要方面。</div>
																							</td>
																						</tr>
																						<tr>
																							<td align="left" valign="top"><img src="./images/dsb_yy1126mak_03.jpg" width="824" height="35" /></td>
																						</tr>
																						<tr>
																							<td align="left" valign="top"><img src="./images/dsb_ys1126mak_04.jpg" width="824" height="36" /></td>
																						</tr>
																						<tr>
																							<td align="left" valign="top" class="fs12p lh20p" style="padding-left:48px; padding-right:75px;">
																								<style type="text/css"></style>
																								<style type="text/css"></style>
																								<div class="cas_content">&nbsp;&nbsp;&nbsp;&nbsp;国外影视精品原版DVD光盘。</div>
																								<div class="cas_content">&nbsp;&nbsp;&nbsp;&nbsp;国家图书馆每年都花费大笔资金购买国外原版的影视精品DVD光盘，以经典电影、电视剧为主，同时也包含有舞蹈、动漫等领域的经典作品。</div>
																							</td>
																						</tr>
																						<tr>
																							<td align="left" valign="top"><img src="./images/dsb_ys1126mak_05.jpg" width="824" height="52" /></td>
																						</tr>
																					</table>
																				</div>

																				<div id="bc007" class="hide">
																					<table width="824" background="./images/dsb_indexsw1126yyc_10.jpg" style="background-repeat:repeat-x;" border="0" cellspacing="0" cellpadding="0">
																						<tr>

																							<td valign="top">
																								<table width="824" border="0" cellspacing="0" cellpadding="0">
																									<tr>
																										<td height="62" valign="top" background="./images/dsb_indexsw1126yyc_01.jpg" style="background-repeat:no-repeat;"></td>
																									</tr>
																									<tr>
																										<td valign="top">
																											<table width="824" border="0" cellspacing="0" cellpadding="0">
																												<tr>
																													<td width="251" valign="top">
																														<table width="251" border="0" cellspacing="0" cellpadding="0">
																															<tr>
																																<td valign="top">
																																	<table width="251" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td width="250" valign="top" bgcolor="#FFFFFF">
																																				<table width="250" border="0" cellspacing="0" cellpadding="0">

																																					<tr>
																																						<td height="8"></td>
																																					</tr>
																																					<tr>
																																						<td valign="top">
																																							<table width="250" border="0" cellspacing="0" cellpadding="0">
																																								<tr>
																																									<td width="29"></td>
																																									<td valign="top"><img src="./images/dsb_indexsw1126yyc_02.jpg" /></td>
																																								</tr>
																																							</table>
																																						</td>
																																					</tr>
																																					<tr>
																																						<td height="5"></td>
																																					</tr>
																																					<tr>
																																						<td valign="top">
																																							<table width="250" border="0" cellspacing="0" cellpadding="0">
																																								<tr>
																																									<td valign="top">
																																										<table width="250" border="0" cellspacing="0" cellpadding="0">
																																											<tr>
																																												<td width="75"></td>
																																												<td valign="top"><img src="./dsb_zyyfw/sw/swylsjs/201111/W020111126560179175743.jpg" /></td>
																																											</tr>
																																										</table>
																																									</td>
																																								</tr>
																																								<tr>
																																									<td height="11"></td>
																																								</tr>
																																								<tr>
																																									<td valign="top">
																																										<table width="250" border="0" cellspacing="0" cellpadding="0">
																																											<tr>
																																												<td width="21"></td>
																																												<td width="208" valign="top">
																																													<table width="208" border="0" cellspacing="0" cellpadding="0">

																																														<tr>
																																															<td valign="top" class="light-black1 fs12p lh20p"><span class="dark-blue2">地点：</span><br />
																																																<div class=TRS_Editor>　　总馆南区四层D401</div>
																																															</td>
																																														</tr>
																																														<tr>
																																															<td height="7"></td>
																																														</tr>

																																														<tr>
																																															<td valign="top" class="light-black1 fs12p lh20p"><span class="dark-blue2">室藏范围：</span><br />
																																																<div class=TRS_Editor>　　国外博士论文、中文报刊、民国图书、1931-1934年间江西苏维埃政权出版物、日本政府出版物、英美政府解密资料和早期来华传教士文集，以及1850年前西方出版的有关中国的书籍、世界各国语种词典和各国人物传记等胶卷或平片。其中外文资料最早可追溯到1498年，中文资料最早可追溯到1862年，是国内外学者研究学习的珍贵资料。</div>
																																															</td>
																																														</tr>
																																														<tr>
																																															<td height="7"></td>
																																														</tr>

																																														<tr>
																																															<td valign="top" class="light-black1 fs12p lh20p"><span class="dark-blue2">开放时间：</span><br />
																																																<div class=TRS_Editor>　　周日到周五 9:00-17:00<br /> 　　（预约服务时间：9:00-16:00）
																																																</div>
																																															</td>
																																														</tr>
																																														<tr>
																																															<td height="7"></td>
																																														</tr>

																																														<tr>
																																															<td valign="top" class="light-black1 fs12p lh20p"><span class="dark-blue2">联系方式：</span><br />
																																																<div class=TRS_Editor>　　（+86 10）88545663</div>
																																															</td>
																																														</tr>
																																														<tr>
																																															<td height="7"></td>
																																														</tr>

																																													</table>
																																												</td>
																																												<td></td>
																																											</tr>
																																										</table>
																																									</td>
																																								</tr>
																																							</table>
																																						</td>
																																					</tr>
																																					<tr>
																																						<td height="2"></td>
																																					</tr>
																																				</table>
																																			</td>
																																			<td width="1" bgcolor="#eeeeee"></td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>
																															<tr>
																																<td height="77" valign="top" background="./images/dsb_indexsw1126yyc_07.jpg" style="background-repeat:no-repeat;"></td>
																															</tr>
																														</table>
																													</td>
																													<td width="5"></td>
																													<td width="568" valign="top">
																														<table width="568" border="0" cellspacing="0" cellpadding="0">
																															<tr>
																																<td valign="top">
																																	<table width="568" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td valign="top">
																																				<table width="568" border="0" cellspacing="0" cellpadding="0">
																																					<tr>
																																						<td width="3"></td>
																																						<td width="1" bgcolor="#eeeeee"></td>
																																						<td width="564" valign="top" bgcolor="#FFFFFF">
																																							<table width="564" border="0" cellspacing="0" cellpadding="0">
																																								<tr>
																																									<td height="5"></td>
																																								</tr>
																																								<tr>
																																									<td valign="top">
																																										<table width="564" border="0" cellspacing="0" cellpadding="0">
																																											<tr>
																																												<td width="41"></td>
																																												<td width="523" height="31" valign="top" background="./images/dsb_indexsw1126yyc_04.jpg" style="background-repeat:no-repeat;"></td>
																																											</tr>
																																										</table>
																																									</td>
																																								</tr>
																																								<tr>
																																									<td height="15"></td>
																																								</tr>
																																								<tr>
																																									<td valign="top">
																																										<table width="564" border="0" cellspacing="0" cellpadding="0">
																																											<tr>
																																												<td width="33"></td>
																																												<td width="491" class="fs12p lh20p light-black2">
																																													<div class=TRS_Editor>
																																														<p>　　缩微资料内容范围包括国外博士论文、中文报刊、民国图书、1931-1934年间江西苏维埃政权出版物、日本政府出版物、英美政府解密资料和早期来华传教士文集，以及1850年前西方出版的有关中国的书籍、世界各国语种词典和各国人物传记等胶卷或平片。</p>
																																														<p>　　截止2013年底，本馆收藏缩微文献1,481,244卷/张/片。</p>
																																													</div>
																																												</td>
																																												<td></td>
																																											</tr>
																																										</table>
																																									</td>
																																								</tr>
																																							</table>
																																						</td>
																																					</tr>
																																				</table>
																																			</td>
																																		</tr>
																																		<tr>
																																			<td height="23" background="./images/dsb_indexsw1126yyc_05.jpg" style="background-repeat:no-repeat;"></td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>
																															<tr>

																																<td valign="top">
																																	<table width="568" border="0" cellspacing="0" cellpadding="0">
																																		<tr>
																																			<td height="49" background="./images/dsb_indexsw1126yyc_06.jpg" style="background-repeat:no-repeat;"></td>
																																		</tr>
																																		<tr>
																																			<td valign="top">
																																				<table width="568" border="0" cellspacing="0" cellpadding="0">
																																					<tr>
																																						<td width="3"></td>
																																						<td width="1" bgcolor="#eeeeee"></td>
																																						<td width="564" valign="top">
																																							<table width="564" border="0" cellspacing="0" cellpadding="0">
																																								<tr>
																																									<td height="12"></td>
																																								</tr>
																																								<tr>
																																									<td valign="top">
																																										<table width="564" border="0" cellspacing="0" cellpadding="0">
																																											<tr>
																																												<td width="33"></td>
																																												<td width="490" valign="top" class="fs12p lh20p light-black2">
																																													<div class=TRS_Editor>
																																														<style type="text/css"></style>
																																														<style type="text/css"></style>
																																														<p><strong>·</strong>美国UMI公司的博士学位论文：自1938年至最新，并逐年增订；</p>
																																														<p><strong>·</strong>解放前中文报纸、期刊、民国时期的图书；</p>
																																														<p><strong>·</strong>清末中美外交档案；</p>
																																														<p><strong>·</strong>德国美因兹大学博士论文；</p>
																																														<p><strong>·</strong>英、美政府解密资料；日本政府出版物；</p>
																																														<p><strong>·</strong>1850年前西方出版有关中国的书籍，以及早期来华传教士资料；</p>
																																														<p><strong>·</strong>江西苏维埃政权出版物（陈诚档案）：1931年—1934年；</p>
																																														<p><strong>·</strong>各国人物传记资料及荷兰学者高罗佩中文藏书（文学、书法、绘画、音乐等）；</p>
																																														<p><strong>·</strong>世界各国语种词典。</p>
																																													</div>
																																												</td>
																																												<td></td>
																																											</tr>
																																										</table>
																																									</td>
																																								</tr>
																																								<tr>
																																									<td height="7"></td>
																																								</tr>
																																							</table>
																																						</td>
																																					</tr>
																																				</table>
																																			</td>
																																		</tr>
																																		<tr>
																																			<td height="75" valign="top" background="./images/dsb_indexsw1126yyc_09.jpg" style="background-repeat:no-repeat;"></td>
																																		</tr>
																																	</table>
																																</td>
																															</tr>
																														</table>
																													</td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																								</table>
																							</td>
																						</tr>
																					</table>
																				</div>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
													</td>
													<td width="6"></td>
													<td width="95" valign="top" align="left">
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>

		<div id="msg_win" style="display:block; widows:255px; height:182px; margin-right:10px;  top:913px;visibility:visible;opacity:1; background-image:url(.//images/dsb_gg120131mak_01.png)">
			<div class="icos" style="padding-right:1px; padding-top:2px;">
				<a id="msg_min" title="最小化" href="javascript:void 0"></a>
				<a id="msg_close" title="关闭" href="javascript:void 0">x</a>&nbsp;</div>
			<div id="msg_title">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="96%" align="right" valign="bottom"><img src="./images/dsb_gg120131mak_02.png" /></td>
						<td width="4%">&nbsp;</td>
					</tr>
				</table>
			</div>
			<div align="right" style="padding-right:10px; padding-top:11px; width:87%; ">
				<a href="./dsb_zx/zxgg/" class="a-zxgg">更多>></a>
			</div>
			<div id="msg_content">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td height="20" align="right" valign="middle">&nbsp;</td>
						<td>&nbsp;</td>
					</tr>

					<tr>
						<td width="13%" align="right" valign="middle"><img src="./images/dsb_gg120131mak_03.jpg" /></td>
						<td width="87%" height="24" align="left" valign="middle">&nbsp;
							<a href="./dsb_zx/zxgg/201706/t20170606_149123.htm" target="_blank" class='a-zxgg'>国图讲坛：2017年“非物质文化遗...</a>
						</td>
					</tr>

					<tr>
						<td width="13%" align="right" valign="middle"><img src="./images/dsb_gg120131mak_03.jpg" /></td>
						<td width="87%" height="24" align="left" valign="middle">&nbsp;
							<a href="./dsb_zx/zxgg/201706/t20170606_149122.htm" target="_blank" class='a-zxgg'>国图公开课读书推荐：王梓丞推荐...</a>
						</td>
					</tr>
					<tr>
						<td width="13%" align="right" valign="middle"><img src="./images/dsb_gg120131mak_03.jpg" /></td>
						<td width="87%" height="24" align="left" valign="middle">&nbsp;
							<a href="./dsb_zx/zxgg/201509/t20150906_104798.htm" target="_blank" class='a-zxgg'>最近更新：《丝绸之路与丝路之绸...</a>
						</td>
					</tr>
					<tr>
						<td width="13%" align="right" valign="middle"><img src="./images/dsb_gg120131mak_03.jpg" /></td>
						<td width="87%" height="24" align="left" valign="middle">&nbsp;
							<a href="./dsb_zx/zxgg/201705/t20170525_148376.htm" target="_blank" class='a-zxgg'>国家图书馆关于暂停24小时自助还...</a>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<script language="javascript">
			var Message = {
				set: function() { //最小化与恢复状态切换
					var set = this.minbtn.status == 1 ? [0, 1, 'block', this.char[0], '最小化'] : [1, 0, 'none', this.char[1], '恢复'];
					this.minbtn.status = set[0];
					this.win.style.borderBottomWidth = set[1];
					this.content.style.display = set[2];
					this.minbtn.innerHTML = set[3]
					this.minbtn.title = set[4];
					this.win.style.top = this.getY().top;
				},
				close: function() { //关闭
					this.win.style.display = 'none';
					window.onscroll = null;
				},
				setOpacity: function(x) { //设置透明度
					var v = x >= 100 ? '' : 'Alpha(opacity=' + x + ')';
					this.win.style.visibility = x <= 0 ? 'hidden' : 'visible'; //IE有绝对或相对定位内容不随父透明度变化的bug
					this.win.style.filter = v;
					this.win.style.opacity = x / 100;

				},
				show: function() { //渐显
					clearInterval(this.timer2);
					var me = this,
						fx = this.fx(0, 100, 0.1),
						t = 0;
					this.timer2 = setInterval(function() {
						t = fx();
						me.setOpacity(t[0]);
						if(t[1] == 0) { clearInterval(me.timer2) }
					}, 6); //10 to 6

				},

				fx: function(a, b, c) { //缓冲计算
					var cMath = Math[(a - b) > 0 ? "floor" : "ceil"],
						c = c || 0.1;
					return function() { return [a += cMath((b - a) * c), a - b] }
				},
				getY: function() { //计算移动坐标
					var d = document,
						b = document.body,
						e = document.documentElement;
					var s = Math.max(b.scrollTop, e.scrollTop);
					var h = /BackCompat/i.test(document.compatMode) ? b.clientHeight : e.clientHeight;
					var h2 = this.win.offsetHeight;
					return { foot: s + h + h2 + 2 + 'px', top: s + h - h2 - 2 + 'px' }
				},
				moveTo: function(y) { //移动动画
					clearInterval(this.timer);
					var me = this,
						a = parseInt(this.win.style.top) || 0;
					var fx = this.fx(a, parseInt(y));
					var t = 0;
					this.timer = setInterval(function() {
						t = fx();
						me.win.style.top = t[0] + 'px';
						if(t[1] == 0) {
							clearInterval(me.timer);
							me.bind();
						}
					}, 6); //10 to 6
				},
				bind: function() { //绑定窗口滚动条与大小变化事件
					var me = this,
						st, rt;
					window.onscroll = function() {
						clearTimeout(st);
						clearTimeout(me.timer2);
						me.setOpacity(0);
						st = setTimeout(function() {
							me.win.style.top = me.getY().top;
							me.show();
						}, 100); //600 mod 100
					};
					window.onresize = function() {
						clearTimeout(rt);
						rt = setTimeout(function() { me.win.style.top = me.getY().top }, 100);
					}
				},
				init: function() { //创建HTML
					function $(id) { return document.getElementById(id) };
					this.win = $('msg_win');
					var set = { minbtn: 'msg_min', closebtn: 'msg_close', title: 'msg_title', content: 'msg_content' };
					for(var Id in set) { this[Id] = $(set[Id]) };
					var me = this;
					this.minbtn.onclick = function() {
						me.set();
						this.blur()
					};
					this.closebtn.onclick = function() { me.close() };
					this.char = navigator.userAgent.toLowerCase().indexOf('firefox') + 1 ? ['_', '::', '×'] : ['0', '2', 'r']; //FF不支持webdings字体
					this.minbtn.innerHTML = this.char[0];
					this.closebtn.innerHTML = this.char[2];
					setTimeout(function() { //初始化最先位置
						me.win.style.display = 'block';
						me.win.style.top = me.getY().foot;
						me.moveTo(me.getY().top);
					}, 0);
					return this;
				}
			};
			Message.init();
		</script>

		<div class="hide">
			<form id="main_form" name="main_form" method="post" action="http://res4.nlc.gov.cn/home/search.trs?method=advSearch">
				<input type="text" name="textfield2" style="display:none;" />
				<table width="427" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="325" valign="top">
							<table width="325" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td height="27" valign="middle" background="./images/dsb_index1101yyc_21.jpg" style="background-repeat:no-repeat; padding-left:7px" class="fs14p c0"><input type="text" id="shtb" name="parmValue" style="border-width:0px; width:310px;" class="fs14p c0" size="46" /></td>
								</tr>
								<tr>
									<td height="5" background="./images/dsb_index1101yyc_22.jpg" style="background-repeat:no-repeat;"></td>
								</tr>
							</table>
						</td>
						<td width="16"></td>
						<td width="86" valign="top">
							<table width="86" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top">
										<a href="#" onclick="smt1();"><img src="./images/dsb_index1101yyc_10.jpg" /></a>
									</td>
								</tr>
								<tr>
									<td height="5" background="./images/dsb_index1101yyc_23.jpg" style="background-repeat:no-repeat;"></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<input type="hidden" name="channelid" id="channelid" value="772" />
				<input type="hidden" id="pageNo" name="pageNo" value="1" />
				<input type="hidden" id="pageSize" name="pageSize" value="15" />
				<!-- 检索结果每页显示条数 -->
				<input type="hidden" id="orderBy" name="orderBy" value="extend1" />
				<input type="hidden" id="order" name="order" value="desc" />
				<input type="hidden" id="flag" name="flag" value="false" />
				<input type="hidden" id="ifSplitSpace" name="ifSplitSpace" value="0" />
				<input type="hidden" id="soqolo" name="soqolo" value="%28+bookname%3D+%27%E6%95%85%E4%BA%8B%27++and+subchannel%3D100+%29" />
				<input type="hidden" id="cutSize" name="cutSize" value="125" />
				<input type="hidden" id="cutSize" name="parmName" value="bookname" />
			</form>
		</div>
		<table align="center" width="1024" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td valign="top">
					<table width="1024" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="34" align="left" valign="top" background="./images/dsb_index1101yyc_71.jpg" style="background-repeat:no-repeat; padding-left:99px">
								<table width="824" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td valign="top">
											<table width="824" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td height="11"></td>
												</tr>
												<tr>
													<td valign="top" align="center" class="cf fs12p white">
														<a href="http://www.nlc.cn/dsb_footer/bqsm/" class='cf'>版权声明</a>&nbsp;丨&nbsp;
														<a href="http://www.nlc.cn/dsb_footer/gygt/" class='cf'>关于国图</a>&nbsp;丨&nbsp;
														<a href="http://www.nlc.cn/dsb_footer/dsb_zcwm/" class='cf'>支持我们</a>&nbsp;丨&nbsp;
														<a href="http://www.nlc.cn/dsb_footer/rczp/" class='cf'>人才招聘</a>&nbsp;丨&nbsp;
														<a href="http://www.nlc.cn/dsb_footer/dsb_zddt/" class='cf'>站点地图</a>&nbsp;丨&nbsp;
														<a href="http://www.nlc.cn/dsb_footer/lxwm/" class='cf'>联系我们</a>
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td height="113" align="center" valign="middle" background="./images/dsb_index1101yyc_72.jpg" style="background-repeat:no-repeat;">
								<div style="position:relative; z-index:0">
									<table width="1024" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td valign="top" align="center">
												<p class="fs14p" style="line-height:22px;">京ICP备05014420号<br> 电话:(+86 10)88545426 88545360<br>
													<span class="dark-blue fwb">&copy;&nbsp;中国国家图书馆版权所有</span></p>
												<div style="position: absolute; z-index: 100; width: 80px; height: 80px; left: 652px; top: 4px;">
													<script type="text/javascript">
														document.write(unescape("%3Cspan id='_ideConac' %3E%3C/span%3E%3Cscript src='http://dcs.conac.cn/js/33/000/0000/60714510/CA330000000607145100001.js' type='text/javascript'%3E%3C/script%3E"));
													</script>
												</div>
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>

	</body>

</html>