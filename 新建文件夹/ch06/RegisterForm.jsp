<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title>注册表单</title>
</head>
<body>
<center>
	<form action="Register.jsp" method="post">
	<table>
		<tr>
			<td colspan="2">用户注册</td>
		</tr>
		<tr>
			<td>用户名：</td>
			<td><input type="text" name="username"></td>
		</tr>
		<tr>
			<td>密&nbsp;&nbsp;码：</td>
			<td><input type="password" name="userpassword"></td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="submit" value="注册">
			<input type="reset" value="重置">
			</td>
		</tr>
	</table>
	</form>
</center>
</body>
</html>
