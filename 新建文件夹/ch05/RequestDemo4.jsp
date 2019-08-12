<%@ page language="java" contentType="text/html;charset=gb2312" import="java.util.*"%>
<html>
<head>
	<title>使用request对象获得封装所有参数值的Map</title>
</head>
<body>
	<%-- 通过request对象的getParameterMap封装所有参数值的Map --%>
	<%
		Map mapParamter = request.getParameterMap();   //获得封装所有参数值的Map
		String[] strUsername = (String[])mapParamter.get("username"); //获得其中username参数值
		out.println("用户名:" + strUsername[0] + "<br>");  //打印输出username参数值
		
		String[] strPassword = (String[])mapParamter.get("userpassword");//获得其中userpassword参数值
		out.println("用户密码:" + strPassword[0] + "<br>");//打印输出userpassword参数值
		
		String[] strSport = (String[])mapParamter.get("sport");//获得其中sport参数值
		out.println("喜欢的运动:");
		for(String sport : strSport){			//遍历打印输出sport参数值
			out.println(sport);
		}
	%>
</body>
</html>
