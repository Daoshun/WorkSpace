<%@ page pageEncoding="gb2312"%>
<html>
  <head>
    <title>Practice</title>
  </head>
  <body>
  	<% 
  		int a = 2;  //声明变量a,其值为2
  		int b = 1;  //声明变量b,其值为1
  		int c = 0;	//声明变量c,其值为0
  	%>
  	<%
  		c = a + b;  //对a,b进行加法运算,并将值赋值给c 
  	%>
  	<%-- 输出c的值--%>
  	<%= a + " + " + b + " = " + c + "<br>" %>
  	
  	<%
  		c = a - b;  //对a,b进行减法运算,并将值赋值给c 
  	%>
  	<%= a + " - " + b + " = " + c + "<br>" %>
  	
  	<%
  		c = a * b;  //对a,b进行乘法运算,并将值赋值给c 
  	%>
  	<%= a + " * " + b + " = " + c + "<br>" %>		
  		
  	<%
  		c = a / b;  //对a,b进行除法运算,并将值赋值给c 
  	%>
  	<%= a + " / " + b + " = " + c + "<br>" %>
  </body>
</html>
