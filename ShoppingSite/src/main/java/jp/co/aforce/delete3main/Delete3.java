package jp.co.aforce.delete3main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.dao.MemberDao;

/**
 * Servlet implementation class Delete3
 */
@WebServlet("/views/delete3")
public class Delete3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete3() {
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
		
		try {
			
		String member_id =request.getParameter("member_id");
		String password =request.getParameter("password");
		
        MemberDao memberDao =  new MemberDao();
        int line = memberDao.delete(member_id, password);
        
        if(line > 0) {
        	request.getRequestDispatcher("delete2.jsp").forward(request,response);
        } else {
        	request.getRequestDispatcher("delete3.jsp").forward(request,response);
        }
        
		}catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
	
	}

}
