package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import jp.co.aforce.bean.HistoryBean;
import jp.co.aforce.bean.ItemBean;

//購入管理
public class HistoryDAO extends Dao{
	public void insert(HistoryBean his, List<ItemBean> items) throws Exception {
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = getConnection();
			st = con.prepareStatement(
					"INSERT INTO HISTORY_LIST (MEMBER_ID, ITEM_ID, BUY_DATE, COUNT, TOTAL_PRICE) VALUES (?, ?, CURDATE(), ?, ?)");
			st.setString(1, his.getMember_id());
			st.setInt(2, his.getItem_id());
			st.setInt(3, his.getCount());
			st.setInt(4, his.getTotal_price());
			st.executeUpdate();
		} finally {
			if (st != null) {
				st.close();
			}
			if (con != null) {
				con.close();
			}
		}
	}
}















