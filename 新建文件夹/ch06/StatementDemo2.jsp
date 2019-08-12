<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title>更新用户记录</title>
</head>
<body>
	<% 
		String url = "jdbc:mysql://localhost:3306/javaweb";
		String user = "root";
		String password = "admin";
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");//加载JDBC驱动程序 
			conn = DriverManager.getConnection(url,user,password);//连接MySQL数据库
		}catch (ClassNotFoundException e) {
			out.println("找不到驱动类");
		} catch (SQLException e) {
			out.println("连接MySQL数据库失败");
		}
		try{
			//创建语句对象Statement
			Statement stmt = conn.createStatement(); 
			//更新userid为1的用户信息，更新其密码为12345
			String updateUser = "UPDATE user SET password = '12345' WHERE userid=1;";
			//执行更新
			stmt.executeUpdate(updateUser);
		} catch (SQLException e) {
			out.println("更新用户信息失败");
		}
	%>
</body>
</html>
