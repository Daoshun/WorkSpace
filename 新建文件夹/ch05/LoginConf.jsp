<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>��¼�ж�</title>
</head>
<body>
<center>
	<%
		String username = request.getParameter("username") ; //�����û�������
		String userpassword = request.getParameter("userpassword") ;//�����û��������
	%>
	<%
		// �ж��û��������룬���Ϊָ���û�����ת����¼�ɹ�ҳ��
		if("James".equals(username)&&"1234".equals(userpassword)){ 
	%>
			<jsp:forward page="LoginSuccess.jsp"/> 
	<%
		}
		//�������ָ���û�����ת����¼ʧ��ҳ��
		else{
	%>
			<jsp:forward page="LoginFailure.jsp"/>
	<%
		}
	%>
</center>
</body>
</html>
