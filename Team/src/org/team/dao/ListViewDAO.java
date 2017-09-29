package org.team.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.team.common.AbstractExecutor;
import org.team.dto.ListDTO;


public class ListViewDAO {
	
	public List<ListDTO> view() throws RuntimeException{
		
		String query = "select * from tbl_todolist  order by lno desc" ; 
		
		List<ListDTO> list = new ArrayList<>();
		
		

		

		new AbstractExecutor() {
			
			@Override
			protected void doJob(Connection con, PreparedStatement pstmt, ResultSet rs) throws Exception {
				pstmt = con.prepareStatement(query) ; 
				
				rs = pstmt.executeQuery() ; 
				
				
				while(rs.next()) { 
					ListDTO dto = new ListDTO();
					dto.setLno(rs.getInt("lno"));
					dto.setTitle(rs.getString("title")); 
					dto.setContents(rs.getString("contents"));
					System.out.println("dto"+dto);
					list.add(dto);
					
				
			
					
				}
				
				
			}
			
			
		}.execute();
		return list ; 
		
	}

}
