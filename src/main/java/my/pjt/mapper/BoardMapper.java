package my.pjt.mapper;

import java.util.List;


import my.pjt.domain.BoardVO;
import my.pjt.domain.Criteria;
import my.pjt.domain.Rank;

public interface BoardMapper {
	
	
	public List<BoardVO> getList(); //리스트
	
	public void insert(BoardVO board); //입력
		
	public Integer insertSelectKey(BoardVO board); //셀렉트키로 입력
	
	public List<BoardVO> getListWithPaging(Criteria cri); //페이징처리를 위한 리스트
	
	public BoardVO read(Long bno); //조회
	
	public int delete(Long bno); //삭제
	
	public int update(BoardVO board); //수정
	
	public int getTotalCount(Criteria cri); //전체 글 수
	
	public int count_all(Criteria cri); //전체글수 리스트위에 보이기 
	
	public List<Rank> rankDate(); //날짜별 글개수


}
