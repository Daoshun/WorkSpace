<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>设置页面自动跳转</title>
</head>
<body>
	<%-- 使用response对象的setIntHeader实现页面自动刷新--%>
	<%
		response.setHeader("Refresh","10;URL=http://www.baidu.com");
	%>
	<h4>该页面10秒后自动跳转到百度首页</h4>
</body>
</html>
