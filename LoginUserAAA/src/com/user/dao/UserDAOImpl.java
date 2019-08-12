package com.user.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.javaweb.ch08.Person;

public class UserDAOImpl implements UserDAO {
	//��Ӳ���
	public void insert(User user) throws Exception {
		String sql = "INSERT INTO user(username,password) VALUES(?,?)" ;
		PreparedStatement pstmt = null ;
		DataBaseConnection dbc = null ;
		// ������������ݿ�ľ������
		try{
			// �������ݿ�
			dbc = new DataBaseConnection() ;
			pstmt = dbc.getConnection().prepareStatement(sql) ;
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			// �������ݿ���²���
			pstmt.executeUpdate() ;
			pstmt.close() ;
		}catch (Exception e){
			throw new Exception("���������쳣") ;
		}
		finally{
			// �ر����ݿ�����
			dbc.close() ;
		}
	}
	//�޸Ĳ���
	public void update(User user) throws Exception {
		String sql = "UPDATE user SET username=?,password=? WHERE userid=?" ;
		PreparedStatement pstmt = null ;
		DataBaseConnection dbc = null ;
		// ������������ݿ�ľ������
		try{
			// �������ݿ�
			dbc = new DataBaseConnection() ;
			pstmt = dbc.getConnection().prepareStatement(sql) ;			
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			pstmt.setInt(3,user.getUserid());
			// �������ݿ���²���
			pstmt.executeUpdate() ;
			pstmt.close() ;
		}
		catch (Exception e){
			throw new Exception("���������쳣") ;
		}
		finally{
			// �ر����ݿ�����
			dbc.close() ;
		}
	}
	//ɾ������
	public void delete(int userid) throws Exception {
		String sql = "DELETE FROM user WHERE userid=?" ;
		PreparedStatement pstmt = null ;
		DataBaseConnection dbc = null ;
		// ������������ݿ�ľ������
		try{
			// �������ݿ�
			dbc = new DataBaseConnection() ;
			pstmt = dbc.getConnection().prepareStatement(sql) ;			
			pstmt.setInt(1,userid) ;
			// �������ݿ���²���
			pstmt.executeUpdate() ;
			pstmt.close() ;
		}catch (Exception e){
			throw new Exception("���������쳣") ;
		}
		finally{
			// �ر����ݿ�����
			dbc.close() ;
		}
	}
	//��ID��ѯ
	public User queryById(int userid) throws Exception {
		User user = null ;
		String sql = "SELECT * FROM user WHERE userid=?" ;
		PreparedStatement pstmt = null ;
		DataBaseConnection dbc = null ;
		// ������������ݿ�ľ������
		try{
			// �������ݿ�
			dbc = new DataBaseConnection() ;
			pstmt = dbc.getConnection().prepareStatement(sql) ;			
			pstmt.setInt(1, userid);
			// �������ݿ��ѯ����
			ResultSet rs = pstmt.executeQuery() ;
			if(rs.next())
			{
				// ��ѯ�����ݣ�֮�󽫲�ѯ�������ݸ�ֵ��user����
				user = new User() ;
				user.setUserid(rs.getInt(1));
				user.setUsername(rs.getString(2));
				user.setPassword(rs.getString(3));
			}
			rs.close() ;
			pstmt.close() ;
		}catch (Exception e){
			throw new Exception("���������쳣") ;
		}
		finally{
			// �ر����ݿ�����
			dbc.close() ;
		}
		return user ;
	}
	public List<User> queryAll() throws Exception {
		List<User> all = new ArrayList<User>() ;
		String sql = "SELECT * FROM user " ;
		PreparedStatement pstmt = null ;
		DataBaseConnection dbc = null ;

		// ������������ݿ�ľ������
		try{
			// �������ݿ�
			dbc = new DataBaseConnection() ;
			pstmt = dbc.getConnection().prepareStatement(sql) ;	
			// �������ݿ��ѯ����
			ResultSet rs = pstmt.executeQuery() ;
			while(rs.next()){
				// ��ѯ�����ݣ�֮�󽫲�ѯ�������ݸ�ֵ��user����
				User user = new User() ;
				user.setUserid(rs.getInt(1));
				user.setUsername(rs.getString(2));
				user.setPassword(rs.getString(3));

				// ����ѯ���������ݼ��뵽List����֮��
				all.add(user) ;
			}
			rs.close() ;
			pstmt.close() ;
		}
		catch (Exception e){
			throw new Exception("���������쳣") ;
		}
		finally{
			// �ر����ݿ�����
			dbc.close() ;
		}
		return all ;
	}
}
