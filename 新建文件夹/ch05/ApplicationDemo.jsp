<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>ͨ��application�����÷�����Servlet�汾</title>
</head>
<body>
	<% 
		int magorVersion = application.getMajorVersion(); //��Ҫ��servlet API�汾
		int minorVersion = application.getMinorVersion(); //��Ҫ��servlet API�汾
		String info = application.getServerInfo(); //�������汾
	%>
	<%="��Ҫ��serlet API�汾��" + magorVersion %><br>
	<%="��Ҫ��serlet API�汾��" + minorVersion %><br>
	<%="�������汾��" + info %>
</body>
</html>
