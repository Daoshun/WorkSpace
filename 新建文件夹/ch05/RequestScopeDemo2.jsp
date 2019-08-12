<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>request范围</title>
</head>
<body>
	<%-- 取得request范围属性--%>
	<%
		String strName = (String)request.getAttribute("name");  //取值属性name的值
		out.println("request范围：name属性值为" + strName);
	%>	
</body>
</html>
