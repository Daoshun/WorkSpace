<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>���ò����session�ʱ��</title>
</head>
<body>
	<% 
		session.setMaxInactiveInterval(60 * 2); //����session���ʱ��Ϊ2����
		int time = session.getMaxInactiveInterval(); //���session���ʱ��
		out.println("session���ʱ��Ϊ:" + time + "��");
	%>
</body>
</html>
