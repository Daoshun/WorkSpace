ji<%@ page pageEncoding="gb2312"%>

<html>
  <head>
    <title>Practice</title>
  </head>
  
  <body>
  	<%-- 声明变量a,b,c --%>
  	<% 
  		int a = 2;
  		int b = 1;
  		int c = 0;	
  	%>
  	 
  	<%-- 对a,b进行加法运算,并将值赋值给c --%>
  	<%
  		c = a + b;
  	%>
  
  	<%
  		c = a - b;
  		out.println(a + " - " + b + " = " + c + "<br>");
  		c = a * b;
  		out.println(a + " * " + b + " = " + c + "<br>");
  		c = a / b;
  		out.println(a + " / " + b + " = " + c + "<br>");
  	 %>
  </body>
</html>
