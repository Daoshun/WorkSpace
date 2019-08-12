<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312"%>
<html>
  <head>
    <title>导入Java包</title>
  </head>
  <body>
	<%
		ArrayList<String> arr = new ArrayList<String>();  //构造一个ArrayList实例对象
		arr.add("C语言"); //添加元素
		arr.add("C++语言");
		arr.add("Java语言");
	%>
	<%--取出第一个元素，并输出 --%>
	<%=arr.get(0) %><br>
	<%--取出第二个元素，并输出 --%>
	<%=arr.get(1) %><br>
	<%--取出第三个元素，并输出 --%>
	<%=arr.get(2) %>
  </body>
</html>
