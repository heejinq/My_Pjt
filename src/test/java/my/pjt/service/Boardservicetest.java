package my.pjt.service;

import static org.junit.Assert.assertNotNull;

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
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class Boardservicetest {
	
	@Setter(onMethod_ = {@Autowired})
	private BoardService service;
	
	@Test
	public void testEx() {
		log.info(service);
		assertNotNull(service);
	}
	
	@Test
	public void testRegister() {
		BoardVO board = new BoardVO();
		board.setTitle("새제목");
		board.setContent("새내용");
		board.setWriter("새작가");
		
		service.register(board);
		log.info("생성된번호"+board.getBno());
	}
	
	@Test
	public void testget() {
		log.info(service.get(1L));
	}
	
	@Test
	public void updateatest() {
		BoardVO board = service.get(11L);
		
		if(board == null) {
			return;
		}board.setTitle("updatetitle");
		log.info("result : "+service.modify(board));
	}
	
	@Test
	public void tdelete() {
		log.info(service.remove(15L));
	}
	
	@Test
	public void testGetList() {
		service.getList(new Criteria(2,10)).forEach(board -> log.info(board));
	}
	

}
