/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.43
 * Generated at: 2019-08-09 00:36:39 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.user.User;

public final class queryUserList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.user.User");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=GBK");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>用戶信息列表</title>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"images/styles.css\">\r\n");
      out.write("<script>\r\n");
      out.write("function SelectAll() {\r\n");
      out.write(" var checkboxs=document.getElementsByName(\"id\");\r\n");
      out.write(" for (var i=0;i<checkboxs.length;i++) {\r\n");
      out.write("  var e=checkboxs[i];\r\n");
      out.write("  e.checked=!e.checked;\r\n");
      out.write(" }\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function clearForm(){\r\n");
      out.write("\tdocument.queryForm.qusername.value=\"\";\t\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function delSelectAll() {\r\n");
      out.write("\t var checkboxs=document.getElementsByName(\"id\");\r\n");
      out.write("\t var ids=\"\";\r\n");
      out.write("\t var flag=true;\r\n");
      out.write("\t for (var i=0;i<checkboxs.length;i++) {\r\n");
      out.write("\t\t  var e=checkboxs[i];\r\n");
      out.write("\t\t  if(e.checked){\r\n");
      out.write("\t\t\t  flag=false;\r\n");
      out.write("\t\t\t  ids=ids+\",\"+e.value;\r\n");
      out.write("\t\t  }\r\n");
      out.write("\t  }\r\n");
      out.write("\t \r\n");
      out.write("\t if(flag){\r\n");
      out.write("\t\t alert(\"请选择删除记录！\");\r\n");
      out.write("\t }else{\r\n");
      out.write("\t\tvar form = document.getElementById('delForm');\r\n");
      out.write("\t\tdocument.delForm.ids.value=ids;\r\n");
      out.write("\t\tdocument.delForm.action=\"DeleServlet?ids=\"+document.delForm.ids.value;\t\r\n");
      out.write("\t\tform.submit();\r\n");
      out.write("\t }\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      
		// 保留输入框信息
		String qusername = "";
        if(request.getAttribute("qusername")!=null){
        	qusername =(String)request.getAttribute("qusername");
        }
        // 获取提示信息
		String info = (String)session.getAttribute("info");
    	// 如果提示信息不为空，则输出提示信息
		if(info != null){
			out.println("<script type=text/javascript>");
			out.println("alert('"+info+"')");
			out.println("</script>");
			session.setAttribute("info", null);
		}

      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\t<div align=\"center\">\r\n");
      out.write("\t\t<div class=\"div1\">\r\n");
      out.write("\t\t\t\t\t<div class=\"top\">用户列表信息</div>\r\n");
      out.write("\t\t\t\t\t<form action=\"QueryServlet\" name=\"delForm\" id=\"delForm\">\r\n");
      out.write("\t\t\t\t\t<input type=\"hidden\" name=\"ids\" value=\"\">\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t<form action=\"QueryServlet\" name=\"queryForm\" id=\"queryForm\">\r\n");
      out.write("\t\t\t\t\t<table>\r\n");
      out.write("\t\t\t\t\t  <tr>\r\n");
      out.write("\t\t\t\t\t     <td>請輸入用戶名：<input type=\"text\" name=\"qusername\" value=\"");
      out.print(qusername);
      out.write("\"> \r\n");
      out.write("\t\t\t\t\t     <input type=\"submit\" value=\"查詢\"> \r\n");
      out.write("\t\t\t\t\t     <input type=\"button\" value=\"清空\" onclick=\"clearForm()\">  \r\n");
      out.write("\t\t\t\t\t     <input type=\"button\" value=\"删除\" onclick=\"delSelectAll()\"> \r\n");
      out.write("\t\t\t\t\t     <input type=\"button\" value=\"增加\" onclick=\"window.location.href='reg.jsp'\">\r\n");
      out.write("\t\t\t\t\t     </td>\r\n");
      out.write("\t\t\t\t\t  </tr>\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t");
 
					        List<User> userList = new ArrayList<User>() ;
					
					        if(session.getAttribute("userList")!=null){					        	
					        	userList=(ArrayList)session.getAttribute("userList");
					        }
					
					        if(userList.size()>0){
					        
      out.write("\r\n");
      out.write("\t\t\t\t\t        \t\t\t        \r\n");
      out.write("                  <table width=\"840\" height=\"182\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bordercolor=\"#99FFFF\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t     <tr>\r\n");
      out.write("\t\t\t\t\t\t    <td style=\"BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed\" align=\"center\"> <b><input type=\"checkbox\" ame=\"allChecked\" id=\"allChecked\" onclick=\"SelectAll()\"></b> </td>\t\t\t\t\t     \r\n");
      out.write("\t\t\t\t\t\t    <td style=\"BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed\" align=\"center\"> <b>用戶ID</b> </td>\t\t\t\t\t     \r\n");
      out.write("\t\t\t\t\t\t\t<td style=\"BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed\" align=\"center\"> <b>用戶名</b> </td>\r\n");
      out.write("\t\t\t\t     \t\t<td style=\"BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed\" align=\"center\"> <b>密碼</b> </td>\r\n");
      out.write("\t\t\t\t     \t\t<td style=\"BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed\" align=\"center\"> <b>电话</b> </td>\r\n");
      out.write("\t\t\t\t     \t\t<td style=\"BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed\" align=\"center\"> <b>邮箱</b> </td>\r\n");
      out.write("\t\t\t\t     \t\t<td style=\"BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed\" align=\"center\"> <b>修改</b> </td>\r\n");
      out.write("\t\t\t\t     \t\t<td style=\"BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed\" align=\"center\"> <b>刪除</b> </td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t      ");

					      
					      Iterator<User> iter = userList.iterator();
							//遍历输出所有用户信息
							while(iter.hasNext()) {
								User user = iter.next();
								 
      out.write("    \r\n");
      out.write("\t\t\t\t\t\t<tr>\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t    <td style=\"BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed\" align=\"center\"><input type=\"checkbox\" name=\"id\" value=\"");
      out.print(user.getId());
      out.write("\"></td>\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t    <td style=\"BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed\" align=\"center\">");
      out.print(user.getId());
      out.write("</td>\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<td style=\"BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed\" align=\"center\">");
      out.print(user.getUsername());
      out.write("</td>\r\n");
      out.write("\t\t\t\t     \t\t<td style=\"BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed\" align=\"center\">");
      out.print(user.getPassword());
      out.write("</td>\r\n");
      out.write("\t\t\t\t     \t\t<td style=\"BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed\" align=\"center\">");
      out.print(user.getTel());
      out.write("</td>\r\n");
      out.write("\t\t\t\t     \t\t<td style=\"BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed\" align=\"center\">");
      out.print(user.getEmail());
      out.write("</td>\r\n");
      out.write("\t\t\t\t     \t\t<td style=\"BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed\" align=\"center\"><a href=\"QueryUserServlet?id=");
      out.print(user.getId());
      out.write("\">修改</a></td>\r\n");
      out.write("\t\t\t\t     \t\t<td style=\"BORDER-BOTTOM: #99CCFF 1px dashed;BORDER-top: #99CCFF 1px dashed;BORDER-left: #99CCFF 1px dashed;BORDER-right:#99CCFF 1px dashed\" align=\"center\"><a href=\"DeleteServlet?id=");
      out.print(user.getId());
      out.write("\">刪除</a></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t ");

							}
								
							
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t");

							}
					      
      out.write("    \r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
