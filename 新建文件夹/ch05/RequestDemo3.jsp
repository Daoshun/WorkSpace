<%@ page language="java" contentType="text/html;charset=gb2312" import="java.util.*"%>
<html>
<head>
	<title>使用request对象获得参数的所有参数值</title>
</head>
<body>
	<%-- 通过request对象的getParameterValues获得参数的所有参数值 --%>
	<%
		String[] strArr = request.getParameterValues("sport");   //获得所有的参数值
		out.println("喜欢的运动：");
		for(String str : strArr) {                              //遍历字符串数组取出参数值
			out.println(str);
		}
	%>
</body>
</html>
