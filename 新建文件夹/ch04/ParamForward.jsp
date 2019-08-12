<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
  <head>
    <title>跳转并传递参数</title>
  </head>
  <body>
   	使用forward动作元素跳转到另一个JSP文件，并传递参数<br>
   	<jsp:forward page="ForwardedDemo.jsp">
   		<jsp:param name="age" value="19"/>
   	</jsp:forward>
  </body>
</html>
