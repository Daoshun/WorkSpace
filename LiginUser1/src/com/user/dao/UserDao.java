package com.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.user.User;

public class UserDao {
	/**
	 * �����û�
	 * @author gds
	 */
	public void saveUser(User user) {
		/**
		 * �û���¼
		 * @param username �û���
		 * @param password ����
		 * return �û�����
		 */
		// ��ȡ���ݿ�����Connection����
		Connection conn = ConnectDB.getConnection();
		// �����û�ע����Ϣ��SQL���
		String sql = "insert into tb_user(username, password, sex, tel, photo, email) values(?,?,?,?,?,?)";
			try {
				// ��ȡPrepareStarement����
				PreparedStatement ps = conn.prepareStatement(sql);
				// ��SQL����ռλ���������ж�̬��ֵ
				ps.setString(1, user.getUsername());
				ps.setString(2, user.getPassword());
				ps.setString(3, user.getSex());
				ps.setString(4, user.getTel());
				ps.setString(5, user.getPhoto());
				ps.setString(6, user.getEmail());
				// ִ�и��²���
				ps.executeUpdate();
				// �ͷŴ� PreparedStatement ��������ݿ��JDBC ��Դ
				ps.close();
			}catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}finally {
				//�ر����ݿ�����
				ConnectDB.closeConnection(conn);
			}
		
	}
	public User login(String username, String password) {
		/**
		 * �ж��û��������ݿ����Ƿ����
		 * @param username �û���
		 * @return ����ֵ
		 */
		User user = null;
		// ��ȡ���ݿ�����Connection����
		Connection conn = ConnectDB.getConnection();
		// �����û����������ѯָ����Ϣ
		String sql = "select * from tb_user where username = ? and password = ?";		
		try {
			// ��ȡ���ݿ�����Connection����
			PreparedStatement ps = conn.prepareStatement(sql);
			// ��SQL����ռλ���������ж�̬����
			ps.setString(1, username);
			ps.setString(2, password);
			// ִ�в�ѯ��ȡ�����
			ResultSet rs = ps.executeQuery();
			// �жϽ�����Ƿ���Ч
			if(rs.next()) {
				//ʵ����һ���û�����
				user = new User();
				//���û��������Ը�ֵ
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setSex(rs.getString("sex"));
				user.setTel(rs.getString("tel"));
				user.setPhoto(rs.getString("photo"));
				user.setEmail(rs.getString("email"));
			}
			// �ͷŴ�ResultSet ��������ݿ��JDBC ��Դ
			rs.close();
			// �ͷŴ� PreparedStatement ��������ݿ��JDBC ��Դ
			ps.close();
			}catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}finally {
				//�ر����ݿ�����
				ConnectDB.closeConnection(conn);
			}
		return user;
		}
	
	public boolean userIsExist(String username) {
		// ��ȡ���ݿ�����Connection����
		Connection conn = ConnectDB.getConnection();
		// ����ָ���û���ѯ�û���Ϣ
		String sql = "select * from tb_user where username = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			// �жϽ���Ƿ���Ч
			if (!rs.next()) {
				// �����Ч��֤�����û�������
				return true;
			}
			// �ͷŴ�ResultSet ��������ݿ��JDBC ��Դ
			rs.close();
			// �ͷŴ� PreparedStatement ��������ݿ��JDBC ��Դ
			ps.close();
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}finally {
			//�ر����ݿ�����
			ConnectDB.closeConnection(conn);
		}
		return false;
	}
}