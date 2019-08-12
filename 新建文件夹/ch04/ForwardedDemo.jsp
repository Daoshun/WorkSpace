<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
  <head>
    <title>跳转到的页面</title>
  </head>
  <body>
	<h2>跳转到的页面</h2>
	<p>接受到的参数:</p>
	<%
		String strAge = request.getParameter("age"); // 接受参数
	%>
	<%--输出参数内容--%>
	<%="age参数值为" + strAge %>	
  </body>
</html>
