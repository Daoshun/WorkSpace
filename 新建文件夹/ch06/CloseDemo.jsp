<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title>关闭数据库</title>
</head>
<body>
	<% 
		String url = "jdbc:mysql://localhost:3306/javaweb";
		String user = "root";
		String password = "admin";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
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
			stmt = conn.createStatement(); 
			//查询第二条记录开始的三条用户记录
			String queryAll = "SELECT * FROM user limit 1,3;";
			//执行查询
			rs = stmt.executeQuery(queryAll);
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
		// 关闭数据库
		try{
			if(rs != null) {
				rs.close(); //关闭结果集
				rs = null;
			}
			if(stmt != null){
				stmt.close(); //关闭语句对象
				stmt = null;
			}
			if(conn != null) {
				conn.close(); //关闭数据库连接
				conn = null;
			}
		}catch(Exception e) {
			out.println("数据库关闭异常");
		}
	%>
</body>
</html>
