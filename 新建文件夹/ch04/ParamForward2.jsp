<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
  <head>
    <title>跳转并传递参数</title>
  </head>
  <body>
   	使用forward动作元素跳转到另一个JSP文件，并传递参数<br>
   	<jsp:forward page="ForwardedDemo2.jsp">
   		<jsp:param name="name" value="Jame"/>
   		<jsp:param name="age" value="19"/>
   		<jsp:param name="sex" value="man"/>
   	</jsp:forward>
  </body>
</html>
