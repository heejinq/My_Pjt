package my.pjt.service;

import java.util.List;

import my.pjt.domain.Criteria;
import my.pjt.domain.ReplyVO;

public interface R﻿eplyService {
	
	public int register(ReplyVO vo);
	public ReplyVO get(Long rno);
	public int modify(ReplyVO vo);
	public int remove(Long rno);
	public List<ReplyVO> getList(Criteria cri,Long bno);

}
