<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title>ע���</title>
</head>
<body>
<center>
	<form action="Register.jsp" method="post">
	<table>
		<tr>
			<td colspan="2">�û�ע��</td>
		</tr>
		<tr>
			<td>�û�����</td>
			<td><input type="text" name="username"></td>
		</tr>
		<tr>
			<td>��&nbsp;&nbsp;�룺</td>
			<td><input type="password" name="userpassword"></td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="submit" value="ע��">
			<input type="reset" value="����">
			</td>
		</tr>
	</table>
	</form>
</center>
</body>
</html>
