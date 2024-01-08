package kr.co.chacha.education;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/education")
public class EduCont {
	
	public EduCont() {
		System.out.println("-----EduCont() 객체 생성");
	}
	
	@Autowired
	private EduDAO eduDao;
	
	@RequestMapping("/educationList")
	public ModelAndView educationList() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("education/educationList");
		return mav;
	}
	
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		
		session.removeAttribute("s_id");
		session.removeAttribute("s_passwd");
		session.removeAttribute("s_mlevel");
		
		return "redirect:/";
		
	}//logout end
	
	@GetMapping("/dogox")
	public ModelAndView dogox() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("education/dogox");
		return mav;
	}
	
	@GetMapping("/catox")
	public ModelAndView catox() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("education/catox");
		return mav;
	}
	
	@GetMapping("/dog")
	public ModelAndView dog() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("education/dog");
		return mav;
	}
	
	@GetMapping("/dogResult")
	public ModelAndView dogResult() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("education/dogResult");
		return mav;
	}
	
	/*
	@GetMapping("/quizan")
	public ModelAndView quizan() {
	    ModelAndView mav = new ModelAndView();
	    
	    // 퀴즈 정답을 배열로 생성하여 뷰로 전달
	    String[] answers = {"X", "O", "X", "O", "X", "O", "X", "O", "X", "O"};
	    mav.addObject("answers", answers);  
	    mav.setViewName("education/quizan");
	    return mav;
	
	}}*/

}
