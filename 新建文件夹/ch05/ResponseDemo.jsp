<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>设置页面跳转</title>
</head>
<body>
	<%-- 使用response对象的sendRedirect实现页面跳转--%>
	<%
		response.sendRedirect("DirectPage.jsp");
	%>
</body>
</html>
