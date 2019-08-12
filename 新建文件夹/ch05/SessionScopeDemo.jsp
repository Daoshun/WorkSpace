<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>session范围</title>
</head>
<body>
	<%-- 在session范围设置属性 --%>
	<% 
		session.setAttribute("name","James");   //设置属性name,其值为James
	%>
	<a href="SessionScopeDemo2.jsp">SessionScopeDemo2.jsp</a>
</body>
</html>
