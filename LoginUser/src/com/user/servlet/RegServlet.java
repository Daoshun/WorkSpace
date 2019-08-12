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
 * @author gds
 */
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 5280356329609002908L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ��ȡ�û���
		String username = request.getParameter("username");
		// ��ȡ����
		String password = request.getParameter("password");
		// ��ȡ�Ա�
		String sex = request.getParameter("sex");
		// ��ȡͷ��
		String photo = request.getParameter("photo");
		// ��ȡ��ϵ�绰
		String tel = request.getParameter("tel");
		// ��ȡ��������
		String email = request.getParameter("email");
		// ��ȡʱ��
		//Date time = (Date) request.getParts();
		//String time = request.getParameter("time");
		// ��ȡ��ַ
		String address = request.getParameter("address");
		
		// ʵ����UserDao����
		UserDao userDao = new UserDao();
		if(username != null && !username.isEmpty()){
			if(userDao.userIsExist(username)){  //�ж����ݿ������Ƿ�Ϊ��
				// ʵ����һ��User����
				User user = new User();	
				String aString = null;
				String aaString= new String();
				// ���û������е����Ը�ֵ
				user.setUsername(username);	
				user.setPassword(password);
				user.setSex(sex);
				user.setPhoto(photo);
				user.setTel(tel);
				user.setEmail(email);
				if(aaString.isEmpty()) {System.out.println("1");}
				if(aaString== null) {System.out.println("2");}
				if(aString==null) {System.out.println("1");}
				
				//user.setTime(time);
				user.setAddress(address);
				
				// �����û�ע����Ϣ
				userDao.saveUser(user);	
				request.setAttribute("info", "��ϲ��ע��ɹ���<br>");
			}else{
				request.setAttribute("info", "���󣺴��û����Ѵ��ڣ�");
			}
		}
		// ת����message.jspҳ��
		request.getRequestDispatcher("message.jsp").forward(request, response);
	}

}
