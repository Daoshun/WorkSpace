<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title>ɾ���û���¼</title>
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
			//ɾ��useridΪ1���û���Ϣ
			String deleteUser = "DELETE FROM user WHERE userid=1;";
			//ִ��ɾ��
			stmt.executeUpdate(deleteUser);
		} catch (SQLException e) {
			out.println("ɾ���û���Ϣʧ��");
		}
	%>
</body>
</html>
