<%@ page language="java" contentType="text/html" pageEncoding="GBK"%>
<%@ page import="com.user.User" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>��ʾ��Ϣ</title>
		<link rel="stylesheet" type="text/css" href="images/styles.css">
	</head>

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
				  			<li><a href="QueryServlet">�û���ѯ</a></li>
<!--				  			<li><a href="queryUserList.jsp">�û�ɾ��</a></li>
-->
				  		</ul>
				  	</div>
				  	 <div class="div3"> 
					    <% 
					    	// ��ȡ��ʾ��Ϣ
							String info = (String)request.getAttribute("info");
					    	// �����ʾ��Ϣ��Ϊ�գ��������ʾ��Ϣ
							if(info != null){
								out.println(info);
							}
					    	// ��ȡ��¼���û���Ϣ
							User user = (User)session.getAttribute("user");
					    	// �ж��û��Ƿ��¼
							if(user != null){
						%>
						<table align="center" width="350" border="1" height="200" bordercolor="#E8F4CC">
							<tr>
					    		<td align="center" colspan="2">
					    			<span style="font-weight: bold;font-size: 18px;"><%=user.getUsername() %></span>
					    			��¼�ɹ���
					    		</td>
					    	</tr>
					    	<tr>
					    		<td align="right" width="30%">ͷ ��</td>
					    		<td>
					    			<img src="<%=user.getPhoto()%>">
					    		</td>
					    	</tr>
					    	<tr>
					    		<td align="right">�� ��</td>
					    		<td><%=user.getSex()%></td>
					    	</tr>
					    	<tr>
					    		<td align="right">��ϵ�绰��</td>
					    		<td><input type="text" name="uusername" value="<%=user.getTel()%>"></td>
					    	</tr>
					    	<tr>
					    		<td align="right">�������䣺</td>
					    		<td><%=user.getEmail()%></td>
					    	</tr>
					    	<tr>
					    		<td align="right">��ַ��</td>
					    		<td><%=user.getAddress()%></td>
					    	</tr>	
					    	<tr>
					    		<td align="right">ʱ�䣺</td>
					    		<td><%=user.getTime()%></td>
					    	</tr>
					    	
					  		<ul>
					  			<li><a href="QueryServlet">�û���ѯ</a></li>
					  		</ul>
					  		<!-- 
					  							    	
						    <tr>
						    <td>Ոݔ���Ñ�����<input type="text" name="qusername" value=""><input type="submit" value="��ԃ"></td>
						    </tr>
						     
					    	<tr>
					    		<td align="right">��ѯ��</td>
					    		<td>
					    			<input type="text" name="user">
					    		</td>
					    	</tr>
					    	-->				    	
					    	<tr>
					    		<td colspan="1" align="center">
					    			<input type="submit" value="�û���ѯ">
					    		</td>
						    	<td>
					    			<input type="text" name="user">
					    		</td>
						    </tr>
						    </form>	
							<table>
							  <tr>
							     <td>Ոݔ���Ñ�����<input type="text" name="qusername" value=""><input type="submit" value="��ԃ"></td>
							  </tr>
							</table>
							</form>					    					    	
						</table>
						<%								
							}else{
								out.println("<br>�Բ�������û�е�¼��");
							}
						%>
				  	 </div>
				</div>
		  	</div>
	  </div>
	</body>
</html>
