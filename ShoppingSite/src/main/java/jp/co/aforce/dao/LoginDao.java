package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jp.co.aforce.bean.Bean;

public class LoginDao extends Dao{
    
	public Bean search(String member_id, String password) 
	    throws Exception{
		
		Bean p = null;
		Connection con = getConnection();
		
		PreparedStatement st = con.prepareStatement(
				"select * from member_list where member_id=? and password=? ");
		st.setString(1, member_id);
		st.setString(2, password);	
		ResultSet rs = st.executeQuery();
		
		while(rs.next()) {
		    p = new Bean();
			p.setMember_id(rs.getString("member_id"));
			p.setPassword(rs.getString("password"));
			p.setMember_name(rs.getString("member_name"));
			p.setHome_address(rs.getString("Home_address"));
			p.setBirth_year(rs.getInt("Birth_year"));
			p.setBirth_month(rs.getInt("Birth_month"));
			p.setBirth_day(rs.getInt("Birth_day"));
			p.setJob(rs.getString("Job"));
			p.setPhone_number(rs.getString("Phone_number"));
			p.setMail_address(rs.getString("Mail_address"));
		}
			
		
		st.close();
		con.close();
		
		return p;
	}
}
