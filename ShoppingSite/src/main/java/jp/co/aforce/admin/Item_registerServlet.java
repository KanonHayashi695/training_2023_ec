package jp.co.aforce.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.bean.ItemBean;
import jp.co.aforce.dao.ItemDAO2;

/**
 * Servlet implementation class Item_set
 */
@WebServlet("/views/Item_registerServlet")
public class Item_registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Item_registerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		//商品情報の取得
		String price_num = request.getParameter("price");
		String b_year_num = request.getParameter("release_year");
		String b_month_num = request.getParameter("release_month");
		String b_day_num = request.getParameter("release_day");
		String stock_num = request.getParameter("stock");
		
		String itemName = request.getParameter("item_name");
		int price2 = Integer.parseInt(price_num);
		String category2 = request.getParameter("category");
		int b_year = Integer.parseInt(b_year_num);
		int b_month = Integer.parseInt(b_month_num);
		int b_day = Integer.parseInt(b_day_num);
		String level2 = request.getParameter("level");
		int stock2 = Integer.parseInt(stock_num);
		
		ItemDAO2 itemDAO2 = new ItemDAO2();
		boolean itemChecks = false;
		try {
			itemChecks = itemDAO2.itemCheck(itemName);
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		if(itemChecks) {
			response.getWriter().println("商品情報が既に存在します。");
			return;
		}
		
		//商品情報の登録
		ItemBean item = new ItemBean(itemName, price2, category2, b_year, b_month, b_day, level2, stock2);
		boolean success = false;
		try {
			success = itemDAO2.registerItem(item);
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		if (success) {
			response.getWriter().println("商品情報の登録に成功しました。");
		} else {
			response.getWriter().println("商品情報の登録に失敗しました。");
		}
	}
}
