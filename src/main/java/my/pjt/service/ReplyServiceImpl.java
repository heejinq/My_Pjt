package my.pjt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import my.pjt.domain.Criteria;
import my.pjt.domain.ReplyVO;
import my.pjt.mapper.ReplyMapper;

@Service
@Log4j
public class ReplyServiceImpl implements R﻿eplyService {
	
	@Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper;

	@Override
	public int register(ReplyVO vo) {
		log.info("register...."+vo);
		return mapper.insert(vo);
	}

	@Override
	public ReplyVO get(Long rno) {
		log.info("get........."+rno);
		return mapper.read(rno);
	}

	@Override
	public int modify(ReplyVO vo) {
		log.info("modify......."+vo);
		return mapper.update(vo);
	}

	@Override
	public int remove(Long rno) {
		log.info("remove.........."+rno);
		return mapper.delete(rno);
	}

	@Override
	public List<ReplyVO> getList(Criteria cri, Long bno) {
		log.info("get reply list"+bno);
		return mapper.getListWithPaging(cri, bno);
	}

}
