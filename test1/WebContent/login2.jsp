<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html>
<title></title>
<%
    String username="";
    if(request.getParameter("username")!=null){
       username=request.getParameter("username");
    }
	
	    String userpassword="";
    if(request.getParameter("upassword")!=null){
       userpassword=request.getParameter("upassword");
    }
	
	session.setAttribute("name",username);
	session.setAttribute("ups",userpassword);
	
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
     <a href="login3.jsp">session</a>
   </table>
</form>
</body>
</html>