<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title>����MySQL���ݿ�</title>
</head>
<body>
	<% 
		try {
			Class.forName("com.mysql.jdbc.Driver");//����JDBC�������� 
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/javaweb?user=root&password=admin");//����MySQL���ݿ�
		}catch (ClassNotFoundException e) {
			out.println("�Ҳ���������");
		} catch (SQLException e) {
			out.println("����MySQL���ݿ�ʧ��");
		}
	%>
</body>
</html>
