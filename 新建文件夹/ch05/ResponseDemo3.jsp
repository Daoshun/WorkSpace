<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>����ҳ���Զ���ת</title>
</head>
<body>
	<%-- ʹ��response�����setIntHeaderʵ��ҳ���Զ�ˢ��--%>
	<%
		response.setHeader("Refresh","10;URL=http://www.baidu.com");
	%>
	<h4>��ҳ��10����Զ���ת���ٶ���ҳ</h4>
</body>
</html>
