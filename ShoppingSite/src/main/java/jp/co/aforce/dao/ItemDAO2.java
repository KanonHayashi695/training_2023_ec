package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jp.co.aforce.bean.ItemBean;

public class ItemDAO2 extends Dao{
	
	//商品情報確認
	public boolean itemCheck(String item_name) throws Exception{
		Connection con= getConnection();
		PreparedStatement st = con.prepareStatement(
				"SELECT * FROM item_list WHERE item_name = ?"
				);
			st.setString(1, item_name);
			ResultSet rs = st.executeQuery();
			boolean exists = rs.next();
			
			rs.close();
			st.close();
			closeConnection(con);
			 return exists;
	}
	
	//商品情報登録処理
	public boolean registerItem(ItemBean item)throws Exception {
		
		Connection con= getConnection();
		
		PreparedStatement st = con.prepareStatement(
					"INSERT INTO ITEM_LIST(ITEM_NAME, PRICE, CATEGORY, RELEASE_YEAR, RELEASE_MONTH, RELEASE_DAY, LEVEL, STOCK) "
					+ "VALUES(?,?,?,?,?,?,?,?);"
					);
			st.setString(1, item.getItem_name());
			st.setInt(2, item.getPrice());
			st.setString(3, item.getCategory());
			st.setInt(4, item.getRelease_year());
			st.setInt(5, item.getRelease_month());
			st.setInt(6, item.getRelease_day());
			st.setString(7, item.getLevel());
			st.setInt(8, item.getStock());
			int i = st.executeUpdate();
			
			if (i > 0) {
				System.out.println("商品情報の登録に成功しました。");
				return true;
			} else {
				System.out.println("登録中に問題が発生しました。");
				return false;
			}
	}
}
