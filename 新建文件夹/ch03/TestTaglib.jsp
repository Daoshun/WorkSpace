<%@ page contentType="text/html;charset=GB2312" %>
<%--����ҳ���н�Ҫ���õı�ǩ��--%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <title>taglibָ��ʹ��ʾ��</title>
  </head>
  <body>

<form action="/jsp/a.jsp" id="" name="">
<table>
<tr>
<td> �û�����</td>
<td><input type="text" id="username" name="username" value="" size=50></td>
</tr>
<tr>
<td>���룺</td>
<td><input type="password" id="userPassword" name="userPassword" value="" size=50></td>
</tr>
<tr>
<td colspan=2><input type="submit" value="��½ "></td>
</tr>
</table>





<button type="submit" value="��¼">
</form>








    <%--ʹ��JSTL��ǩ����ַ���--%>
    <core:out value="Hello, World!" />
    <core:out value="JSP"/>
    <%= "JSP" %>
  </body>
</html>

