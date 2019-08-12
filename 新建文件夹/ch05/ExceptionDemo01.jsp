<%@ page language="java" contentType="text/html;charset=gb2312" isErrorPage="true"%>
<%@page import="java.io.PrintStream"%>
<html>
<head>
	<title>´¦Àí´íÎóÒì³£</title>
</head>
<body>
	<%=exception%><br>
	<%=exception.getMessage()%><br>
	<%=exception.getLocalizedMessage()%><br>
	<%
		exception.printStackTrace(new java.io.PrintWriter(out));
	%>
</body>
</html>
