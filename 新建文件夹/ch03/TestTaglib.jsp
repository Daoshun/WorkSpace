<%@ page contentType="text/html;charset=GB2312" %>
<%--声明页面中将要引用的标签库--%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <title>taglib指令使用示例</title>
  </head>
  <body>

<form action="/jsp/a.jsp" id="" name="">
<table>
<tr>
<td> 用户名：</td>
<td><input type="text" id="username" name="username" value="" size=50></td>
</tr>
<tr>
<td>密码：</td>
<td><input type="password" id="userPassword" name="userPassword" value="" size=50></td>
</tr>
<tr>
<td colspan=2><input type="submit" value="登陆 "></td>
</tr>
</table>





<button type="submit" value="登录">
</form>








    <%--使用JSTL标签输出字符串--%>
    <core:out value="Hello, World!" />
    <core:out value="JSP"/>
    <%= "JSP" %>
  </body>
</html>

