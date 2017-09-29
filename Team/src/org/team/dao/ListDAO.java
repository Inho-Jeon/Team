package org.team.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.team.common.AbstractExecutor;
import org.team.dto.ListDTO;




public class ListDAO {
		
	public void insert(ListDTO dto) {
		
		String INSERT = "insert into tbl_todolist(lno,title,contents) values(seq_todolist.nextval,?,?)"; 
			
		
		new AbstractExecutor() {
			
			@Override
			protected void doJob(Connection con, PreparedStatement pstmt, ResultSet rs) throws Exception {
				pstmt = con.prepareStatement(INSERT);
				pstmt.setString(1,dto.getTitle());
				pstmt.setString(2,dto.getContents());
				
				//rs = pstmt.executeQuery();
				//엑스큣쿼리는 select 때만
				//insert를 위해서는 엑스큣업뎃을 써야한다				
				int count = pstmt.executeUpdate();
				System.out.println(count);
				
			
				System.out.println("여기냐");
				}
	
			}.execute();
			System.out.println("확인 ㄱㄱ");
			
		}
	
	


}

