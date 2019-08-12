<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>使用request对象接受参数</title>
</head>
<body>
	<%-- 通过request对象的getParameter接受参数 --%>
	<% 
		request.setCharacterEncoding("gb2312"); //设置编码格式
		String username = request.getParameter("username");  //接受参数
		out.println("用户名：" + username); //输出参数值
	%>
</body>
</html>
