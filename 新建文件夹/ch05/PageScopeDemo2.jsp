<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>page��Χ</title>
</head>
<body>
	<%-- ȡ��page��Χ����--%>
	<%
		String strName = (String)pageContext.getAttribute("name");  //ȡֵ����name��ֵ
		out.println("page��Χ��name����ֵΪ" + strName);
	%>	
</body>
</html>
