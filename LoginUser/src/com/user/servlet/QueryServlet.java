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
	// doget dopost
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String qusername = request.getParameter("qusername");
		// String qtel = request.getParameter("qtel");
		// 实例化UserDao对象
		UserDao userDao = new UserDao();
		
		List<User> userList = new ArrayList<User>() ;
		  try {
			userList=userDao.queryAllByUserName(qusername);
			
		   } catch (Exception e) {
			e.printStackTrace();
		   }
		if(userList.size()>0) {
			//request.getRequestDispatcher("userList",  userList);
			request.getSession().setAttribute("userList", userList);
			request.getRequestDispatcher("queryUserList.jsp").forward(request, response);
			// 设置session为null
			//request.getSession().setAttribute("info", null);
			// 关闭session对象里的值 session不要随意清空
			//request.getSession().removeAttribute("session");
			
		}else {
			
			response.getWriter().print("用戶信息為空");
			
		}
		
		
	}

}

/*
public class QueryServlet extends HttpServlet {
	private static final long serialVersionUID = 1599366365079846238L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user1 = request.getParameter("user");
		// 实例化UserDao对象
		UserDao userDao = new UserDao();	
		// 根据用户密码查询用户
		List<User> userList = userDao.queryAlList(user1);
		// 获取session
//		HttpSession session = request.getSession();
//		// 获取用户对象
//		User user = (User)session.getAttribute("user");
//		// 判断用户是否有效
		if(userList.size()>0){
			// 将用户对象逐出session
			//session.removeAttribute("user");
			request.getSession().setAttribute("userList", userList);
			// 设置提示信息
			//request.setAttribute("info", user.getUsername() + " 已成功退出！");
			request.getRequestDispatcher("message.jsp").forward(request, response);
		}else{
		// 登录失败
		request.setAttribute("info", "查询错误！");
		request.getRequestDispatcher("message.jsp").forward(request, response);
//		// 转发到message.jsp页面
//		request.getRequestDispatcher("message.jsp").forward(request, response);
		}
        }

}*/