<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>����JDBC��������</title>
</head>
<body>
	<% 
		try {
			Class.forName("com.mysql.jdbc.Drive"); //����JDBC��������
		} catch (ClassNotFoundException e) {
			out.println("�Ҳ���������");
		}
	%>
</body>
</html>
