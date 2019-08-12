package com.user.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
	/**
	 * ���ݿ�����
	 * @author gds
	 */
	public class ConnectDB {
		/**
		 * ��ȡ���ݿ�����
		 * @return Connection����
		 */
		public static Connection getConnection() {
			Connection conn = null;  //��Ʒ���ʱ����Ҫ�������
			
			try {
				// ��������
				Class.forName("com.mysql.jdbc.Driver");
				// ���ݿ�����url
				String url = "jdbc:mysql://localhost:3306/db_user";
				// ��ȡ���ݿ�����
				conn = DriverManager.getConnection(url, "root", "1234");
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return conn;
		}
		/**
		 * �ر����ݿ�����
		 */
		public static void closeConnection(Connection conn) {
			// �ж�conn�Ƿ�Ϊ��
			if(conn != null){
				try {
					conn.close();	// �ر����ݿ�����
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
		}
	
	}