<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
  <head>
    <title>��ת�����ݲ���</title>
  </head>
  <body>
   	ʹ��forward����Ԫ����ת����һ��JSP�ļ��������ݲ���<br>
   	<jsp:forward page="ForwardedDemo2.jsp">
   		<jsp:param name="name" value="Jame"/>
   		<jsp:param name="age" value="19"/>
   		<jsp:param name="sex" value="man"/>
   	</jsp:forward>
  </body>
</html>
