<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page info="this is the page Object Practice" %>
<html>
<head>
	<title>page对象</title>
</head>
<body>
	<%--通过page对象调用Servlet中的getServletInfo()方法 --%>
	<% 
		String info = ((javax.servlet.jsp.HttpJspPage)page).getServletInfo();
	%>
	<%=info %>
</body>
</html>
