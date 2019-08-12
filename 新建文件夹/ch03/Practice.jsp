<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
  <head>
    <title>包含混合文件</title>
  </head>
  <body>
  	包含文本文件，文件内容如下。<br>
   	<%@ include file="content.txt"%><br>
   	包含HTML文件，文件内容如下。<br>
   	<%@ include file="content.html"%><br>
   	包含JSP文件，文件内容如下。<br>
   	<%@ include file="content.jsp"%>
  </body>
</html>
