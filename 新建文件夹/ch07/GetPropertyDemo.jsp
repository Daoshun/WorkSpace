<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>获得JavaBean属性</title>
</head>
<body>
	<%--通过userBean动作指定调用UserBean --%>
	<jsp:useBean id="user" scope="page" class="com.javaweb.ch07.UserBean">
	</jsp:useBean>
	<%--设置username属性，其值为admin --%>
	<jsp:setProperty name="user" property="username" value="admin"/>
	<%--设置password属性，其值为admin --%>
	<jsp:setProperty name="user" property="password" value="admin"/>
	<%--获得username属性 --%>
	<jsp:getProperty name="user" property="username"/>
	<%--获得password属性--%>
	<jsp:getProperty name="user" property="password"/>
</body>
</html>
