<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
  <head>
    <title>��ת����ҳ��</title>
  </head>
  <body>
	<h2>��ת����ҳ��</h2>
	<p>���ܵ��Ĳ���:</p>
	<%
		String strAge = request.getParameter("age"); // ���ܲ���
	%>
	<%--�����������--%>
	<%="age����ֵΪ" + strAge %>	
  </body>
</html>
