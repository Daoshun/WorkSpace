package com.user.servlet;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.User;
import com.user.dao.UserDao;
	/**
	 * �û���¼Servlet��
	 * @author wbs
	 */
	public class LoginServlet extends HttpServlet {
		private static final long serialVersionUID = -3009431503363456775L;
		
		public void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			// ��ȡ�û���
			String username = request.getParameter("username");
			// ��ȡ����
			String password = request.getParameter("password");
			// ʵ����UserDao����
			UserDao userDao = new UserDao();	
			// �����û������ѯ�û�
			User user = userDao.login(username, password);
			// �ж�user�Ƿ�Ϊ��
			if(user != null){
				// ���û��������session��
				request.getSession().setAttribute("user", user);
				// ת����result.jspҳ��
				request.getRequestDispatcher("message.jsp").forward(request, response);
			}else{
				// ��¼ʧ��
				request.setAttribute("info", "�����û������������");
				request.getRequestDispatcher("message.jsp").forward(request, response);
			}
		}

	}

