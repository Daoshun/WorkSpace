<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
  <head>
    <title>jsp:forward����ָ��</title>
  </head>
  <body>
   	ʹ��jsp:forward����ָ��ʵ�ַ���������ת��
   	<%
   		System.out.println("jsp:forward����ָ��֮ǰ���뱻ִ��");
   	%>
   	<jsp:forward page="Forwarded.jsp"></jsp:forward>
   	<%
   		System.out.println("jsp:forward����ָ��֮����뱻ִ��");
   	%>
  </body>
</html>
