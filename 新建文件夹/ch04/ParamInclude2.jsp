<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
  <head>
    <title>����JSP�ļ������ݶ������</title>
  </head>
  <body>
   	ʹ��include����Ԫ�ذ���һ������JSP�ļ��������ݶ������<br>
   	<jsp:include page="contentDemo2.jsp">
   		<jsp:param name="name" value="Jame"/>
   		<jsp:param name="age" value="19"/>
   		<jsp:param name="sex" value="man"/>
   	</jsp:include>
  </body>
</html>
