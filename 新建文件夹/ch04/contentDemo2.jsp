<%@ page language="java" contentType="text/html;charset=gb2312"%>
<h2>������ҳ</h2>
<p>���ܵ��Ĳ���:</p>
<%
	String strName = request.getParameter("name"); // ���ܲ���
	String strAge = request.getParameter("age"); 
	String strSex = request.getParameter("sex"); 
%>
<%--�����������--%>
<%="name����ֵΪ" + strName %>
<%=",age����ֵΪ" + strAge %>
<%=",sex����ֵΪ" + strSex %>

