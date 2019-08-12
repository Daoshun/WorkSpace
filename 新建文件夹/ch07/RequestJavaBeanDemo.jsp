<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>设置request范围的JavaBean</title>
</head>
<body>
	<%--通过useBean动作指定调用JavaBean --%>
	<jsp:useBean id="user" scope="request" class="com.javaweb.ch07.UserBean">
	</jsp:useBean>
	<%--设置username属性，其值为request_username --%>
	<jsp:setProperty name="user" property="username" value="request_username"/>
	<%--设置password属性，其值为request_password --%>
	<jsp:setProperty name="user" property="password" value="request_password"/>
	<%--服务器端跳转到RequestJavaBeanDemo2.jsp --%>
	<jsp:forward page="RequestJavaBeanDemo2.jsp"></jsp:forward>
</body>
</html>
