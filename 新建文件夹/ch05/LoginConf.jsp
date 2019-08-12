<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>登录判断</title>
</head>
<body>
<center>
	<%
		String username = request.getParameter("username") ; //接受用户名参数
		String userpassword = request.getParameter("userpassword") ;//接受用户密码参数
	%>
	<%
		// 判断用户名及密码，如果为指定用户则跳转到登录成功页面
		if("James".equals(username)&&"1234".equals(userpassword)){ 
	%>
			<jsp:forward page="LoginSuccess.jsp"/> 
	<%
		}
		//如果不是指定用户则跳转到登录失败页面
		else{
	%>
			<jsp:forward page="LoginFailure.jsp"/>
	<%
		}
	%>
</center>
</body>
</html>
