<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>设置并获得session活动时间</title>
</head>
<body>
	<% 
		session.setMaxInactiveInterval(60 * 2); //设置session最大活动时间为2分钟
		int time = session.getMaxInactiveInterval(); //获得session最大活动时间
		out.println("session最大活动时间为:" + time + "秒");
	%>
</body>
</html>
