<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
  <head>
    <title>��תҳ��1</title>
  </head>
  <body>
   	ʹ��jsp:forward����ָ��ʵ�ַ���������ת��
   	<%-- ʹ��forward����ָ�������ת,�����ݲ���--%>
   	<jsp:forward page="PracticeForward2.jsp">
   		<jsp:param name="name" value="YaoMing"/>
   	</jsp:forward>
  </body>
</html>
