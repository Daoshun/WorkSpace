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
		// ��ȡ�û���
		String id = request.getParameter("id");
		// ʵ����UserDao����
		UserDao userDao = new UserDao();
		if (id != null && !id.isEmpty()) {
			try {
				userDao.delete(Integer.parseInt(id));
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			request.getSession().setAttribute("info", "��ϲ��ɾ���ɹ�");
			
		}else {
			request.getSession().setAttribute("info", "�����û�ID����Ϊ��");
		}
		// �ύservletҪ��response
		response.sendRedirect("QueryServlet");
	}

}
