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
 * �û���¼Servlet��
 * @author wbs
 */
public class QueryServlet extends HttpServlet {
	private static final long serialVersionUID = -3009431503363456775L;
	// doget dopost
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String qusername = request.getParameter("qusername");
		// String qtel = request.getParameter("qtel");
		// ʵ����UserDao����
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
			// ����sessionΪnull
			//request.getSession().setAttribute("info", null);
			// �ر�session�������ֵ session��Ҫ�������
			//request.getSession().removeAttribute("session");
			
		}else {
			
			response.getWriter().print("�Ñ���Ϣ���");
			
		}
		
		
	}

}

/*
public class QueryServlet extends HttpServlet {
	private static final long serialVersionUID = 1599366365079846238L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user1 = request.getParameter("user");
		// ʵ����UserDao����
		UserDao userDao = new UserDao();	
		// �����û������ѯ�û�
		List<User> userList = userDao.queryAlList(user1);
		// ��ȡsession
//		HttpSession session = request.getSession();
//		// ��ȡ�û�����
//		User user = (User)session.getAttribute("user");
//		// �ж��û��Ƿ���Ч
		if(userList.size()>0){
			// ���û��������session
			//session.removeAttribute("user");
			request.getSession().setAttribute("userList", userList);
			// ������ʾ��Ϣ
			//request.setAttribute("info", user.getUsername() + " �ѳɹ��˳���");
			request.getRequestDispatcher("message.jsp").forward(request, response);
		}else{
		// ��¼ʧ��
		request.setAttribute("info", "��ѯ����");
		request.getRequestDispatcher("message.jsp").forward(request, response);
//		// ת����message.jspҳ��
//		request.getRequestDispatcher("message.jsp").forward(request, response);
		}
        }

}*/