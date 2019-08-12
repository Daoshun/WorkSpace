package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.User;
import com.user.dao.UserDao;
/**
 * �û�ע���Servlet��
 * @author wbs
 */
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 5280356329609002908L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ��ȡ�û���
		String id = request.getParameter("id");

		// ��ȡ�û���
		String username = request.getParameter("username");

		// ��ȡ����
		String password = request.getParameter("password");

		// ��ȡ��ϵ�绰
		String tel = request.getParameter("tel");
		// ��ȡ��������
		String email = request.getParameter("email");
		
		User user=new User();
		user.setId(Integer.parseInt(id));
		user.setUsername(username);
		user.setPassword(password);
		user.setTel(tel);
		user.setEmail(email);

		// ʵ����UserDao����
		UserDao userDao = new UserDao();
		if(id != null && !id.isEmpty()){			
			    try {
					userDao.update(user);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}		
				request.getSession().setAttribute("info", "��ϲ���޸ĳɹ���");
			}else{
				request.getSession().setAttribute("info", "�����û�Id����Ϊ�գ�");
			}
		response.sendRedirect("QueryServlet");
		//request.getRequestDispatcher("QueryServlet").forward(request, response);
	}

}
