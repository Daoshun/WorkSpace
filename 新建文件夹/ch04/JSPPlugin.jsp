<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
  <head>
    <title>执行Applet</title>
  </head>
  <body>
	<jsp:plugin code="Clock.class" codebase="Applet" type="applet">
		<jsp:params>
			<jsp:param name="bgcolor" value="000000"/>
			<jsp:param name="fgcolor1" value="ff0000"/>
			<jsp:param name="fgcolor2" value="00ff00"/>	
		</jsp:params>
		<jsp:fallback>
			不能加载该Applet
		</jsp:fallback>
	</jsp:plugin>
  </body>
</html>
