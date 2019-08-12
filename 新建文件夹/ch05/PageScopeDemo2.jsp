<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>page范围</title>
</head>
<body>
	<%-- 取得page范围属性--%>
	<%
		String strName = (String)pageContext.getAttribute("name");  //取值属性name的值
		out.println("page范围：name属性值为" + strName);
	%>	
</body>
</html>
