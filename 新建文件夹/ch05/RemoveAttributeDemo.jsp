<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>�Ƴ�����</title>
</head>
<body>
	<%-- ��page��Χ�������� --%>
	<% 
		pageContext.setAttribute("name","James");   //��������name,��ֵΪJames
		pageContext.setAttribute("age","12");   //��������age,��ֵΪ12
		pageContext.setAttribute("sex","��");   //��������sex,��ֵΪ��
	%>
	<%-- �Ƴ�����--%>
	<%
		pageContext.removeAttribute("sex");
	%>
	
	<%-- ȡ��page��Χ����--%>
	<%
		String strName = (String)pageContext.getAttribute("name");  //ȡֵ����name��ֵ
		String strAge = (String)pageContext.getAttribute("age");  //ȡֵ����age��ֵ
		String strSex = (String)pageContext.getAttribute("sex");  //ȡֵ����sex��ֵ
		out.println("page��Χ��name����ֵΪ" + strName + "<br>");
		out.println("page��Χ��age����ֵΪ" + strAge+ "<br>");
		out.println("page��Χ��sex����ֵΪ" + strSex);
	%>	
</body>
</html>
