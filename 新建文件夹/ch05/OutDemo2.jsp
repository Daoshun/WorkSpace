<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>ʹ��out������ʹ�û�������С</title>
</head>
<body>
	<%
		int all = out.getBufferSize(); //��û�������С
		int remain = out.getRemaining(); //���ʣ�໺������С
		int use = all - remain; //ͨ������õ�ʹ�û�������С
		out.println("ʹ�û�������С:" + use); 
	%>
</body>
</html>
