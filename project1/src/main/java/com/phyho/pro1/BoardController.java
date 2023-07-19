package com.phyho.pro1;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BoardController {
	// user -> Controller -> Service -> DAO -> mybatis -> DB
	
	// Autowired말고 Resource로 연결
	@Resource(name="boardService")
	private BoardService boardService;
	
	@Autowired
	private Util util; // 컴포넌트 Util과 연결했습니다.

	
	@GetMapping("/board")
	public String board(Model model) {
		// 서비스에서 값 가져오기
		model.addAttribute("list", boardService.boardList());
		
		return "board";
	}
	
	// http://localhost:8080/pro1/detail?bno=121
	// 파라미터로 들어오는 값 잡기
	@GetMapping("/detail")// Model은 jsp에 값을 붙이기 위해서 넣었습니다.
	public String detail(HttpServletRequest request, Model model) {
		String bno = request.getParameter("bno");
		// bno에 요청하는 값이 있습니다. 이 값을 db까지 보내겠습니다.
		//System.out.println("bno : "+ bno);
		BoardDTO dto = boardService.detail(bno);
		model.addAttribute("dto", dto);
		System.out.println(util.getIp() + bno);
		
		return "detail";
	}
	
	@GetMapping("/write")
	public String write() {
		return "write";
	}
	
	
	@PostMapping("/write")
	public String write(HttpServletRequest request){
		// 사용자가 입력한 데이터 변수에 담기
//		System.out.println(request.getParameter("title"));
//		System.out.println(request.getParameter("content"));
//		System.out.println("================");
		
		
		BoardDTO dto = new BoardDTO();
		dto.setBtitle(request.getParameter("title"));
		dto.setBcontent(request.getParameter("content"));
		dto.setBwrite("홍길동2");	// 이건 임시로 적었습니다. 로그인 추가되면 변경하겠습니다.
		
		// Service -> DAO -> mybatis -> DB로 보내서 저장하기
		boardService.write(dto);
		

		return "redirect:board"; // 다시 컨트롤러 지나가기, GET방식으로 갑니다.
	}
	
	@GetMapping("/delete")
					//   HttpServletRequest의 getParameter();
	public String delete(@RequestParam(value = "bno", required = false, defaultValue = "103") int bno) {	
		// System.out.println("bno : " + bno);
		//dto
		BoardDTO dto = new BoardDTO();
		dto.setBno(bno);
		// dto.setBwrite(null) 사용자정보
		// 추후 로그인을 하면 사용자의 정보도 담아서 보냅니다.
		
		boardService.delete(dto);
		
		return "redirect:board";	// 삭제를 완료한 후에 다시 보드로 갑니다.
	}
	
}

 



