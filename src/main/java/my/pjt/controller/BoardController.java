package my.pjt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import my.pjt.domain.BoardVO;
import my.pjt.domain.Criteria;
import my.pjt.domain.PageDTO;
import my.pjt.service.BoardService;

@RequestMapping("/board/*")
@Controller
@Log4j
@AllArgsConstructor
public class BoardController {
	
	
	@Autowired
	private BoardService service;
	
//	@GetMapping("/list")
//	public void list(Model model) {
//		log.info("list");
//		model.addAttribute("list",service.getList());
//	}
	
//	@GetMapping("/list")
//	public void list(Criteria cri,Model model){
//		log.info("list : "+cri);
//		model.addAttribute("list",service.getList(cri));
//	}
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		log.info("list "+cri);
		model.addAttribute("list",service.getList(cri));
//		model.addAttribute("pageMaker", new PageDTO(cri, 130));
		int total = service.getTotal(cri);
		log.info("total : "+total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		model.addAttribute("count_all",service.count_all(cri));
		 PageDTO pageDTO = new PageDTO(cri,service.count_all(cri));
	}
	
	
	@GetMapping("/register") //등록페이지
	public void register() {
		
	} 
	
	@PostMapping("/register") //등록하기
	public String register(BoardVO board, RedirectAttributes rttr) {
		log.info("register : " + board);
		service.register(board);
		rttr.addFlashAttribute("result", board.getBno());
		return "redirect:/board/list";
	}
	



	
//	@GetMapping("/get") //조회
//	public void boardget(@RequestParam("bno") Long bno,Model model) {
//		log.info("/get");;
//		model.addAttribute("board",service.get(bno));
//	}
	
//	@GetMapping({"/get","/modify"}) //조회,수정
//	public void get(@RequestParam("bno") Long bno,Model model) {
//		log.info("/get or modify");;
//		model.addAttribute("board",service.get(bno));
//	}
	
	@GetMapping({"/get","/modify"}) //조회,수정
	public void get(@RequestParam("bno") Long bno,@ModelAttribute("cri") Criteria cri,Model model) {
		log.info("/get or modify");;
		model.addAttribute("board",service.get(bno));
	}
	
	
	
	
//	@PostMapping("/modify") //수정
//	public String modify(BoardVO board,RedirectAttributes rttr) {
//		log.info("modify"+board);
//		if(service.modify(board)) {
//			rttr.addFlashAttribute("result", "success");
//		}
//		return "redirect:/board/list";
//	}
	
//	@PostMapping("/modify") //수정
//	public String modify(BoardVO board,@ModelAttribute("cri") Criteria cri,RedirectAttributes rttr) {
//		log.info("modify"+board);
//		if(service.modify(board)) {
//			rttr.addFlashAttribute("result", "success");
//		}
//		rttr.addAttribute("pageNum",cri.getPageNum());
//		rttr.addAttribute("amount",cri.getAmount());
//		rttr.addAttribute("type",cri.getType());
//		rttr.addAttribute("keyword",cri.getKeyword());
//		
//		return "redirect:/board/list";
//	}
	@PostMapping("/modify") //수정
	public String modify(BoardVO board,@ModelAttribute("cri") Criteria cri,RedirectAttributes rttr) {
		log.info("modify"+board);
		if(service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/board/list" + cri.getListLink();
	}
	
	
//	@RequestMapping("/remove")
//	public String remove(@RequestParam("bno") Long bno,RedirectAttributes rttr) {
//		log.info("remove" +bno);
//		if(service.remove(bno)) {
//			rttr.addFlashAttribute("result","success");	}
//		return "redirect:/board/list";
//	}
	
//	@RequestMapping("/remove")
//	public String remove(@RequestParam("bno") Long bno,@ModelAttribute("cri") Criteria cri,RedirectAttributes rttr) {
//		log.info("remove" +bno);
//		if(service.remove(bno)) {
//			rttr.addFlashAttribute("result","success");	
//			}rttr.addAttribute("pageNum",cri.getPageNum());
//			rttr.addAttribute("amount",cri.getAmount());
//			rttr.addAttribute("type",cri.getType());
//			rttr.addAttribute("keyword",cri.getKeyword());
//		return "redirect:/board/list";
//	}
	@RequestMapping("/remove")
	public String remove(@RequestParam("bno") Long bno,@ModelAttribute("cri") Criteria cri,RedirectAttributes rttr) {
		log.info("remove" +bno);
		if(service.remove(bno)) {
			rttr.addFlashAttribute("result","success");	
			}
		return "redirect:/board/list" + cri.getListLink();
	}
	
	@GetMapping ("/Rank") //랭크.jsp라고 가기
	public void Rank(Model model) {
		model.addAttribute("Rank",service.rankDate());
	}


}
