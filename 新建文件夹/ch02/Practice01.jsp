ji<%@ page pageEncoding="gb2312"%>

<html>
  <head>
    <title>Practice</title>
  </head>
  
  <body>
  	<%-- ��������a,b,c --%>
  	<% 
  		int a = 2;
  		int b = 1;
  		int c = 0;	
  	%>
  	 
  	<%-- ��a,b���мӷ�����,����ֵ��ֵ��c --%>
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
