<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title>��ѯ�����û�</title>
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
			//��ѯ�����û�
			String queryAll = "SELECT * FROM user;";
			//ִ�в�ѯ
			ResultSet rs = stmt.executeQuery(queryAll);
			//������м�¼
			while(rs.next()) {
				//��õ�һ���ֶ�userid��ֵ
				int userid = rs.getInt(1);
				//��õڶ����ֶ�username��ֵ
				String username = rs.getString(2);
				//��õ������ֶ�password��ֵ
				String userpassword = rs.getString(3);
				out.println("�û�id��" + userid + ",");
				out.println("�û�����" + username + ",");
				out.println("�û����룺" + userpassword + "<br>");
			}
		} catch (SQLException e) {
			out.println("��ѯ�����û�ʧ��");
		}
	%>
</body>
</html>
