<%@ page language="java" contentType="text/html;charset=gb2312" import="java.util.*"%>
<html>
<head>
	<title>ʹ��request�����ò��������в���ֵ</title>
</head>
<body>
	<%-- ͨ��request�����getParameterValues��ò��������в���ֵ --%>
	<%
		String[] strArr = request.getParameterValues("sport");   //������еĲ���ֵ
		out.println("ϲ�����˶���");
		for(String str : strArr) {                              //�����ַ�������ȡ������ֵ
			out.println(str);
		}
	%>
</body>
</html>
