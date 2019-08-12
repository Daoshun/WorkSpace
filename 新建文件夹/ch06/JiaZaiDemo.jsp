<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>加载JDBC驱动程序</title>
</head>
<body>
	<% 
		try {
			Class.forName("com.mysql.jdbc.Drive"); //加载JDBC驱动程序
		} catch (ClassNotFoundException e) {
			out.println("找不到驱动类");
		}
	%>
</body>
</html>
