<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>ʹ��request������ܲ���</title>
</head>
<body>
	<%-- ͨ��request�����getParameter���ܲ��� --%>
	<% 
		request.setCharacterEncoding("gb2312"); //���ñ����ʽ
		String username = request.getParameter("username");  //���ܲ���
		out.println("�û�����" + username); //�������ֵ
	%>
</body>
</html>
