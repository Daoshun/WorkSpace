<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>���JavaBean����</title>
</head>
<body>
	<%--ͨ��userBean����ָ������UserBean --%>
	<jsp:useBean id="user" scope="page" class="com.javaweb.ch07.UserBean">
	</jsp:useBean>
	<%--����username���ԣ���ֵΪadmin --%>
	<jsp:setProperty name="user" property="username" value="admin"/>
	<%--����password���ԣ���ֵΪadmin --%>
	<jsp:setProperty name="user" property="password" value="admin"/>
	<%--���username���� --%>
	<jsp:getProperty name="user" property="username"/>
	<%--���password����--%>
	<jsp:getProperty name="user" property="password"/>
</body>
</html>
