<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>request��Χ</title>
</head>
<body>
	<%-- ȡ��request��Χ����--%>
	<%
		String strName = (String)request.getAttribute("name");  //ȡֵ����name��ֵ
		out.println("request��Χ��name����ֵΪ" + strName);
	%>	
</body>
</html>
