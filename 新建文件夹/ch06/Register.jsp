<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title>添加用户信息</title>
</head>
<body>
	<% 
		// 设置接受参数编码格式
		request.setCharacterEncoding("gb2312");
		// 接受参数username
		String reqUsername = request.getParameter("username");
		// 接受参数userpassword
		String reqPassword = request.getParameter("userpassword");
	%>

	<% 
		String url = "jdbc:mysql://localhost:3306/javaweb";
		String user = "root";
		String password = "admin";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");//加载JDBC驱动程序 
			conn = DriverManager.getConnection(url,user,password);//连接MySQL数据库
		}catch (ClassNotFoundException e) {
			out.println("找不到驱动类");
		} catch (SQLException e) {
			out.println("连接MySQL数据库失败");
		}
		try{
			//添加注册用户信息
			String addUser = "INSERT INTO user(userid,username,password) VALUES(null,?,?)";
			//创建预处理语句对象PreparedStatememt
			pstmt = conn.prepareStatement(addUser);
			//设置参数
			pstmt.setString(1,reqUsername);
			pstmt.setString(2,reqPassword);
			//添加注册用户
			pstmt.executeUpdate();
		} catch (SQLException e) {
			out.println("添加用户信息失败");
			e.printStackTrace();
		}
		// 关闭数据库
		try{
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
