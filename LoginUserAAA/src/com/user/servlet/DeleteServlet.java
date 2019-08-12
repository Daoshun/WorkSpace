package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.dao.UserDao;
/**
 * �û�ע���Servlet��
 * @author wbs
 */
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 5280356329609002908L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ��ȡ�û���
		String id = request.getParameter("id");
		String ids = request.getParameter("ids");
		UserDao userDao = new UserDao();
		
		if(ids != null && !ids.isEmpty()) {
			
			    String[] idss=ids.split(",");
				for(int i=0;i<idss.length;i++) {			
					 try {
						    if(idss[i]!=null && !idss[i].equals("")) {
						    	userDao.delete(Integer.parseInt(idss[i]));
						    }
							
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}		
						request.getSession().setAttribute("info", "��ϲ��ɾ���ɹ���");
				}
		}
        
		// ʵ����UserDao����
		
		if(id != null && !id.isEmpty()){			
			    try {
					userDao.delete(Integer.parseInt(id));
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}		
				request.getSession().setAttribute("info", "��ϲ��ɾ���ɹ���");
			}
		response.sendRedirect("QueryServlet");
		//request.getRequestDispatcher("QueryServlet").forward(request, response);
	}

}
