<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>application范围</title>
</head>
<body>
	<%-- 取得application范围属性--%>
	<%
		String strName = (String)application.getAttribute("name");  //取值属性name的值
		out.println("application范围：name属性值为" + strName);
	%>
</body>
</html>
