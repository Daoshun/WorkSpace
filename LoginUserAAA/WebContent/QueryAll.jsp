<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page import="com.javaweb.ch13.*"%>
<%@ page import="java.util.*"%>
<html>
<head>
	<title>��ѯ���м�¼</title>
</head>
<body>
	<%
		//ͨ��DAO�������DAOʵ����ʵ��
		UserDAO userDAO = DAOFactory.getUserDAOInstance();
		//��ѯ�����û�
		List<User> all = userDAO.queryAll();
		Iterator<User> iter = all.iterator();
		//������������û���Ϣ
		while(iter.hasNext()) {
			User user = iter.next();
			out.println("�û���:" + user.getUsername());
			out.println(",����:" + user.getPassword() + "<br>");
		}
	%>
</body>
</html>
