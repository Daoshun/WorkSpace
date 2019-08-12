<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>通过application对象获得服务器Servlet版本</title>
</head>
<body>
	<% 
		int magorVersion = application.getMajorVersion(); //主要的servlet API版本
		int minorVersion = application.getMinorVersion(); //次要的servlet API版本
		String info = application.getServerInfo(); //服务器版本
	%>
	<%="主要的serlet API版本：" + magorVersion %><br>
	<%="次要的serlet API版本：" + minorVersion %><br>
	<%="服务器版本：" + info %>
</body>
</html>
