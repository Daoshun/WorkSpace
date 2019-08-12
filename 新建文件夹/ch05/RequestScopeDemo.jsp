<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>request范围</title>
</head>
<body>
	<%-- 在request范围设置属性 --%>
	<% 
		request.setAttribute("name","James");   //设置属性name,其值为James
	%>
	<jsp:forward page="RequestScopeDemo2.jsp"></jsp:forward>
</body>
</html>
