<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
  <head>
    <title>����JSP�ļ������ݲ���</title>
  </head>
  <body>
   	ʹ��include����Ԫ�ذ���һ������JSP�ļ��������ݲ���<br>
   	<jsp:include page="contentDemo.jsp">
   		<jsp:param name="age" value="19"/>
   	</jsp:include>
  </body>
</html>
