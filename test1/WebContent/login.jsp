<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html>
<title>Insert title here</title>
<script language="javascript">
  function checkall(){
	  
	  var username=document.getElementById("username").value;
	  var upassword=document.getElementById("upassword").value;
	  if(username!="" && upassword!=""){
		  document.form1.submit();
		  
	  }else{
		  alert("用户名及密码不能为空！");
	  }
  }
</script>
</head>
<body>
<form action="login2.jsp" name="form1" id="form1">
   <table>
    <tr>
      <td colspan="2">欢迎进入java学习系统</td>
     </tr>
        <tr>
         <td >用户名</td>
         <td ><input type="text" value="" size="20" name="username" id="username"></td>
     </tr>
        <tr>
          <td >密码</td>
         <td ><input type="password" value="" size="20" name="upassword" id="upassword"></td>
     </tr>
     <tr>
      <td colspan="2" align=center><input type="submit" value="提交" ></td>
     </tr>
   </table>
   
   
   




</form>
</body>
</html>