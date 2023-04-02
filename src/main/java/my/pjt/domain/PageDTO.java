package my.pjt.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {
	
	private int startPage; //시작번호
	private int endPage; //끝번호
	private boolean prev, next; //이전,다음번호 계산 (이전꺼는 1보다 커야함)
	private int total; //총페이지수
	private Criteria cri;
	
	public PageDTO(Criteria cri,int total) {
		this.cri = cri;
		this.total = total;
		this.endPage = (int)(Math.ceil(cri.getPageNum()/10.0))*10;
		this.startPage = this.endPage - 9;
		int realEnd =(int)(Math.ceil((total*1.0)/cri.getAmount()));
		if(realEnd < this.endPage) { //만약 진짜 끝페이지가 끝페이지면 그 이후에는 페이징처리 없음
			this.endPage = realEnd;
		}
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
	}

}
