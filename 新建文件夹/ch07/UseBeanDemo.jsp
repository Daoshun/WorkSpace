<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>����JavaBean</title>
</head>
<body>
	<%--ͨ��useBean����ָ�����JavaBean--%>
	<jsp:useBean id="user" scope="page" class="com.javaweb.ch07.UserBean">
	</jsp:useBean>
	<% 
		// ����user��username����
		user.setUsername("James");
		// ����user��password����
		user.setPassword("1234");
		// ��ӡ���user��username����
		out.println("�û�����" + user.getUsername() + "<br>");
		// ��ӡ���user��password����
		out.println("�û����룺" + user.getPassword());
	%>
</body>
</html>