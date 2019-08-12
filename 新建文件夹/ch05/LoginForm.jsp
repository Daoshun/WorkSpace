<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>用户登录</title>
</head>
<body>
<center>
	<form action="LoginConf.jsp" method="post">
	<table>
		<tr>
			<td colspan="2">用户登录</td>
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
			<input type="submit" value="登录">
			<input type="reset" value="重置">
			</td>
		</tr>
	</table>
	</form>
</center>
</body>
</html>
