package com.King.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.King.infra.common.constants.Constants;


@Controller
@RequestMapping(value = "/member/")
public class memberController {
	@Autowired
	MemberServiceImpl service;


	// 리스트 페이지
	@RequestMapping(value = "memberList")
	public String memberList(Model model,@ModelAttribute("vo") MemberVo vo) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<Member> list = service.selectListService(vo);
		model.addAttribute("list", list);
				
		System.out.println("vo.getSh_div()"+vo.getSh_div());
		return "infra/member/xdmin/memberList";
	}	
	
	
	// 폼 뷰
	@RequestMapping(value = "memberView")
//	public String memberView(Model model,@ModelAttribute("vo") MemberVo vo) throws Exception {
	public String memberView(Model model,@ModelAttribute("vo") MemberVo vo) throws Exception {
		vo.setMemberFormMode(0);
		
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/member/xdmin/memberForm";
	}
	
	
	
	// 멤버 등록 페이지
	@RequestMapping(value = "memberReg")
	public String memberRegForm(Model model,@ModelAttribute("vo") MemberVo vo) throws Exception {
		vo.setMemberFormMode(1);
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/member/xdmin/memberForm";
	}
	
	
	// 코드그룹 인서트
	@RequestMapping(value = "memberInst")
	public String memberInst(Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		int result = service.insertOne(dto);
		System.out.println("result=========="+result);
		vo.setLi_seq(dto.getSeq());
		System.out.println("vo.getLi_seq()" + vo.getLi_seq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
//		return "redirect:/codeGroup/codeGroupList";
		return "redirect:/member/memberView";
	}
	
	
	// 유저 회원가입
	@RequestMapping(value = "memberRegUser")
	public String memberRegUser() throws Exception {
		
		return "infra/member/user/memberReg";
	}	
	
	@ResponseBody
	@RequestMapping(value = "checkId")
	public Map<String, Object> checkId(Member dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		int result = service.selectDuplicate(dto);
		if (result > 0) {
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	
	// 로그인화면
	@RequestMapping(value = "memberLogin")
	public String memberLogin() throws Exception {
		
		
		return "infra/member/user/login";
	}	
	
	
	// 로그인동작
	@ResponseBody
	@RequestMapping(value = "loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
			// 아이디 비밀번호 확인
			Member rtMember = service.selectOneLogin(dto);
			if (rtMember != null) {
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
				httpSession.setAttribute("sessSeq", rtMember.getSeq());
				httpSession.setAttribute("sessId", rtMember.getId());
				httpSession.setAttribute("sessName", rtMember.getName());
				returnMap.put("rt", "success");
			} else {
				// 비밀번호 실패
				returnMap.put("rt", "fail");
			}
		return returnMap;
	}
	
	
	
	
	// 유저 회원정보
	@RequestMapping(value = "memberFormUser")
	public String memberFormUser() throws Exception {
		
		return "infra/member/user/memberFormUser";
	}	
	

}
