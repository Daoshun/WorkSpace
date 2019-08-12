<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>获得session的其他信息</title>
</head>
<body>
	<% 
		long creatTime = session.getCreationTime(); //取得session生成的时间
		out.println("session生成的时间：" + creatTime + "<br>");
		String sessionID = session.getId();//取得session的ID
		out.println("session的ID:" + sessionID+ "<br>");
		long lastTime = session.getLastAccessedTime();//取得最后通过session发送请求时间
		out.println("最后通过session发送请求时间:" + lastTime+ "<br>");
		boolean isnew = session.isNew();//session是不是新的
		out.println("是否为新的:" + isnew); 
	%>
</body>
</html>
