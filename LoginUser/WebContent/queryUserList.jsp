<%@ page language="java" contentType="text/html" pageEncoding="GBK" import="java.util.*"%>
<%@ page import="com.user.User"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>�Ñ���Ϣ�б�</title>
<link rel="stylesheet" type="text/css" href="images/styles.css">
</head>
<% 
    	// ��ȡ��ʾ��Ϣ
		String info = (String)session.getAttribute("info");
    	// �����ʾ��Ϣ��Ϊ�գ��������ʾ��Ϣ
    	System.out.println(info);
		if(info != null){
			out.println("<script type=text/javascript>");
			out.println("alert('"+info+"')");
			out.println("</script>");
			//����session��infoΪ��
			session.setAttribute("info", null);
		}
%>
<body>
	<div align="center">
		<div class="div1">
			<div class="top">��ʾ��Ϣ</div>
			<div class="bottom">
				<div class="div2">
					<ul>
						<li><a href="reg.jsp">�û�ע��</a></li>
						<li><a href="login.jsp">�û���¼</a></li>
						<li><a href="message.jsp">��ǰ�û�</a></li>
						<li><a href="ExitServlet">�û��˳�</a></li>
					</ul>
				</div>
				<div class="div3">
					<form action="QueryServlet">
					<table>
					  <tr>
					     <td>Ոݔ���Ñ�����<input type="text" name="qusername" value=""><input type="submit" value="��ԃ"></td>
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
						    <td align="center"><span style="font-weight: bold; font-size: 18px;">�Ñ�ID</td>					     
							<td align="center"><span style="font-weight: bold; font-size: 18px;">�Ñ���</td>
				     		<td align="center"><span style="font-weight: bold; font-size: 18px;">�ܴa</td>
				     		<td align="center"><span style="font-weight: bold; font-size: 18px;">�޸�</td>
				     		<td align="center"><span style="font-weight: bold; font-size: 18px;">�h��</td>
						</tr>
					      <%
					      
					      Iterator<User> iter = userList.iterator();
							//������������û���Ϣ
							while(iter.hasNext()) {
								User user = iter.next();
								 %>    
						<tr>							
						    <td align="center"><span style="font-weight: bold; font-size: 18px;"><%=user.getId()%></td>						
							<td align="center"><span style="font-weight: bold; font-size: 18px;"><%=user.getUsername()%></td>
				     		<td align="center"><span style="font-weight: bold; font-size: 18px;"><%=user.getPassword()%></td>
				     		<td align="center"><span style="font-weight: bold; font-size: 18px;"><a href="QueryUserServlet?id=<%=user.getId()%>">�޸�</a></td>
				     		<td align="center"><span style="font-weight: bold; font-size: 18px;"><a href="DeleServlet?id=<%=user.getId()%>">�h��</a></td>
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