<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page info="this is the page Object Practice" %>
<html>
<head>
	<title>page����</title>
</head>
<body>
	<%--ͨ��page�������Servlet�е�getServletInfo()���� --%>
	<% 
		String info = ((javax.servlet.jsp.HttpJspPage)page).getServletInfo();
	%>
	<%=info %>
</body>
</html>
