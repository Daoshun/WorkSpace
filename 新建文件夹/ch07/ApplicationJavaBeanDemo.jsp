<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>设置application范围的JavaBean</title>
</head>
<body>
	<%--通过useBean动作指定调用JavaBean --%>
	<jsp:useBean id="user" scope="application" class="com.javaweb.ch07.UserBean">
	</jsp:useBean>
	<%--设置username属性，其值为application_username --%>
	<jsp:setProperty name="user" property="username" value="application_username"/>
	<%--设置password属性，其值为application_password --%>
	<jsp:setProperty name="user" property="password" value="application_password"/>
	<%--跳转到ApplicationJavaBeanDemo2.jsp --%>
	<a href="ApplicationJavaBeanDemo2.jsp">跳转到ApplicationJavaBeanDemo2.jsp</a>
</body>
</html>