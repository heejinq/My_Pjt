package my.pjt.controller;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import my.pjt.domain.Criteria;
import my.pjt.domain.ReplyVO;
import my.pjt.service.R﻿eplyService;

@RequestMapping("/replies/")
@RestController
@Log4j
@AllArgsConstructor
public class ReplyController {
	
	private  R﻿eplyService service;
	

	@PostMapping(value = "/new",consumes = "application/json",produces = {MediaType.TEXT_PLAIN_VALUE}) //	등록
	public ResponseEntity<String> create(@RequestBody ReplyVO vo){
		log.info("replyVO: "+vo);
		int insertCount = service.register(vo);
		log.info("reply insert count : "+insertCount);
		
		return insertCount == 1?
				new ResponseEntity<>("succsss",HttpStatus.OK):new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping(value = "pages/{bno}/{page}", //특정게시물의 댓글목록 확인
			produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<ReplyVO>> getList(
			@PathVariable("page") int page,@PathVariable("bno") Long bno){
		log.info("getList.........");
		Criteria cri = new Criteria(page,10);
		log.info(cri);
		return new ResponseEntity<>(service.getList(cri, bno),HttpStatus.OK);
	}
	
	@GetMapping(value = "/{rno}", //댓글 조회
			produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<ReplyVO> get(@PathVariable("rno") Long rno){
		log.info("get"+rno);
		return new ResponseEntity<>(service.get(rno),HttpStatus.OK);
	}
	@DeleteMapping(value = "/{rno}", //댓글삭제
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(@PathVariable("rno") Long rno){
		log.info("remove"+rno);
		
		return service.remove(rno) == 1
		? new ResponseEntity<>("succsss",HttpStatus.OK) :new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@RequestMapping(method = {RequestMethod.PUT,RequestMethod.PATCH}, //수정
			value = "/{rno}", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> modify(@RequestBody ReplyVO vo,@PathVariable("rno") Long rno){
		vo.setRno(rno);
		log.info("rno"+rno);
		log.info("modify: "+vo);
		return service.modify(vo) == 1
        ? new ResponseEntity<>("succsss",HttpStatus.OK) :new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);		
	}

}
