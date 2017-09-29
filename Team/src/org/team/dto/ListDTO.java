package org.team.dto;

import java.util.Date;

//create table tbl_todolist(
//lno number,
//title varchar2(500) not null ,
//contents varchar2(1000) not null,
//writer varchar2(500),
//regdate date default sysdate);
import lombok.Data;

@Data
public class ListDTO {
	private	int lno;
	private String title, contents, writer;
	private Date regdate;
	 
}
