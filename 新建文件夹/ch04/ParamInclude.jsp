<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
  <head>
    <title>包含JSP文件并传递参数</title>
  </head>
  <body>
   	使用include动作元素包含一个包含JSP文件，并传递参数<br>
   	<jsp:include page="contentDemo.jsp">
   		<jsp:param name="age" value="19"/>
   	</jsp:include>
  </body>
</html>
