<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>通过pageContext对象取得不同范围的属性</title>
</head>
<body>
	<% 
		pageContext.setAttribute("name","page_James");//设置page范围name属性
		request.setAttribute("name","request_James");//设置request范围name属性
		session.setAttribute("name","session_James");//设置session范围name属性
		application.setAttribute("name","application_James");//设置application范围name属性
	%>
	<% 
		String pageStr = (String)pageContext.getAttribute("name",pageContext.PAGE_SCOPE);//获得page范围name属性
		String requestStr = (String)pageContext.getAttribute("name",pageContext.REQUEST_SCOPE);//获得request范围name属性
		String sessionStr = (String)pageContext.getAttribute("name",pageContext.SESSION_SCOPE);//获得session范围name属性
		String applicationStr = (String)pageContext.getAttribute("name",pageContext.APPLICATION_SCOPE);//获得application范围name属性
	%>
	<%="page范围：name属性值" + pageStr%><br>
	<%="request范围：name属性值" + requestStr%><br>
	<%="session范围：name属性值" + sessionStr%><br>
	<%="application范围：name属性值" + applicationStr%>
</body>
</html>
