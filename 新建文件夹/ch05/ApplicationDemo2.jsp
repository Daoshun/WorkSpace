<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>通过application对象获得其他信息</title>
</head>
<body>
	<% 
		String str = application.getMimeType("ApplicationDemo.jsp"); //获得指定文件的MIME类型
		ServletContext s = application.getContext("ApplicationDemo.jsp"); //获得指定Local的Application context
		String path = application.getRealPath("/"); //获得指定path的绝对路径
	%>
	<%=str %>
	<%=s %>
	<%=path %>
</body>
</html>
