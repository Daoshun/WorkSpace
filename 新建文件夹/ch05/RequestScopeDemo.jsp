<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>request��Χ</title>
</head>
<body>
	<%-- ��request��Χ�������� --%>
	<% 
		request.setAttribute("name","James");   //��������name,��ֵΪJames
	%>
	<jsp:forward page="RequestScopeDemo2.jsp"></jsp:forward>
</body>
</html>
