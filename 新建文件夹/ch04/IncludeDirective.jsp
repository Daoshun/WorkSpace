<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
  <head>
    <title>包含一个包含JSP代码的文本文件</title>
  </head>
  <body>
   	使用include指令元素包含一个包含JSP代码的文本文件<br>
   	当前日期与时间：<%@ include file="content2.txt"%>
  </body>
</html>
