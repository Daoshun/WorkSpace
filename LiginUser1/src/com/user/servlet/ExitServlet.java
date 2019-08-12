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
		// ��ȡsession
		HttpSession session = request.getSession();
		// ��ȡ�û�����
		User user = (User)session.getAttribute("user");
		// �ж�user�Ƿ���Ч
		if(user != null) {
			// ���û��������SESSION
			session.removeAttribute("user");
			// 
			request.setAttribute("info", user.getUsername() + "�ѳɹ��˳���");
			
		}
		// ת����
		request.getRequestDispatcher("message.jsp").forward(request, response);
	}

}