<%@ page language="java" contentType="text/html;charset=gb2312"%>
<h2>被包含页</h2>
<p>接受到的参数:</p>
<%
	String strAge = request.getParameter("age"); // 接受参数
%>
<%--输出参数内容--%>
<%="age参数值为" + strAge %>

