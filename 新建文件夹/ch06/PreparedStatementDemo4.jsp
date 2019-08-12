<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title>ͨ��PreparedStatememt���ָ����¼</title>
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
			Class.forName("com.mysql.jdbc.Driver");//����JDBC�������� 
			conn = DriverManager.getConnection(url,user,password);//����MySQL���ݿ�
		}catch (ClassNotFoundException e) {
			out.println("�Ҳ���������");
		} catch (SQLException e) {
			out.println("����MySQL���ݿ�ʧ��");
		}
		try{
			//��ѯ�û�
			String queryAll = "SELECT * FROM user limit ?,?;";
			//����Ԥ����������PreparedStatememt
			pstmt = conn.prepareStatement(queryAll);
			// ���ò���
			pstmt.setInt(1,1);
			pstmt.setInt(2,4);
			//ִ�в�ѯ
			ResultSet alluser = pstmt.executeQuery();
			//��ò�ѯ��Ϣ
			while(alluser.next()) {
				int userid = alluser.getInt(1);
				String username = alluser.getString(2);
				String userpassword = alluser.getString(3);
				out.println("�û�id��" + userid + ",");
				out.println("�û�����" + username + ",");
				out.println("�û����룺" + userpassword + "<br>");
			}
		} catch (SQLException e) {
			out.println("��ѯ�û���Ϣʧ��");
		}
		// �ر����ݿ�
		try{
			if(rs != null) {
				rs.close(); //�رս����
				rs = null;
			}
			if(pstmt != null){
				pstmt.close(); //�ر�Ԥ����������
				pstmt = null;
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
