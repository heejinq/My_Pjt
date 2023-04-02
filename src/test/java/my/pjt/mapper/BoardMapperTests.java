package my.pjt.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import my.pjt.domain.BoardVO;
import my.pjt.domain.Criteria;

@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardMapperTests {

	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
	@Test
	public void testGetList() {
		mapper.getList().forEach(board -> log.info(board));
	}
	
	@Test //이건 입력
	public void testInsert() {
		BoardVO board = new BoardVO();
		board.setTitle("new title");
		board.setContent("new content");
		board.setWriter("new writer");
		mapper.insert(board);
		log.info(board);
	}

@Test //이건 셀렉트키
	public void testInsertSelectKey() {
		BoardVO board = new BoardVO();
		board.setTitle("new title222");
		board.setContent("new content222");
		board.setWriter("new writer222");
		mapper.insertSelectKey(board);
		log.info(board);
	}



@Test
public void testRead() {
	BoardVO board = mapper.read(5L);
			log.info(board);
	
}	@Test
public void gsklj() {
	log.info("delete count : "+ mapper.delete(15L));
		}

@Test
public void aaf() {
	BoardVO board = new BoardVO();
	board.setBno(1L);
	board.setTitle("수정수정");
	board.setContent("수정수정 수정수정");
	board.setWriter("수정수정");
	int count = mapper.update(board);
	log.info("update count "  + count );
}

@Test
public void testPag() {
	Criteria cri = new Criteria();
	cri.setPageNum(4);
	cri.setAmount(10);
	List<BoardVO> list = mapper.getListWithPaging(cri);
	list.forEach(board -> log.info(board.getBno()));
}

@Test
public void testSearch() {
	Criteria cri = new Criteria();
	cri.setKeyword("새로");
	cri.setType("TC");
	
	List<BoardVO> list = mapper.getListWithPaging(cri);
	list.forEach(board -> log.info(board));
}

}
