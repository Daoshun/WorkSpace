<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>session��Χ</title>
</head>
<body>
	<%-- ��session��Χ�������� --%>
	<% 
		session.setAttribute("name","James");   //��������name,��ֵΪJames
	%>
	<a href="SessionScopeDemo2.jsp">SessionScopeDemo2.jsp</a>
</body>
</html>
