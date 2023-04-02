package my.pjt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import my.pjt.domain.BoardVO;
import my.pjt.domain.Criteria;
import my.pjt.domain.Rank;
import my.pjt.mapper.BoardMapper;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService{
	
	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
	
	@Override
	public void register(BoardVO board) { //등록
		log.info("register...."+ board);
		mapper.insertSelectKey(board);
		
	}

//	@Override
//	public List<BoardVO> getList() { //리스트
//		log.info("getList***************");
//		return mapper.getList();
//
//	}
	@Override
	public List<BoardVO> getList(Criteria cri) {
		log.info("페이징" + cri);
		return mapper.getListWithPaging(cri);
				
	}
	
	

	@Override
	public BoardVO get(Long bno) { //조회
		log.info("get....." + bno);
		return mapper.read(bno);
	}

	@Override
	public boolean modify(BoardVO board) { //수정
		log.info("수정..."+board);
		return mapper.update(board) ==1;
	}

	@Override
	public boolean remove(Long bno) { //삭제
		log.info("remove..."+bno);
		return mapper.delete(bno)==1;
	}

	@Override
	public int getTotal(Criteria cri) { //전체글수
		log.info("전체 글 수");
		return mapper.getTotalCount(cri);
	}

	@Override
	public int count_all(Criteria cri) { //전체글수바로보이기
		return mapper.count_all(cri);
	}

	@Override
	public List<Rank> rankDate() {
		log.info("날짜별 글자개수");
		return mapper.rankDate();
	}

	

}
