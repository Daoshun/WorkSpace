<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>���session��������Ϣ</title>
</head>
<body>
	<% 
		long creatTime = session.getCreationTime(); //ȡ��session���ɵ�ʱ��
		out.println("session���ɵ�ʱ�䣺" + creatTime + "<br>");
		String sessionID = session.getId();//ȡ��session��ID
		out.println("session��ID:" + sessionID+ "<br>");
		long lastTime = session.getLastAccessedTime();//ȡ�����ͨ��session��������ʱ��
		out.println("���ͨ��session��������ʱ��:" + lastTime+ "<br>");
		boolean isnew = session.isNew();//session�ǲ����µ�
		out.println("�Ƿ�Ϊ�µ�:" + isnew); 
	%>
</body>
</html>
