<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>表单</title>
</head>
<body>
	<form action="RequestDemo4.jsp" method="post">
		用户名:<input type="text" name="username"/><br>
		用户密码:<input type="password" name="userpassword"/><br>
		喜欢的运动：
		<input type="checkbox" name="sport" value="pingpang">乒乓球 
		<input type="checkbox" name="sport" value="basketball">篮球 
		<input type="checkbox" name="sport" value="football">足球<br>
		<input type="submit" value="提交">
	</form>
</body>
</html>
