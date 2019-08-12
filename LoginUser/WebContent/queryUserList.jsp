<%@ page language="java" contentType="text/html" pageEncoding="GBK" import="java.util.*"%>
<%@ page import="com.user.User"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>用戶信息列表</title>
<link rel="stylesheet" type="text/css" href="images/styles.css">
</head>
<% 
    	// 获取提示信息
		String info = (String)session.getAttribute("info");
    	// 如果提示信息不为空，则输出提示信息
    	System.out.println(info);
		if(info != null){
			out.println("<script type=text/javascript>");
			out.println("alert('"+info+"')");
			out.println("</script>");
			//设置session的info为空
			session.setAttribute("info", null);
		}
%>
<body>
	<div align="center">
		<div class="div1">
			<div class="top">提示信息</div>
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
					<form action="QueryServlet">
					<table>
					  <tr>
					     <td>請輸入用戶名：<input type="text" name="qusername" value=""><input type="submit" value="查詢"></td>
					  </tr>
					</table>
					</form>
					<% 
					        List<User> userList = new ArrayList<User>() ;
					
					        if(session.getAttribute("userList")!=null){					        	
					        	userList=(ArrayList)session.getAttribute("userList");
					        }
					
					        if(userList.size()>0){
					        %>
					     <table align="center" width="350" border="1" height="200"
						bordercolor="#E8F4CC">   
					     <tr>
						    <td align="center"><span style="font-weight: bold; font-size: 18px;">用戶ID</td>					     
							<td align="center"><span style="font-weight: bold; font-size: 18px;">用戶名</td>
				     		<td align="center"><span style="font-weight: bold; font-size: 18px;">密碼</td>
				     		<td align="center"><span style="font-weight: bold; font-size: 18px;">修改</td>
				     		<td align="center"><span style="font-weight: bold; font-size: 18px;">刪除</td>
						</tr>
					      <%
					      
					      Iterator<User> iter = userList.iterator();
							//遍历输出所有用户信息
							while(iter.hasNext()) {
								User user = iter.next();
								 %>    
						<tr>							
						    <td align="center"><span style="font-weight: bold; font-size: 18px;"><%=user.getId()%></td>						
							<td align="center"><span style="font-weight: bold; font-size: 18px;"><%=user.getUsername()%></td>
				     		<td align="center"><span style="font-weight: bold; font-size: 18px;"><%=user.getPassword()%></td>
				     		<td align="center"><span style="font-weight: bold; font-size: 18px;"><a href="QueryUserServlet?id=<%=user.getId()%>">修改</a></td>
				     		<td align="center"><span style="font-weight: bold; font-size: 18px;"><a href="DeleServlet?id=<%=user.getId()%>">刪除</a></td>
						</tr>
								 <%
							}
								
							%>
								</table>	
							<%
							}
					      
					      %>    
					        		
						
				</div>
			</div>
		</div>
	</div>
</body>
</html>
