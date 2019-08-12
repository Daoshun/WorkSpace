<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>移除JavaBean</title>
</head>
<body>
	<%--通过userBean动作指定调用JavaBean --%>
	<jsp:useBean id="user" class="com.javaweb.ch07.UserBean" scope="page">
	</jsp:useBean>
	<%--设置username属性，其值为admin--%>
	<jsp:setProperty name="user" property="username" value="admin"/>
	<%--设置password属性，其值为root --%>
	<jsp:setProperty name="user" property="password" value="root"/>
	<% 
		//移除page范围JavaBean
		pageContext.removeAttribute("user");
	%>
	<%--获得username属性--%>
	<jsp:getProperty name="user" property="username"/>
	<%--获得password属性--%>
	<jsp:getProperty name="user" property="password"/>
</body>
</html>
