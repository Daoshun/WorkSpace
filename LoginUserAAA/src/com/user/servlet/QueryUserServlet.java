package com.user.servlet;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.User;
import com.user.dao.UserDao;
	/**
	 * 用户登录Servlet类
	 * @author wbs
	 */
	public class QueryUserServlet extends HttpServlet {
		private static final long serialVersionUID = -3009431503363456775L;
		
		public void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			
			
			String id = request.getParameter("id");
			
			// 实例化UserDao对象
			UserDao userDao = new UserDao();
			
			User user = new User() ;
			  try {
				  user=userDao.queryUserById(id);
				
			   } catch (Exception e) {
				e.printStackTrace();
			   }
			request.getSession().setAttribute("user", user);
			request.getRequestDispatcher("updateUser.jsp").forward(request, response);

		}

	}


