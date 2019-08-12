package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import com.user.dao.UserDao;

public class DeleteServlet extends HttpServlet{
	private static final long serialVersionUID = 1599366365079846238L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取用户名
		String id = request.getParameter("id");
		// 实例化UserDao对象
		UserDao userDao = new UserDao();
		if (id != null && !id.isEmpty()) {
			try {
				userDao.delete(Integer.parseInt(id));
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			request.getSession().setAttribute("info", "恭喜，删除成功");
			
		}else {
			request.getSession().setAttribute("info", "错误：用户ID不能为空");
		}
		// 提交servlet要用response
		response.sendRedirect("QueryServlet");
	}

}

