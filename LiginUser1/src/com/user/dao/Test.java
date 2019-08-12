package com.user.dao;

import com.user.User;

public class Test {

	public static void main(String[] args) {

		System.out.println("test999");

		UserDao ud = new UserDao();
		User u = new User();
		/*
		 * u.setUsername("333"); u.setPassword("222"); u.setSex("男");
		 * u.setTel("12322323"); u.setEmail("11122"); u.setPhoto("43434");
		 * 
		 * ud.saveUser(u);
		 * 
		 */
		/*
		 * u = ud.login("333", "222"); if (u == null) { System.out.println("nothing"); }
		 * else { System.out.println("==" + u.getPhoto()); }
		 * 
		 * System.out.println("test87");
		 */
		if(userDao.userIsExist("555")) {
			System.out.println("此用户不存在");
		}
	}

}