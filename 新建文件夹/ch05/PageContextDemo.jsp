<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>ͨ��pageContext����ȡ�ò�ͬ��Χ������</title>
</head>
<body>
	<% 
		pageContext.setAttribute("name","page_James");//����page��Χname����
		request.setAttribute("name","request_James");//����request��Χname����
		session.setAttribute("name","session_James");//����session��Χname����
		application.setAttribute("name","application_James");//����application��Χname����
	%>
	<% 
		String pageStr = (String)pageContext.getAttribute("name",pageContext.PAGE_SCOPE);//���page��Χname����
		String requestStr = (String)pageContext.getAttribute("name",pageContext.REQUEST_SCOPE);//���request��Χname����
		String sessionStr = (String)pageContext.getAttribute("name",pageContext.SESSION_SCOPE);//���session��Χname����
		String applicationStr = (String)pageContext.getAttribute("name",pageContext.APPLICATION_SCOPE);//���application��Χname����
	%>
	<%="page��Χ��name����ֵ" + pageStr%><br>
	<%="request��Χ��name����ֵ" + requestStr%><br>
	<%="session��Χ��name����ֵ" + sessionStr%><br>
	<%="application��Χ��name����ֵ" + applicationStr%>
</body>
</html>
