<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>application��Χ</title>
</head>
<body>
	<%-- ȡ��application��Χ����--%>
	<%
		String strName = (String)application.getAttribute("name");  //ȡֵ����name��ֵ
		out.println("application��Χ��name����ֵΪ" + strName);
	%>
</body>
</html>
