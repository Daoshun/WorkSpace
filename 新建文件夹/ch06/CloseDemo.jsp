<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title>�ر����ݿ�</title>
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
			Class.forName("com.mysql.jdbc.Driver");//����JDBC�������� 
			conn = DriverManager.getConnection(url,user,password);//����MySQL���ݿ�
		}catch (ClassNotFoundException e) {
			out.println("�Ҳ���������");
		} catch (SQLException e) {
			out.println("����MySQL���ݿ�ʧ��");
		}
		try{
			//����������Statement
			stmt = conn.createStatement(); 
			//��ѯ�ڶ�����¼��ʼ�������û���¼
			String queryAll = "SELECT * FROM user limit 1,3;";
			//ִ�в�ѯ
			rs = stmt.executeQuery(queryAll);
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
		// �ر����ݿ�
		try{
			if(rs != null) {
				rs.close(); //�رս����
				rs = null;
			}
			if(stmt != null){
				stmt.close(); //�ر�������
				stmt = null;
			}
			if(conn != null) {
				conn.close(); //�ر����ݿ�����
				conn = null;
			}
		}catch(Exception e) {
			out.println("���ݿ�ر��쳣");
		}
	%>
</body>
</html>
