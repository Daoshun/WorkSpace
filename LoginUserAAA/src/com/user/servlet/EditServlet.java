package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.User;
import com.user.dao.UserDao;
/**
 * 用户注册的Servlet类
 * @author wbs
 */
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 5280356329609002908L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取用户名
		String id = request.getParameter("id");

		// 获取用户名
		String username = request.getParameter("username");

		// 获取密码
		String password = request.getParameter("password");

		// 获取联系电话
		String tel = request.getParameter("tel");
		// 获取电子邮箱
		String email = request.getParameter("email");
		
		User user=new User();
		user.setId(Integer.parseInt(id));
		user.setUsername(username);
		user.setPassword(password);
		user.setTel(tel);
		user.setEmail(email);

		// 实例化UserDao对象
		UserDao userDao = new UserDao();
		if(id != null && !id.isEmpty()){			
			    try {
					userDao.update(user);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}		
				request.getSession().setAttribute("info", "恭喜，修改成功！");
			}else{
				request.getSession().setAttribute("info", "错误：用户Id不能为空！");
			}
		response.sendRedirect("QueryServlet");
		//request.getRequestDispatcher("QueryServlet").forward(request, response);
	}

}
