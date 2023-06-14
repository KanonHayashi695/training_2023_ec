package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DeleteDao extends Dao{
	
	public int delete(String member_id, String password) 
		    throws Exception{
			
		
			Connection con = getConnection();
			
			PreparedStatement st = con.prepareStatement(
					"delete from member_list where member_id=? and password=? ");
			st.setString(1, member_id);
			st.setString(2, password);	
			int line = st.executeUpdate();
			
			
			st.close();
			con.close();
			
			return line;
		}
}
