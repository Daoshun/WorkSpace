<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>移除属性</title>
</head>
<body>
	<%-- 在page范围设置属性 --%>
	<% 
		pageContext.setAttribute("name","James");   //设置属性name,其值为James
		pageContext.setAttribute("age","12");   //设置属性age,其值为12
		pageContext.setAttribute("sex","男");   //设置属性sex,其值为男
	%>
	<%-- 移除属性--%>
	<%
		pageContext.removeAttribute("sex");
	%>
	
	<%-- 取得page范围属性--%>
	<%
		String strName = (String)pageContext.getAttribute("name");  //取值属性name的值
		String strAge = (String)pageContext.getAttribute("age");  //取值属性age的值
		String strSex = (String)pageContext.getAttribute("sex");  //取值属性sex的值
		out.println("page范围：name属性值为" + strName + "<br>");
		out.println("page范围：age属性值为" + strAge+ "<br>");
		out.println("page范围：sex属性值为" + strSex);
	%>	
</body>
</html>
