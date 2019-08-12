<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>调用JavaBean</title>
</head>
<body>
	<%--通过useBean动作指令调用JavaBean--%>
	<jsp:useBean id="user" scope="page" class="com.javaweb.ch07.UserBean">
	</jsp:useBean>
	<% 
		// 设置user的username属性
		user.setUsername("James");
		// 设置user的password属性
		user.setPassword("1234");
		// 打印输出user的username属性
		out.println("用户名：" + user.getUsername() + "<br>");
		// 打印输出user的password属性
		out.println("用户密码：" + user.getPassword());
	%>
</body>
</html>