<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title>��������û����û�id���û���</title>
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
			//��ѯ�û����û�id���û���
			String queryAll = "SELECT userid,username FROM user;";
			//ִ�в�ѯ
			ResultSet rs = stmt.executeQuery(queryAll);
			//������м�¼
			while(rs.next()) {
				//��õ�һ���ֶ�userid��ֵ
				int userid = rs.getInt(1);
				//��õڶ����ֶ�username��ֵ
				String username = rs.getString(2);
				out.println("�û�id��" + userid + ",");
				out.println("�û�����" + username + "<br>");
			}
		} catch (SQLException e) {
			out.println("��ѯ�����û�ʧ��");
		}
	%>
</body>
</html>
