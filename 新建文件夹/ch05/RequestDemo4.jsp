<%@ page language="java" contentType="text/html;charset=gb2312" import="java.util.*"%>
<html>
<head>
	<title>ʹ��request�����÷�װ���в���ֵ��Map</title>
</head>
<body>
	<%-- ͨ��request�����getParameterMap��װ���в���ֵ��Map --%>
	<%
		Map mapParamter = request.getParameterMap();   //��÷�װ���в���ֵ��Map
		String[] strUsername = (String[])mapParamter.get("username"); //�������username����ֵ
		out.println("�û���:" + strUsername[0] + "<br>");  //��ӡ���username����ֵ
		
		String[] strPassword = (String[])mapParamter.get("userpassword");//�������userpassword����ֵ
		out.println("�û�����:" + strPassword[0] + "<br>");//��ӡ���userpassword����ֵ
		
		String[] strSport = (String[])mapParamter.get("sport");//�������sport����ֵ
		out.println("ϲ�����˶�:");
		for(String sport : strSport){			//������ӡ���sport����ֵ
			out.println(sport);
		}
	%>
</body>
</html>
