<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
  <head>
    <title>跳转页面1</title>
  </head>
  <body>
   	使用jsp:forward动作指令实现服务器端跳转。
   	<%-- 使用forward动作指令进行跳转,并传递参数--%>
   	<jsp:forward page="PracticeForward2.jsp">
   		<jsp:param name="name" value="YaoMing"/>
   	</jsp:forward>
  </body>
</html>
