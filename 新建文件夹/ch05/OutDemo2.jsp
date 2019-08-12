<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>使用out对象求使用缓冲区大小</title>
</head>
<body>
	<%
		int all = out.getBufferSize(); //获得缓冲区大小
		int remain = out.getRemaining(); //获得剩余缓冲区大小
		int use = all - remain; //通过相减得到使用缓冲区大小
		out.println("使用缓冲区大小:" + use); 
	%>
</body>
</html>
