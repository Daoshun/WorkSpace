<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>设置session范围的JavaBean</title>
</head>
<body>
	<%--通过useBean动作指定调用JavaBean --%>
	<jsp:useBean id="user" scope="session" class="com.javaweb.ch07.UserBean">
	</jsp:useBean>
	<%--设置username属性，其值为session_username --%>
	<jsp:setProperty name="user" property="username" value="session_username"/>
	<%--设置password属性，其值为session_password --%>
	<jsp:setProperty name="user" property="password" value="session_password"/>
	<%--跳转到SessionJavaBeanDemo2.jsp --%>
	<a href="SessionJavaBeanDemo2.jsp">跳转到SessionJavaBeanDemo2.jsp</a>
</body>
</html>
