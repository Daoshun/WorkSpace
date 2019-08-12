package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.User;
import com.user.dao.UserDao;

public class LoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException{
		// ��ȡ�û���
		String username = request.getParameter("username");
		// ��ȡ�û�����
		String password = request.getParameter("password");
		// ʵ����userdao����
		UserDao userDao = new UserDao();
		// �����û��������ѯ�û�
		User user = userDao.login(username, password);
		// �ж�user�Ƿ�Ϊ��
		if(user != null) {
			// ���û��������session��
			request.getSession().setAttribute("user", user);
			// ת����result.jspҳ��
			request.getRequestDispatcher("message.jsp").forward(request, response);
			
		}else {
			// ��¼ʧ��
			request.setAttribute("info", "�����û������������");
			request.getRequestDispatcher("message.jsp").forward(request, response);
		}
 	}
	
}