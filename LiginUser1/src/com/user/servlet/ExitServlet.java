package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.User;

public class ExitServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException{
		// 获取session
		HttpSession session = request.getSession();
		// 获取用户对象
		User user = (User)session.getAttribute("user");
		// 判断user是否有效
		if(user != null) {
			// 将用户对象逐出SESSION
			session.removeAttribute("user");
			// 
			request.setAttribute("info", user.getUsername() + "已成功退出！");
			
		}
		// 转发到
		request.getRequestDispatcher("message.jsp").forward(request, response);
	}

}
