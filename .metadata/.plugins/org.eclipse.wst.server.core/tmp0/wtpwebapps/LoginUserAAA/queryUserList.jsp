<%@ page language="java" contentType="text/html" pageEncoding="GBK" import="java.util.*"%>
<%@ page import="com.user.User"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>�Ñ���Ϣ�б�</title>
<link rel="stylesheet" type="text/css" href="images/styles.css">
<script>
function SelectAll() {
 var checkboxs=document.getElementsByName("id");
 for (var i=0;i<checkboxs.length;i++) {
  var e=checkboxs[i];
  e.checked=!e.checked;
 }
}

function clearForm(){
	document.queryForm.qusername.value="";	
}

function delSelectAll() {
	 var checkboxs=document.getElementsByName("id");
	 var ids="";
	 var flag=true;
	 for (var i=0;i<checkboxs.length;i++) {
		  var e=checkboxs[i];
		  if(e.checked){
			  flag=false;
			  ids=ids+","+e.value;
		  }
	  }
	 
	 if(flag){
		 alert("��ѡ��ɾ����¼��");
	 }else{
		var form = document.getElementById('delForm');
		document.delForm.ids.value=ids;
		document.delForm.action="DeleServlet?ids="+document.delForm.ids.value;	
		form.submit();
	 }
	}
</script>
</head>
<%      
		// �����������Ϣ
		String qusername = "";
        if(request.getAttribute("qusername")!=null){
        	qusername =(String)request.getAttribute("qusername");
        }
        // ��ȡ��ʾ��Ϣ
		String info = (String)session.getAttribute("info");
    	// �����ʾ��Ϣ��Ϊ�գ��������ʾ��Ϣ
		if(info != null){
			out.println("<script type=text/javascript>");
			out.println("alert('"+info+"')");
			out.println("</script>");
			session.setAttribute("info", null);
		}
%>
<body>
	<div align="center">
		<div class="div1">
					<div class="top">�û��б���Ϣ</div>
					<form action="QueryServlet" name="delForm" id="delForm">
					<input type="hidden" name="ids" value="">
					</form>
					<form action="QueryServlet" name="queryForm" id="queryForm">
					<table>
					  <tr>
					     <td>Ոݔ���Ñ�����<input type="text" name="qusername" value="<%=qusername%>"> 
					     <input type="submit" value="��ԃ"> 
					     <input type="button" value="���" onclick="clearForm()">  
					     <input type="button" value="ɾ��" onclick="delSelectAll()"> 
					     <input type="button" value="����" onclick="window.location.href='reg.jsp'">
					     </td>
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
					        			        
                  <table width="840" height="182" border="0" cellpadding="0" cellspacing="0" bordercolor="#99FFFF">

					     <tr>
						    <td style="BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed" align="center"> <b><input type="checkbox" ame="allChecked" id="allChecked" onclick="SelectAll()"></b> </td>					     
						    <td style="BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed" align="center"> <b>�Ñ�ID</b> </td>					     
							<td style="BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed" align="center"> <b>�Ñ���</b> </td>
				     		<td style="BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed" align="center"> <b>�ܴa</b> </td>
				     		<td style="BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed" align="center"> <b>�绰</b> </td>
				     		<td style="BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed" align="center"> <b>����</b> </td>
				     		<td style="BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed" align="center"> <b>�޸�</b> </td>
				     		<td style="BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed" align="center"> <b>�h��</b> </td>
						</tr>
					      <%
					      
					      Iterator<User> iter = userList.iterator();
							//������������û���Ϣ
							while(iter.hasNext()) {
								User user = iter.next();
								 %>    
						<tr>							
						    <td style="BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed" align="center"><input type="checkbox" name="id" value="<%=user.getId()%>"></td>						
						    <td style="BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed" align="center"><%=user.getId()%></td>						
							<td style="BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed" align="center"><%=user.getUsername()%></td>
				     		<td style="BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed" align="center"><%=user.getPassword()%></td>
				     		<td style="BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed" align="center"><%=user.getTel()%></td>
				     		<td style="BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed" align="center"><%=user.getEmail()%></td>
				     		<td style="BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed" align="center"><a href="QueryUserServlet?id=<%=user.getId()%>">�޸�</a></td>
				     		<td style="BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed" align="center"><a href="DeleteServlet?id=<%=user.getId()%>">�h��</a></td>
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
</body>
</html>