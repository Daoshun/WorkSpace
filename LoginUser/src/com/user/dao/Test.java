package com.user.dao;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.net.httpserver.Filter.Chain;
import com.user.User;
import com.user.code.CharacterEncodingFilter;

public class Test {

	public static void main(String[] args) {
		System.out.println("����ϵͳ----start");
		UserDao userDao = new UserDao();

		User user = new User();
		/*
		 * user.setUsername("333"); user.setPassword("333"); user.setSex("��");
		 * user.setTel("11111111"); user.setEmail("1111111"); user.setPhoto("");
		 * 
		 * // userDao.saveUser(user);
		 */
		/*user = userDao.login("333", "333");
		if (user == null) {
			System.out.println("û�в�ѯ�����û���Ϣ");
		} else {
			System.out.println("�û�email----" + user.getEmail());
		}

		System.out.println("����ϵͳ----end");*/
		
//		if(userDao.userIsExist("333")) {
//			System.out.println("���û�������");
//		}else {
//			System.out.println("���û��Ѵ���");
//		}
		
		String i = null;
		i = Request.getRemote
		

	}

}
//public class ExitServlet extends HttpServlet {
//	private static final long serialVersionUID = 1599366365079846238L;
//	public void doGet(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		// ��ȡsession
//		HttpSession session = request.getSession();
//		// ��ȡ�û�����
//        String i = null;
//        i = request.getRemoteAddr();
//        CharacterEncodingFilter c = new CharacterEncodingFilter();
//		if(i != null){
//			// ���û��������session
//			c.doFilter(request, response, chain);
////			session.removeAttribute("user");
//			// ������ʾ��Ϣ
//			request.setAttribute("info", user.getUsername() + " �ѳɹ��˳���");
//		}
//		// ת����message.jspҳ��
//		request.getRequestDispatcher("message.jsp").forward(request, response);
//	}
//
//}