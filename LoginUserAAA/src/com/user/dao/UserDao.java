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
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getSex());
			ps.setString(4, user.getTel());
			ps.setString(5, user.getPhoto());
			ps.setString(6, user.getEmail());
			ps.setString(7, user.getAddress());
			//DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			//df.f
			ps.setDate(8, new java.sql.Date(new java.util.Date().getTime()));
			// id自动步长
			
			// 执行更新操作 执行操作 动作
			ps.executeUpdate();
			// 释放此 PreparedStatement 对象的数据库和 JDBC 资源
			ps.close();
		} catch (Exception e) {
			
			e.printStackTrace();
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
	 * 取得用户表的所有用户信息
	 * @param 
	 * @return 用户列表
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
			// 
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
	
	
	//修改操作
		public void update(User user) {

			// 获取数据库连接Connection对象
			Connection conn = ConnectDB.getConnection();
			// 插入用户注册信息的SQL语句
			// where id 是条件，通过ID来进行操作
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
		//删除操作
		public void delete(int userid) {
			String sql = "DELETE FROM tb_user WHERE id=?" ;
			// 获取数据库连接Connection对象
			Connection conn = ConnectDB.getConnection();
			// 插入用户注册信息的SQL语句
				try {
				// 获取PreparedStatement对象
				PreparedStatement ps = conn.prepareStatement(sql);
				// 对SQL语句的占位符参数进行动态赋值
				ps.setInt(1, userid);

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
}
