<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>设置page范围的JavaBean</title>
</head>
<body>
	<%--通过useBean动作指定调用JavaBean --%>
	<jsp:useBean id="user" scope="page" class="com.javaweb.ch07.UserBean">
	</jsp:useBean>
	<%--设置username属性，其值为page_username --%>
	<jsp:setProperty name="user" property="username" value="page_username"/>
	<%--设置password属性，其值为page_password --%>
	<jsp:setProperty name="user" property="password" value="page_password"/>
	<%--服务器端跳转到PageJavaBeanDemo2.jsp --%>
	<jsp:forward page="PageJavaBeanDemo2.jsp"></jsp:forward>
</body>
</html>
