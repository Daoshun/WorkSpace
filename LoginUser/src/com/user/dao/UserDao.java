package com.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.user.User;
/**
 * 用户数据库操作类
 * @author wbs
 */
public class UserDao {
	/**
	 * 添加用户
	 * @param user 用户对象
	 */
	public void saveUser(User user){
		// 获取数据库连接Connection对象
		Connection conn = ConnectDB.getConnection();
		// 插入用户注册信息的SQL语句
		String sql = "insert into tb_user(username,password,sex,tel,photo,email,address,time) values(?,?,?,?,?,?,?,?)";
		try {
			// 获取PreparedStatement对象
			PreparedStatement ps = conn.prepareStatement(sql);
			// 对SQL语句的占位符参数进行动态赋值
			ps.setString(1, user.getUsername());  // 从user对象提取出username 然后set到db的相应位置
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getSex());
			ps.setString(4, user.getTel());
			ps.setString(5, user.getPhoto());
			ps.setString(6, user.getEmail());
			//添加地址和时间
			ps.setString(7, user.getAddress());
			//ps.setDate(8, user.getTime());
			ps.setDate(8, new java.sql.Date(new java.util.Date().getTime()));
			// 执行更新操作
			ps.executeUpdate();
			// 释放此 PreparedStatement 对象的数据库和 JDBC 资源
			ps.close();
		} catch (Exception e) {   //exception e 是所有exception的父类
			e.printStackTrace();  //输出个日志
		}finally{
			// 关闭数据库连接
			ConnectDB.closeConnection(conn);
		}
	}
	/**
	 * 用户登录
	 * @param username 用户名
	 * @param password 密码
	 * @return 用户对象
	 */
	public User login(String username, String password){
		User user = null;
		// 获取数据库连接Connection对象
		Connection conn = ConnectDB.getConnection();
		// 根据用户名及密码查询用户信息
		String sql = "select * from tb_user where username = ? and password = ?";
		try {
			// 获取PreparedStatement对象
			PreparedStatement ps = conn.prepareStatement(sql);
			// 对SQL语句的占位符参数进行动态赋值
			ps.setString(1, username);
			ps.setString(2, password);
			// 执行查询获取结果集
			ResultSet rs = ps.executeQuery();
			// 判断结果集是否有效
			if(rs.next()){
				// 实例化一个用户对象
				user = new User();
				// 对用户对象属性赋值
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setSex(rs.getString("sex"));
				user.setTel(rs.getString("tel"));
				user.setPhoto(rs.getString("photo"));
				user.setEmail(rs.getString("email"));
				user.setAddress(rs.getString("address"));
				user.setTime(rs.getDate("time"));
			}
			// 释放此 ResultSet 对象的数据库和 JDBC 资源
			rs.close();
			// 释放此 PreparedStatement 对象的数据库和 JDBC 资源
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			// 关闭数据库连接
			ConnectDB.closeConnection(conn);
		}
		return user;
	}
	/**
	 * 判断用户名在数据库中是否存在
	 * @param username 用户名
	 * @return 布尔值
	 */
	public boolean userIsExist(String username){
		// 获取数据库连接Connection对象
		Connection conn = ConnectDB.getConnection();
		// 根据指定用户名查询用户信息
		String sql = "select * from tb_user where username = ?";
		try {
			// 获取PreparedStatement对象
			PreparedStatement ps = conn.prepareStatement(sql);
			// 对用户对象属性赋值
			ps.setString(1, username);
			// 执行查询获取结果集
			ResultSet rs = ps.executeQuery();
			// 判断结果集是否有效
			if(!rs.next()){
				// 如果无效则证明此用户名可用
				return true;
			}
			// 释放此 ResultSet 对象的数据库和 JDBC 资源
			rs.close();
			// 释放此 PreparedStatement 对象的数据库和 JDBC 资源
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			// 关闭数据库连接
			ConnectDB.closeConnection(conn);
		}
		return false; 
	}
	/**
	 * 查询用户名在数据库中是否存在
	 */
	/*public List<User> queryAlList(String name) {
		List<User> userList = null;
		// 获取数据库连接Connection对象
		Connection conn = ConnectDB.getConnection();
		// 根据指定用户名查询用户信息
		String sql = "select * from tb_user t where t.username like '%\"+name+\"%'";
		try {
			// 获取PreparedStatement对象
			PreparedStatement ps = conn.prepareStatement(sql);
			// 执行查询获取结果集
			ResultSet rs = ps.executeQuery();
			// 判断结果集是否有效
			if(rs.next()){
				// 查询出内容，之后将查询出的内容赋值给user对象
				
				// 查询出内容，之后将查询出的内容赋值给user对象
				userList = new List<User>() ;
				((Object) userList).setUserid(rs.getInt(1));
				userList.setUsername(rs.getString(2));
				user.setPassword(rs.getString(3));
				
				
			}
			// 释放此 ResultSet 对象的数据库和 JDBC 资源
			rs.close();
			// 释放此 PreparedStatement 对象的数据库和 JDBC 资源
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			// 关闭数据库连接
			ConnectDB.closeConnection(conn);
		}

		return userList;	
		
	}*/
	/**
	 * 取得用户表的所有用户信息
	 * 
	 */
	public List<User> queryAllByUserName(String username) throws Exception {
		List<User> userList = new ArrayList<User>() ;
		
		StringBuffer sbf=new StringBuffer("SELECT * FROM TB_USER");
		
		if(username!=null && !username.equals("")) {
			
			sbf.append(" where username like '%"+username+"%'");
		}
		Connection conn = ConnectDB.getConnection();
		PreparedStatement pstmt = null ;
		try{
			pstmt = conn.prepareStatement(sbf.toString()) ;	
			// 进行数据库查询操作
			ResultSet rs = pstmt.executeQuery() ;
			while(rs.next()){
				// 查询出内容，之后将查询出的内容赋值给user对象
				User user = new User() ;
			    user.setId(rs.getInt("id"));
			    user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setSex(rs.getString("sex"));
				user.setTel(rs.getString("tel"));
				user.setPhoto(rs.getString("photo"));
				user.setEmail(rs.getString("email"));
				// 将查询出来的数据加入到List对象之中
				userList.add(user) ;
			}
			rs.close() ;
			pstmt.close() ;
		}
		catch (Exception e){
			 e.printStackTrace();
		}
		finally{
			// 关闭数据库连接
			ConnectDB.closeConnection(conn);
		}
		return userList ;
	}
	/**
	 * 取得用户表的相关用户名和tel用户信息
	 * @param 
	 * @return 用户列表
	 */
	public List<User> queryByUserName(String username, String tel) throws Exception {
		List<User> userList = new ArrayList<User>() ;
		// 1=1 sql语句拷贝到数据库执行一遍
		StringBuffer sbf=new StringBuffer("SELECT * FROM TB_USER where 1=1 " );
		
		if((username!=null && !username.equals("")) ||(tel!=null && !tel.equals(""))){
			
			//sbf.append(" where username like '%"+username+"%'");  字符追加
			sbf.append(" and username like '%"+username+"%' and tel like '%"+tel+"%'");
		}
		Connection conn = ConnectDB.getConnection();
		PreparedStatement pstmt = null ;
		try{
			pstmt = conn.prepareStatement(sbf.toString()) ;	
			// 进行数据库查询操作
			ResultSet rs = pstmt.executeQuery() ;
			while(rs.next()){
				// 查询出内容，之后将查询出的内容赋值给user对象
				User user = new User() ;
			    user.setId(rs.getInt("id"));
			    user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setSex(rs.getString("sex"));
				user.setTel(rs.getString("tel"));
				user.setPhoto(rs.getString("photo"));
				user.setEmail(rs.getString("email"));
				// 将查询出来的数据加入到List对象之中
				userList.add(user) ;
			}
			rs.close() ;
			pstmt.close() ;
		}
		catch (Exception e){
			 e.printStackTrace();
		}
		finally{
			// 关闭数据库连接
			ConnectDB.closeConnection(conn);
		}
		return userList ;
	}
	
	/**
	 * 取得用户表的所有用户信息
	 * @param 
	 * @return 用户列表
	 */
	public List<User> queryAll() throws Exception {
		List<User> userList = new ArrayList<User>() ;
		String sql = "SELECT * FROM TB_USER" ;
		Connection conn = ConnectDB.getConnection();
		PreparedStatement pstmt = null ;
		try{
			pstmt = conn.prepareStatement(sql) ;	
			// 进行数据库查询操作
			ResultSet rs = pstmt.executeQuery() ;
			while(rs.next()){
				// 查询出内容，之后将查询出的内容赋值给user对象
				User user = new User() ;
			    user.setId(rs.getInt("id"));
			    user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setSex(rs.getString("sex"));
				user.setTel(rs.getString("tel"));
				user.setPhoto(rs.getString("photo"));
				user.setEmail(rs.getString("email"));
				// 将查询出来的数据加入到List对象之中
				userList.add(user) ;
			}
			rs.close() ;
			pstmt.close() ;
		}
		catch (Exception e){
			 e.printStackTrace();
		}
		finally{
			// 关闭数据库连接
			ConnectDB.closeConnection(conn);
		}
		return userList ;
	}
	
	/**
	 * 用户登录
	 * @param username 用户名
	 * @param password 密码
	 * @return 用户对象
	 */
	public User queryUserById(String id){
		User user = null;
		if(id!=null && !id.equals("")) {
			
			// 获取数据库连接Connection对象
			Connection conn = ConnectDB.getConnection();
			// 根据用户名及密码查询用户信息
			String sql = "select * from tb_user where id= ? ";
			try {
				// 获取PreparedStatement对象
				PreparedStatement ps = conn.prepareStatement(sql);
				// 对SQL语句的占位符参数进行动态赋值
				ps.setInt(1, Integer.parseInt(id));
				// 执行查询获取结果集
				ResultSet rs = ps.executeQuery();
				// 判断结果集是否有效
				if(rs.next()){
					// 实例化一个用户对象
					user = new User();
					// 对用户对象属性赋值
					user.setId(rs.getInt("id"));
					user.setUsername(rs.getString("username"));
					user.setPassword(rs.getString("password"));
					user.setSex(rs.getString("sex"));
					user.setTel(rs.getString("tel"));
					user.setPhoto(rs.getString("photo"));
					user.setEmail(rs.getString("email"));
				}
				// 释放此 ResultSet 对象的数据库和 JDBC 资源
				rs.close();
				// 释放此 PreparedStatement 对象的数据库和 JDBC 资源
				ps.close();
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				// 关闭数据库连接
				ConnectDB.closeConnection(conn);
			}
			
		}else
		{
			user=new User();
		}
		
		return user;
	}
	
	/**
	 * 修改操作
	 */
	public void update(User user) throws Exception {

		// 获取数据库连接Connection对象
		Connection conn = ConnectDB.getConnection();
		// 插入用户注册信息的SQL语句
		String sql = "UPDATE tb_user SET username=?,password=?,tel=?,email=? WHERE id=?" ;
		try {
			// 获取PreparedStatement对象
			PreparedStatement ps = conn.prepareStatement(sql);
			// 对SQL语句的占位符参数进行动态赋值
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getTel());
			ps.setString(4, user.getEmail());
			ps.setInt(5, user.getId());

			// 执行更新操作
			ps.executeUpdate();
			// 释放此 PreparedStatement 对象的数据库和 JDBC 资源
			ps.close();

		}
		catch (Exception e){
			e.printStackTrace();
		}
		finally{
			// 关闭数据库连接
			ConnectDB.closeConnection(conn);
		}
	}
	
	/**
	 * 删除单个用户信息
	 * @param 
	 * @return 用户列表
	 */
	public void delete(int userid) throws Exception{
		// 获取数据库连接Connection对象
		Connection conn = ConnectDB.getConnection();
		// 插入用户注册信息的SQL语句
		String sql = "delete * from tb_user where username = ?)";
		try {
			// 获取PreparedStatement对象
			PreparedStatement ps = conn.prepareStatement(sql);
			// 对SQL语句的占位符参数进行动态赋值
			ps.setInt(1, userid);
			// 执行更新操作
			ps.executeUpdate();
			// 释放此 PreparedStatement 对象的数据库和 JDBC 资源
			ps.close();
		} catch (Exception e) {   //exception e 是所有exception的父类
			e.printStackTrace();  //输出个日志
		}finally{
			// 关闭数据库连接
			ConnectDB.closeConnection(conn);
		}
	}
}
