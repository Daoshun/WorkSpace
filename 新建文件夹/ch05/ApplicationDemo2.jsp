<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>ͨ��application������������Ϣ</title>
</head>
<body>
	<% 
		String str = application.getMimeType("ApplicationDemo.jsp"); //���ָ���ļ���MIME����
		ServletContext s = application.getContext("ApplicationDemo.jsp"); //���ָ��Local��Application context
		String path = application.getRealPath("/"); //���ָ��path�ľ���·��
	%>
	<%=str %>
	<%=s %>
	<%=path %>
</body>
</html>
