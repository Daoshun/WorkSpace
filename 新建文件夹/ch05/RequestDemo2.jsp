<%@ page language="java" contentType="text/html;charset=gb2312" import="java.util.*"%>
<html>
<head>
	<title>使用request对象获得所有参数的参数值</title>
</head>
<body>
	<%-- 通过request对象的getParameterNames --%>
	<% 
		Enumeration e =  request.getParameterNames();   // 获得所有的参数名称
		while(e.hasMoreElements()){                     //遍历Enumeration
			String str = (String)e.nextElement();
			String strRequest = request.getParameter(str);//取得相应参数的参数值
			out.println(str + "参数值为:" + strRequest + "<br>");//打印输出参数名称和参数值
		}
	%>
</body>
</html>
