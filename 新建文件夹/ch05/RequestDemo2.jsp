<%@ page language="java" contentType="text/html;charset=gb2312" import="java.util.*"%>
<html>
<head>
	<title>ʹ��request���������в����Ĳ���ֵ</title>
</head>
<body>
	<%-- ͨ��request�����getParameterNames --%>
	<% 
		Enumeration e =  request.getParameterNames();   // ������еĲ�������
		while(e.hasMoreElements()){                     //����Enumeration
			String str = (String)e.nextElement();
			String strRequest = request.getParameter(str);//ȡ����Ӧ�����Ĳ���ֵ
			out.println(str + "����ֵΪ:" + strRequest + "<br>");//��ӡ����������ƺͲ���ֵ
		}
	%>
</body>
</html>
