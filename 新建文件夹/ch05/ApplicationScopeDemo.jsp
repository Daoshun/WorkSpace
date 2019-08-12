<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>application范围</title>
</head>
<body>
	<%-- 在Application范围设置属性 --%>
	<% 
		application.setAttribute("name","James");   //设置属性name,其值为James
	%>
	<a href="ApplicationScopeDemo2.jsp">ApplicationDemo2.jsp</a>
</body>
</html>
