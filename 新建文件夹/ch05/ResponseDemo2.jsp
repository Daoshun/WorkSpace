<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>设置页面自动刷新</title>
</head>
<body>
	<%-- 使用response对象的setIntHeader实现页面自动刷新--%>
	<%
		response.addIntHeader("Refresh",10);
	%>
	<h4>该页面10秒后自动刷新</h4>
</body>
</html>
