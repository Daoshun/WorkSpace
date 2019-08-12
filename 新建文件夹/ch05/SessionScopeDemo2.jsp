<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>session范围</title>
</head>
<body>
	<%-- 取得session范围属性--%>
	<%
		String strName = (String)session.getAttribute("name");  //取值属性name的值
		out.println("session范围：name属性值为" + strName);
	%>
</body>
</html>
