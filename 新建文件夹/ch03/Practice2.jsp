<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312"%>
<html>
  <head>
    <title>����Java��</title>
  </head>
  <body>
	<%
		ArrayList<String> arr = new ArrayList<String>();  //����һ��ArrayListʵ������
		arr.add("C����"); //���Ԫ��
		arr.add("C++����");
		arr.add("Java����");
	%>
	<%--ȡ����һ��Ԫ�أ������ --%>
	<%=arr.get(0) %><br>
	<%--ȡ���ڶ���Ԫ�أ������ --%>
	<%=arr.get(1) %><br>
	<%--ȡ��������Ԫ�أ������ --%>
	<%=arr.get(2) %>
  </body>
</html>
