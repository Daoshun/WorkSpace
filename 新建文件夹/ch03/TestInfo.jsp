<%@ page info="this is jsp"%>
<html>
  <head>
    <title>TestInfo</title>
  </head>
  <body>
  	<%
  		String str = getServletInfo();
  		out.println(str);
  	 %>
  </body>
</html>

