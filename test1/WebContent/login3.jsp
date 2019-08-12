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
      <td colspan="2">欢迎进入java学习系统</td>
     </tr>
        <tr>
         <td >用户名</td>
         <td ><%=username%></td>
     </tr>
        <tr>
          <td >密码</td>
         <td ><%=userpassword%></td>
     </tr>
     <a href="login3.jsp"></a>
   </table>
   
   
   




</form>
</body>
</html>