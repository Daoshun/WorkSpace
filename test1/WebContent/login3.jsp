<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html>
<title></title>
<%
    String username="";
    if(session.getAttribute("name")!=null){
       username=(String)session.getAttribute("name");
    }
	
	    String userpassword="";
    if(session.getAttribute("ups")!=null){
       userpassword=(String)session.getAttribute("ups");
    }
	
%>
</head>
<body>
<form action="login2.jsp" name="form1" id="form1">
   <table>
    <tr>
      <td colspan="2">��ӭ����javaѧϰϵͳ</td>
     </tr>
        <tr>
         <td >�û���</td>
         <td ><%=username%></td>
     </tr>
        <tr>
          <td >����</td>
         <td ><%=userpassword%></td>
     </tr>
     <a href="login3.jsp"></a>
   </table>
   
   
   




</form>
</body>
</html>