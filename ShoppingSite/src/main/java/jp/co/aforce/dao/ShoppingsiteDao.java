package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import jp.co.aforce.bean.Bean;

public class ShoppingsiteDao extends Dao {
    
	public int insert(Bean bean) throws Exception {
        
	
		
		Connection con = getConnection();
		
		PreparedStatement st = con.prepareStatement(
				"INSERT INTO member_list VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
		st.setString(1, bean.getMember_id());
		st.setString(2, bean.getPassword());
		st.setString(3, bean.getMember_name());
		st.setString(4, bean.getHome_address());
		st.setInt(5, bean.getBirth_year());
		st.setInt(6, bean.getBirth_month());
		st.setInt(7, bean.getBirth_day());
		st.setString(8, bean.getJob());
		st.setString(9, bean.getPhone_number());
		st.setString(10, bean.getMail_address());
		int line = st.executeUpdate();
		
		st.close();
		con.close();
		return line;
		
		
 }
}	