<%@ page language="java" contentType="text/html;charset=gb2312"%>
<h2>被包含页</h2>
<p>接受到的参数:</p>
<%
	String strName = request.getParameter("name"); // 接受参数
	String strAge = request.getParameter("age"); 
	String strSex = request.getParameter("sex"); 
%>
<%--输出参数内容--%>
<%="name参数值为" + strName %>
<%=",age参数值为" + strAge %>
<%=",sex参数值为" + strSex %>

