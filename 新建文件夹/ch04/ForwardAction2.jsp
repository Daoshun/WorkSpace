<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
  <head>
    <title>jsp:forward动作指令</title>
  </head>
  <body>
   	使用jsp:forward动作指令实现服务器端跳转。
   	<%
   		System.out.println("jsp:forward动作指令之前代码被执行");
   	%>
   	<jsp:forward page="Forwarded.jsp"></jsp:forward>
   	<%
   		System.out.println("jsp:forward动作指令之后代码被执行");
   	%>
  </body>
</html>
