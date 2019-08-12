package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.User;
import com.user.dao.UserDao;
/**
 * 用户注册的Servlet类
 * @author gds
 */
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 5280356329609002908L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取用户名
		String username = request.getParameter("username");
		// 获取密码
		String password = request.getParameter("password");
		// 获取性别
		String sex = request.getParameter("sex");
		// 获取头像
		String photo = request.getParameter("photo");
		// 获取联系电话
		String tel = request.getParameter("tel");
		// 获取电子邮箱
		String email = request.getParameter("email");
		// 获取时间
		//Date time = (Date) request.getParts();
		//String time = request.getParameter("time");
		// 获取地址
		String address = request.getParameter("address");
		
		// 实例化UserDao对象
		UserDao userDao = new UserDao();
		if(username != null && !username.isEmpty()){
			if(userDao.userIsExist(username)){  //判断数据库里面是否为空
				// 实例化一个User对象
				User user = new User();	
				String aString = null;
				String aaString= new String();
				// 对用户对象中的属性赋值
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
				
				// 保存用户注册信息
				userDao.saveUser(user);	
				request.setAttribute("info", "恭喜，注册成功！<br>");
			}else{
				request.setAttribute("info", "错误：此用户名已存在！");
			}
		}
		// 转发到message.jsp页面
		request.getRequestDispatcher("message.jsp").forward(request, response);
	}

}
