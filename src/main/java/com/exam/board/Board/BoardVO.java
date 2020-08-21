package com.exam.board.Board;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardVO {

	private int boardNo;
	private String subject;
	private String writer;
	private Date reg_datetime;
	private String content;
}
