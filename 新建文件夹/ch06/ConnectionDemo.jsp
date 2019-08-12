<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title>连接MySQL数据库</title>
</head>
<body>
	<% 
		try {
			Class.forName("com.mysql.jdbc.Driver");//加载JDBC驱动程序 
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/javaweb?user=root&password=admin");//连接MySQL数据库
		}catch (ClassNotFoundException e) {
			out.println("找不到驱动类");
		} catch (SQLException e) {
			out.println("连接MySQL数据库失败");
		}
	%>
</body>
</html>
