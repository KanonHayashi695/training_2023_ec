package jp.co.aforce.search;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.MemberBean;
import jp.co.aforce.dao.MemberDao;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/views/search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Search() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		
		HttpSession session =request.getSession();
		
        String member_id = request.getParameter("member_id");
        String password = request.getParameter("password");
		   
        MemberDao memberDao = new MemberDao();
	    MemberBean bean;
	   
		try {
			if(member_id.equals("admin") && password.equals("admin")) {
				request.getRequestDispatcher("admin_index.jsp").forward(request,response);
			} else {
			bean = memberDao.search(member_id, password);
			if(bean != null) {
				session.setAttribute("member", bean);
				request.getRequestDispatcher("itemmenu.jsp").forward(request,response);
			} else {
				request.getRequestDispatcher("login2.jsp").forward(request,response);			
			}
			}
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		   
		
		
	}

}
