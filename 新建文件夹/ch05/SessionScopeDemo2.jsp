<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>session��Χ</title>
</head>
<body>
	<%-- ȡ��session��Χ����--%>
	<%
		String strName = (String)session.getAttribute("name");  //ȡֵ����name��ֵ
		out.println("session��Χ��name����ֵΪ" + strName);
	%>
</body>
</html>
