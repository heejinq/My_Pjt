package my.pjt.mapper;


import java.util.List;
import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import my.pjt.domain.Criteria;
import my.pjt.domain.ReplyVO;

@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ReplyMapperTests {

	@Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper;
	
	@Test
	public void testMapper() {
		log.info(mapper);
	}
	
	private Long[] bnoArr = {1L,28L,3L};
	
	@Test
	public void testINsert() {
		IntStream.rangeClosed(1, 10).forEach(i -> {ReplyVO vo = new ReplyVO(); 
		vo.setBno(bnoArr[i % 3]);
		vo.setReply("댓글테스트"+i);
		vo.setReplyer("댓글러"+i);
		
		mapper.insert(vo);
		});
	}
	
	@Test
	public void testRead() {
		Long targetRno = 3L;
		ReplyVO vo = mapper.read(targetRno);
		log.info(vo);
				
	}
	@Test
	public void testu() {
		Long targetRno = 3L;
		ReplyVO vo = mapper.read(targetRno);
		vo.setReply("댓글수정");
		int count = mapper.update(vo);
		log.info("업데이트 카운트"+count);
				
	}
	
	@Test
	public void testd() {
		Long targetRno = 3L;
		mapper.delete(targetRno);
	}
	
	@Test
	public void testList() {
		Criteria cri = new Criteria();
		List<ReplyVO> replies = mapper.getListWithPaging(cri, bnoArr[0]);
		replies.forEach(reply -> log.info(reply));
	}

}
