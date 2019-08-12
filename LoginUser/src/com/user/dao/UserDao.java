package com.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.user.User;
/**
 * �û����ݿ������
 * @author wbs
 */
public class UserDao {
	/**
	 * �����û�
	 * @param user �û�����
	 */
	public void saveUser(User user){
		// ��ȡ���ݿ�����Connection����
		Connection conn = ConnectDB.getConnection();
		// �����û�ע����Ϣ��SQL���
		String sql = "insert into tb_user(username,password,sex,tel,photo,email,address,time) values(?,?,?,?,?,?,?,?)";
		try {
			// ��ȡPreparedStatement����
			PreparedStatement ps = conn.prepareStatement(sql);
			// ��SQL����ռλ���������ж�̬��ֵ
			ps.setString(1, user.getUsername());  // ��user������ȡ��username Ȼ��set��db����Ӧλ��
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getSex());
			ps.setString(4, user.getTel());
			ps.setString(5, user.getPhoto());
			ps.setString(6, user.getEmail());
			//���ӵ�ַ��ʱ��
			ps.setString(7, user.getAddress());
			//ps.setDate(8, user.getTime());
			ps.setDate(8, new java.sql.Date(new java.util.Date().getTime()));
			// ִ�и��²���
			ps.executeUpdate();
			// �ͷŴ� PreparedStatement ��������ݿ�� JDBC ��Դ
			ps.close();
		} catch (Exception e) {   //exception e ������exception�ĸ���
			e.printStackTrace();  //�������־
		}finally{
			// �ر����ݿ�����
			ConnectDB.closeConnection(conn);
		}
	}
	/**
	 * �û���¼
	 * @param username �û���
	 * @param password ����
	 * @return �û�����
	 */
	public User login(String username, String password){
		User user = null;
		// ��ȡ���ݿ�����Connection����
		Connection conn = ConnectDB.getConnection();
		// �����û����������ѯ�û���Ϣ
		String sql = "select * from tb_user where username = ? and password = ?";
		try {
			// ��ȡPreparedStatement����
			PreparedStatement ps = conn.prepareStatement(sql);
			// ��SQL����ռλ���������ж�̬��ֵ
			ps.setString(1, username);
			ps.setString(2, password);
			// ִ�в�ѯ��ȡ�����
			ResultSet rs = ps.executeQuery();
			// �жϽ�����Ƿ���Ч
			if(rs.next()){
				// ʵ����һ���û�����
				user = new User();
				// ���û��������Ը�ֵ
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
			// �ͷŴ� ResultSet ��������ݿ�� JDBC ��Դ
			rs.close();
			// �ͷŴ� PreparedStatement ��������ݿ�� JDBC ��Դ
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			// �ر����ݿ�����
			ConnectDB.closeConnection(conn);
		}
		return user;
	}
	/**
	 * �ж��û��������ݿ����Ƿ����
	 * @param username �û���
	 * @return ����ֵ
	 */
	public boolean userIsExist(String username){
		// ��ȡ���ݿ�����Connection����
		Connection conn = ConnectDB.getConnection();
		// ����ָ���û�����ѯ�û���Ϣ
		String sql = "select * from tb_user where username = ?";
		try {
			// ��ȡPreparedStatement����
			PreparedStatement ps = conn.prepareStatement(sql);
			// ���û��������Ը�ֵ
			ps.setString(1, username);
			// ִ�в�ѯ��ȡ�����
			ResultSet rs = ps.executeQuery();
			// �жϽ�����Ƿ���Ч
			if(!rs.next()){
				// �����Ч��֤�����û�������
				return true;
			}
			// �ͷŴ� ResultSet ��������ݿ�� JDBC ��Դ
			rs.close();
			// �ͷŴ� PreparedStatement ��������ݿ�� JDBC ��Դ
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			// �ر����ݿ�����
			ConnectDB.closeConnection(conn);
		}
		return false; 
	}
	/**
	 * ��ѯ�û��������ݿ����Ƿ����
	 */
	/*public List<User> queryAlList(String name) {
		List<User> userList = null;
		// ��ȡ���ݿ�����Connection����
		Connection conn = ConnectDB.getConnection();
		// ����ָ���û�����ѯ�û���Ϣ
		String sql = "select * from tb_user t where t.username like '%\"+name+\"%'";
		try {
			// ��ȡPreparedStatement����
			PreparedStatement ps = conn.prepareStatement(sql);
			// ִ�в�ѯ��ȡ�����
			ResultSet rs = ps.executeQuery();
			// �жϽ�����Ƿ���Ч
			if(rs.next()){
				// ��ѯ�����ݣ�֮�󽫲�ѯ�������ݸ�ֵ��user����
				
				// ��ѯ�����ݣ�֮�󽫲�ѯ�������ݸ�ֵ��user����
				userList = new List<User>() ;
				((Object) userList).setUserid(rs.getInt(1));
				userList.setUsername(rs.getString(2));
				user.setPassword(rs.getString(3));
				
				
			}
			// �ͷŴ� ResultSet ��������ݿ�� JDBC ��Դ
			rs.close();
			// �ͷŴ� PreparedStatement ��������ݿ�� JDBC ��Դ
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			// �ر����ݿ�����
			ConnectDB.closeConnection(conn);
		}

		return userList;	
		
	}*/
	/**
	 * ȡ���û����������û���Ϣ
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
			// �������ݿ��ѯ����
			ResultSet rs = pstmt.executeQuery() ;
			while(rs.next()){
				// ��ѯ�����ݣ�֮�󽫲�ѯ�������ݸ�ֵ��user����
				User user = new User() ;
			    user.setId(rs.getInt("id"));
			    user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setSex(rs.getString("sex"));
				user.setTel(rs.getString("tel"));
				user.setPhoto(rs.getString("photo"));
				user.setEmail(rs.getString("email"));
				// ����ѯ���������ݼ��뵽List����֮��
				userList.add(user) ;
			}
			rs.close() ;
			pstmt.close() ;
		}
		catch (Exception e){
			 e.printStackTrace();
		}
		finally{
			// �ر����ݿ�����
			ConnectDB.closeConnection(conn);
		}
		return userList ;
	}
	/**
	 * ȡ���û���������û�����tel�û���Ϣ
	 * @param 
	 * @return �û��б�
	 */
	public List<User> queryByUserName(String username, String tel) throws Exception {
		List<User> userList = new ArrayList<User>() ;
		// 1=1 sql��俽�������ݿ�ִ��һ��
		StringBuffer sbf=new StringBuffer("SELECT * FROM TB_USER where 1=1 " );
		
		if((username!=null && !username.equals("")) ||(tel!=null && !tel.equals(""))){
			
			//sbf.append(" where username like '%"+username+"%'");  �ַ�׷��
			sbf.append(" and username like '%"+username+"%' and tel like '%"+tel+"%'");
		}
		Connection conn = ConnectDB.getConnection();
		PreparedStatement pstmt = null ;
		try{
			pstmt = conn.prepareStatement(sbf.toString()) ;	
			// �������ݿ��ѯ����
			ResultSet rs = pstmt.executeQuery() ;
			while(rs.next()){
				// ��ѯ�����ݣ�֮�󽫲�ѯ�������ݸ�ֵ��user����
				User user = new User() ;
			    user.setId(rs.getInt("id"));
			    user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setSex(rs.getString("sex"));
				user.setTel(rs.getString("tel"));
				user.setPhoto(rs.getString("photo"));
				user.setEmail(rs.getString("email"));
				// ����ѯ���������ݼ��뵽List����֮��
				userList.add(user) ;
			}
			rs.close() ;
			pstmt.close() ;
		}
		catch (Exception e){
			 e.printStackTrace();
		}
		finally{
			// �ر����ݿ�����
			ConnectDB.closeConnection(conn);
		}
		return userList ;
	}
	
	/**
	 * ȡ���û����������û���Ϣ
	 * @param 
	 * @return �û��б�
	 */
	public List<User> queryAll() throws Exception {
		List<User> userList = new ArrayList<User>() ;
		String sql = "SELECT * FROM TB_USER" ;
		Connection conn = ConnectDB.getConnection();
		PreparedStatement pstmt = null ;
		try{
			pstmt = conn.prepareStatement(sql) ;	
			// �������ݿ��ѯ����
			ResultSet rs = pstmt.executeQuery() ;
			while(rs.next()){
				// ��ѯ�����ݣ�֮�󽫲�ѯ�������ݸ�ֵ��user����
				User user = new User() ;
			    user.setId(rs.getInt("id"));
			    user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setSex(rs.getString("sex"));
				user.setTel(rs.getString("tel"));
				user.setPhoto(rs.getString("photo"));
				user.setEmail(rs.getString("email"));
				// ����ѯ���������ݼ��뵽List����֮��
				userList.add(user) ;
			}
			rs.close() ;
			pstmt.close() ;
		}
		catch (Exception e){
			 e.printStackTrace();
		}
		finally{
			// �ر����ݿ�����
			ConnectDB.closeConnection(conn);
		}
		return userList ;
	}
	
	/**
	 * �û���¼
	 * @param username �û���
	 * @param password ����
	 * @return �û�����
	 */
	public User queryUserById(String id){
		User user = null;
		if(id!=null && !id.equals("")) {
			
			// ��ȡ���ݿ�����Connection����
			Connection conn = ConnectDB.getConnection();
			// �����û����������ѯ�û���Ϣ
			String sql = "select * from tb_user where id= ? ";
			try {
				// ��ȡPreparedStatement����
				PreparedStatement ps = conn.prepareStatement(sql);
				// ��SQL����ռλ���������ж�̬��ֵ
				ps.setInt(1, Integer.parseInt(id));
				// ִ�в�ѯ��ȡ�����
				ResultSet rs = ps.executeQuery();
				// �жϽ�����Ƿ���Ч
				if(rs.next()){
					// ʵ����һ���û�����
					user = new User();
					// ���û��������Ը�ֵ
					user.setId(rs.getInt("id"));
					user.setUsername(rs.getString("username"));
					user.setPassword(rs.getString("password"));
					user.setSex(rs.getString("sex"));
					user.setTel(rs.getString("tel"));
					user.setPhoto(rs.getString("photo"));
					user.setEmail(rs.getString("email"));
				}
				// �ͷŴ� ResultSet ��������ݿ�� JDBC ��Դ
				rs.close();
				// �ͷŴ� PreparedStatement ��������ݿ�� JDBC ��Դ
				ps.close();
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				// �ر����ݿ�����
				ConnectDB.closeConnection(conn);
			}
			
		}else
		{
			user=new User();
		}
		
		return user;
	}
	
	/**
	 * �޸Ĳ���
	 */
	public void update(User user) throws Exception {

		// ��ȡ���ݿ�����Connection����
		Connection conn = ConnectDB.getConnection();
		// �����û�ע����Ϣ��SQL���
		String sql = "UPDATE tb_user SET username=?,password=?,tel=?,email=? WHERE id=?" ;
		try {
			// ��ȡPreparedStatement����
			PreparedStatement ps = conn.prepareStatement(sql);
			// ��SQL����ռλ���������ж�̬��ֵ
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getTel());
			ps.setString(4, user.getEmail());
			ps.setInt(5, user.getId());

			// ִ�и��²���
			ps.executeUpdate();
			// �ͷŴ� PreparedStatement ��������ݿ�� JDBC ��Դ
			ps.close();

		}
		catch (Exception e){
			e.printStackTrace();
		}
		finally{
			// �ر����ݿ�����
			ConnectDB.closeConnection(conn);
		}
	}
	
	/**
	 * ɾ�������û���Ϣ
	 * @param 
	 * @return �û��б�
	 */
	public void delete(int userid) throws Exception{
		// ��ȡ���ݿ�����Connection����
		Connection conn = ConnectDB.getConnection();
		// �����û�ע����Ϣ��SQL���
		String sql = "delete * from tb_user where username = ?)";
		try {
			// ��ȡPreparedStatement����
			PreparedStatement ps = conn.prepareStatement(sql);
			// ��SQL����ռλ���������ж�̬��ֵ
			ps.setInt(1, userid);
			// ִ�и��²���
			ps.executeUpdate();
			// �ͷŴ� PreparedStatement ��������ݿ�� JDBC ��Դ
			ps.close();
		} catch (Exception e) {   //exception e ������exception�ĸ���
			e.printStackTrace();  //�������־
		}finally{
			// �ر����ݿ�����
			ConnectDB.closeConnection(conn);
		}
	}
}