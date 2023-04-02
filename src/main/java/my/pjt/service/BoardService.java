package my.pjt.service;

import java.util.List;

import my.pjt.domain.BoardVO;
import my.pjt.domain.Criteria;
import my.pjt.domain.Rank;

public interface BoardService {
	
	public void register(BoardVO board); //등록
//	public List<BoardVO> getList(); //리스트
	public List<BoardVO> getList(Criteria cri); //리스트 with 페이지
	public BoardVO get(Long bno); //조회
	public boolean modify(BoardVO board); //수정
	public boolean remove(Long bno); //삭제
	public int getTotal(Criteria cri); //전체 글 수
	public int count_all(Criteria cri); //전체글 바로 보이기
	public List<Rank> rankDate();//날짜별 글 등록 개수
}
