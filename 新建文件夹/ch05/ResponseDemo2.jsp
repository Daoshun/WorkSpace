<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>����ҳ���Զ�ˢ��</title>
</head>
<body>
	<%-- ʹ��response�����setIntHeaderʵ��ҳ���Զ�ˢ��--%>
	<%
		response.addIntHeader("Refresh",10);
	%>
	<h4>��ҳ��10����Զ�ˢ��</h4>
</body>
</html>
