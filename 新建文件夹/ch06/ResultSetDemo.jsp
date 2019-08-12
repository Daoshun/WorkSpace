<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title>查询所有用户</title>
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
			//查询所有用户
			String queryAll = "SELECT * FROM user;";
			//执行查询
			ResultSet rs = stmt.executeQuery(queryAll);
			//获得所有记录
			while(rs.next()) {
				//获得第一个字段userid的值
				int userid = rs.getInt(1);
				//获得第二个字段username的值
				String username = rs.getString(2);
				//获得第三个字段password的值
				String userpassword = rs.getString(3);
				out.println("用户id：" + userid + ",");
				out.println("用户名：" + username + ",");
				out.println("用户密码：" + userpassword + "<br>");
			}
		} catch (SQLException e) {
			out.println("查询所有用户失败");
		}
	%>
</body>
</html>
