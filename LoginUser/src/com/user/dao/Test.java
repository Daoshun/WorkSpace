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
		System.out.println("测试系统----start");
		UserDao userDao = new UserDao();

		User user = new User();
		/*
		 * user.setUsername("333"); user.setPassword("333"); user.setSex("男");
		 * user.setTel("11111111"); user.setEmail("1111111"); user.setPhoto("");
		 * 
		 * // userDao.saveUser(user);
		 */
		/*user = userDao.login("333", "333");
		if (user == null) {
			System.out.println("没有查询到此用户信息");
		} else {
			System.out.println("用户email----" + user.getEmail());
		}

		System.out.println("测试系统----end");*/
		
//		if(userDao.userIsExist("333")) {
//			System.out.println("此用户不存在");
//		}else {
//			System.out.println("此用户已存在");
//		}
		
		String i = null;
		i = Request.getRemote
		

	}

}
//public class ExitServlet extends HttpServlet {
//	private static final long serialVersionUID = 1599366365079846238L;
//	public void doGet(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		// 获取session
//		HttpSession session = request.getSession();
//		// 获取用户对象
//        String i = null;
//        i = request.getRemoteAddr();
//        CharacterEncodingFilter c = new CharacterEncodingFilter();
//		if(i != null){
//			// 将用户对象逐出session
//			c.doFilter(request, response, chain);
////			session.removeAttribute("user");
//			// 设置提示信息
//			request.setAttribute("info", user.getUsername() + " 已成功退出！");
//		}
//		// 转发到message.jsp页面
//		request.getRequestDispatcher("message.jsp").forward(request, response);
//	}
//
//}
