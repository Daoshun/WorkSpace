<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title>����û���Ϣ</title>
</head>
<body>
	<% 
		// ���ý��ܲ��������ʽ
		request.setCharacterEncoding("gb2312");
		// ���ܲ���username
		String reqUsername = request.getParameter("username");
		// ���ܲ���userpassword
		String reqPassword = request.getParameter("userpassword");
	%>

	<% 
		String url = "jdbc:mysql://localhost:3306/javaweb";
		String user = "root";
		String password = "admin";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");//����JDBC�������� 
			conn = DriverManager.getConnection(url,user,password);//����MySQL���ݿ�
		}catch (ClassNotFoundException e) {
			out.println("�Ҳ���������");
		} catch (SQLException e) {
			out.println("����MySQL���ݿ�ʧ��");
		}
		try{
			//���ע���û���Ϣ
			String addUser = "INSERT INTO user(userid,username,password) VALUES(null,?,?)";
			//����Ԥ����������PreparedStatememt
			pstmt = conn.prepareStatement(addUser);
			//���ò���
			pstmt.setString(1,reqUsername);
			pstmt.setString(2,reqPassword);
			//���ע���û�
			pstmt.executeUpdate();
		} catch (SQLException e) {
			out.println("����û���Ϣʧ��");
			e.printStackTrace();
		}
		// �ر����ݿ�
		try{
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
