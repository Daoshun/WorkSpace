<%@ page language="java" contentType="text/html" pageEncoding="GBK" import="java.util.*"%>
<%@ page import="com.user.User"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>用户注册</title>
<link rel="stylesheet" type="text/css" href="images/styles.css">
<script type="text/javascript">
	    	function reg(form){
	        	if(form.username.value == ""){
	        		alert("用户不能为空！");
	        		return false;
	        	}
	        	if(form.password.value == ""){
	        		alert("密码不能为空！");
	        		return false;
	        	}

	        	if(form.tel.value == ""){
	        		alert("联系电话不能为空！");
	        		return false;
	        	}
	        	if(form.email.value == ""){
	        		alert("电子邮箱不能为空！");
	        		return false;
	        	}
	    	}
	    	
	    </script>
	    
<% 
       User user = new User() ;
       if(session.getAttribute("user")!=null){					        	
       	user=(User)session.getAttribute("user");
       }
%>
	    
	    
</head>

<body>
	<div align="center">
		<div class="div1">
			<div class="top">修改用户信息</div>
			<div class="bottom">
				<div class="div2">
					<ul>
						<li><a href="reg.jsp">用户注册</a></li>
						<li><a href="login.jsp">用户登录</a></li>
						<li><a href="message.jsp">当前用户</a></li>
						<li><a href="ExitServlet">用户退出</a></li>
					</ul>
				</div>
				<div class="div3">
					<form action="EditServlet" method="post"
						onsubmit="return reg(this);">
						<table align="center" width="450" border="0">
							<tr>
								<td align="right">用户名：</td>
								<td><input type="hidden" name="id" value="<%=user.getId()%>">
								
								<input type="text" name="username" value="<%=user.getUsername()%>"></td>
							</tr>
							<tr>
								<td align="right">密 码：</td>
								<td><input type="password" name="password" value="<%=user.getPassword()%>"></td>
							</tr>

							<tr>
								<td align="right">联系电话：</td>
								<td><input type="text" name="tel" value="<%=user.getTel()%>"></td>
							</tr>
							<tr>
								<td align="right">电子邮箱：</td>
								<td><input type="text" name="email" value="<%=user.getEmail()%>"></td>
							</tr>
							<tr>
								<td colspan="2" align="center"><input type="submit"
									value="保存"> <input type="reset" value="重 置"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
