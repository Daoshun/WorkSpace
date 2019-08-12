<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>设置JavaBean属性</title>
</head>
<body>
	<%--通过useBean动作指定调用JavaBean --%>
	<jsp:useBean id="user" scope="page" class="com.javaweb.ch07.UserBean">
	</jsp:useBean>
	<%--设置username属性，其值为username参数值--%>
	<jsp:setProperty name="user" property="username" param="username"/>
	<%--设置password属性，其值为userpassword参数值--%>
	<jsp:setProperty name="user" property="password" param="userpassword"/>
	<% 
		out.println("用户名：" + user.getUsername() + "<br>");
		out.println("用户密码：" + user.getPassword());
	%>
</body>
</html>
