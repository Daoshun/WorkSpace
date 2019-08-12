<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title>通过PreparedStatememt获得指定记录</title>
</head>
<body>
	<% 
		String url = "jdbc:mysql://localhost:3306/javaweb";
		String user = "root";
		String password = "admin";
		Connection conn = null;
		PreparedStatement pstmt = null;
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
			//查询用户
			String queryAll = "SELECT * FROM user limit ?,?;";
			//创建预处理语句对象PreparedStatememt
			pstmt = conn.prepareStatement(queryAll);
			// 设置参数
			pstmt.setInt(1,1);
			pstmt.setInt(2,4);
			//执行查询
			ResultSet alluser = pstmt.executeQuery();
			//获得查询信息
			while(alluser.next()) {
				int userid = alluser.getInt(1);
				String username = alluser.getString(2);
				String userpassword = alluser.getString(3);
				out.println("用户id：" + userid + ",");
				out.println("用户名：" + username + ",");
				out.println("用户密码：" + userpassword + "<br>");
			}
		} catch (SQLException e) {
			out.println("查询用户信息失败");
		}
		// 关闭数据库
		try{
			if(rs != null) {
				rs.close(); //关闭结果集
				rs = null;
			}
			if(pstmt != null){
				pstmt.close(); //关闭预处理语句对象
				pstmt = null;
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
