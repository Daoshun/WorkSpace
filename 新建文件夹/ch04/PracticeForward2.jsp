<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
  <head>
    <title>��תҳ��2</title>
  </head>
  <body>
   	ʹ��jsp:forward����ָ��ʵ�ַ���������ת��
   	<%-- ʹ��forward����ָ�������ת�������ݲ���--%>
   	<jsp:forward page="PracticeForward3.jsp">
   		<jsp:param name="name" value="123"/>
   	</jsp:forward>
  </body>
</html>
