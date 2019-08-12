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
	public class QueryServlet extends HttpServlet {
		private static final long serialVersionUID = -3009431503363456775L;
		
		public void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			
			
			String qusername = request.getParameter("qusername");
			
			// 实例化UserDao对象
			UserDao userDao = new UserDao();
			
			List<User> userList = new ArrayList<User>() ;
			  try {
				userList=userDao.queryAllByUserName(qusername);
				
			   } catch (Exception e) {
				e.printStackTrace();
			   }
			if(userList.size()>0) {
				request.setAttribute("qusername", qusername);
				request.getSession().setAttribute("userList", userList);
				request.getRequestDispatcher("queryUserList.jsp").forward(request, response);
			}else {
				
				response.getWriter().print("用戶信息為空");
				
			}
			
			
		}

	}


