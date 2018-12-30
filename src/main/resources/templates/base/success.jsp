<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="tag.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>操作成功</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
	    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="${baseurl}styles/body.css" type="text/css"/>
		<script src="${baseurl}scripts/jquery.min.js"></script>
		<script type="text/javascript" src="${baseurl}scripts/jquery-1.2.js"></script>
		<script type="text/javascript" src="${baseurl}scripts/jquery.form.js"></script>
		<script type="text/javascript" src="${baseurl}scripts/common.js"></script>
        <script type="text/javascript" src="${baseurl}scripts/subjectkind.js"></script>
        <script type="text/javascript" src="${baseurl}scripts/ext-base.js"></script>
		<script type="text/javascript" src="${baseurl}scripts/ext-all.js"></script>
		<script type="text/javascript" src="${baseurl}scripts/nms-jquery-form.js"></script>

		
	</head>
	<body>
					<table class="submit_hint">
						<tr><td>
							<div id="tabBtnContainer" width="100%">
								<ul id="tabBtnUi">
									<li><a href="#"></a>成功提示信息</li>
								</ul>
							</div></td>
						</tr>

								<tr><td style="font-size: 14px;" align='center'>
								<img alt="" src="${baseurl}images/yes.png" align="middle" height="30" width="30"/>
								<span style="vertical-align: middle">您的操作成功！</span>
								</td></tr>
								<c:forEach items="${messages.list}" var="value">
									 <tr><td style="font-size: 14px;" align='center'>
										${value}
								     </td></tr>
								</c:forEach>
								
					</table>
					<table width='100%'>
						<tr><td align="center">
									<input type="button" align="middle" class="button" value="确定" onclick="winSub('${action_return_event}','${action_return_event_url}')" />
							</td></tr>
					</table>
	</body>
</html>
