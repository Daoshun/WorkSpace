<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title>�����û���¼</title>
</head>
<body>
	<% 
		String url = "jdbc:mysql://localhost:3306/javaweb";
		String user = "root";
		String password = "admin";
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");//����JDBC�������� 
			conn = DriverManager.getConnection(url,user,password);//����MySQL���ݿ�
		}catch (ClassNotFoundException e) {
			out.println("�Ҳ���������");
		} catch (SQLException e) {
			out.println("����MySQL���ݿ�ʧ��");
		}
		try{
			//����������Statement
			Statement stmt = conn.createStatement(); 
			//����useridΪ1���û���Ϣ������������Ϊ12345
			String updateUser = "UPDATE user SET password = '12345' WHERE userid=1;";
			//ִ�и���
			stmt.executeUpdate(updateUser);
		} catch (SQLException e) {
			out.println("�����û���Ϣʧ��");
		}
	%>
</body>
</html>
