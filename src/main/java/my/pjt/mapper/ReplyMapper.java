package my.pjt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import my.pjt.domain.Criteria;
import my.pjt.domain.ReplyVO;

public interface ReplyMapper {
	
	public int insert(ReplyVO vo); //댓글입력
	public ReplyVO read(Long rno);  //특정 댓글 읽기
	public int update(ReplyVO vo); //수정
	public int delete(Long rno); //삭제 
	public List<ReplyVO> getListWithPaging( //댓글 목록
			@Param("cri") Criteria cri,
			@Param("bno") Long bno);
	

}
