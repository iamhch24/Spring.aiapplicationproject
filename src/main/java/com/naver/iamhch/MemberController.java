package com.naver.iamhch;


import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.naver.iamhch.entities.Board;
import com.naver.iamhch.entities.Member;
import com.naver.iamhch.service.MemberDao;



@Controller
public class MemberController {
	
	@Autowired // new 객체로 안만들어줘도 됨. 
    private SqlSession sqlSession; // sql 세션화 시킨 클래스 -- 로그인을 하면 그 정보가 연결됨. --> 세션 선언함. (로그인 정보) 다른 페이지에서 정보 사용가능

	@Autowired
	BCryptPasswordEncoder passwordEncoder;

	@Autowired
	Member member;
	
	@Autowired
	Board board;


	@RequestMapping(value = "/emailConfirmAjax", method = RequestMethod.POST)
	@ResponseBody
	public String emailConfirmAjax(@RequestParam String email) {

		MemberDao dao = sqlSession.getMapper(MemberDao.class); // 세션에 매핑
		Member data = dao.memberOne(email);
		String row="yes";
		if(data == null){
			row = "no";
		}
		else{
			System.out.println("-->ajax 호출 : "+data.getName());
			
		}
		return row;
	}	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		MemberDao dao = sqlSession.getMapper(MemberDao.class); // 세션에 매핑
		
//		Board board = new Board();
		board.setId("korea");
		board.setName("김한국");
		
		
		
		return "login/login";
	}

	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Locale locale, Model model,HttpSession session) {

		session.invalidate();		
		
		return "redirect:index";
	}
	
	
	@RequestMapping(value = "/loginUp", method = RequestMethod.POST)
	public String loginup(Locale locale, Model model, @ModelAttribute Member member, HttpSession session) {
		System.out.println("loginUp");
		
		MemberDao dao = sqlSession.getMapper(MemberDao.class); // 세션에 매핑
		Member data = dao.memberOne(member.getEmail());
		if(data==null){
			return "login/login_failed";
		}else{
			
			boolean passchk=BCrypt.checkpw(member.getPassword(), data.getPassword());
			System.out.println("===============success===data:"+data.getEmail()+", check:"+passchk);
			if (passchk) {
				session.setAttribute("sessionemail", data.getEmail());
				session.setAttribute("sessionname", data.getName());
				session.setAttribute("sessionphoto", data.getPhoto());
				session.setAttribute("sessionlevel", data.getMemlevel());
				
						
				return "redirect:index";				
			} else{
				return "login/login_failed";
			}
			
		}
			
	}	
	
	@RequestMapping(value = "/memberInsert", method = RequestMethod.GET)
	public String memberInsert(Locale locale, Model model) {
		
		MemberDao dao = sqlSession.getMapper(MemberDao.class); // 세션에 매핑
		int count = dao.memberAll();
		System.out.println("===============success:count"+count);
		return "member/member_insert";
	}
	
	@RequestMapping(value = "/member_insertSave", method = RequestMethod.POST)
	public String member_insertSave(Model model, @ModelAttribute Member member) {
		System.out.println("===============success:member_insertSave:email ="+member.getEmail());
		System.out.println("===============success:member_insertSave:name ="+member.getName());
		System.out.println("===============success:member_insertSave:pwd ="+member.getPassword());
		System.out.println("===============success:member_insertSave:phone ="+member.getPhone());
		if(member.getPhoto() == null || member.getPhoto().equals("")){
			member.setPhoto("resources/images/noimage.jpg");
		}
			
//		DB접근 순서
//		1. service/ DAO 인터페이스 에서 메서드 추가 	void memberInsert(Member member);
//		2. mapper/ XLM 수정  ::  key&value 타입 들은 parameterType="hashMap" 설정함.
//		3. MemberDao dao = sqlSession.getMapper(MemberDao.class); // 매핑 실행
//		4. dao.memberInsert(member);
		
		MemberDao dao = sqlSession.getMapper(MemberDao.class); // 세션에 매핑
		
		
		String encodepassword = passwordEncoder.encode(member.getPassword());
		System.out.println("encode pw : " + encodepassword);
		member.setPassword(encodepassword);
		dao.memberInsert(member);
		return "index";
	}
	
	
	
	@RequestMapping(value = "/memberUpdate", method = RequestMethod.GET)
	public String memberUpdate(Locale locale, Model model, HttpSession session) {
		String email = (String) session.getAttribute("sessionemail");
		System.out.println("===============success:email"+email);
		MemberDao dao = sqlSession.getMapper(MemberDao.class); // 세션에 매핑
		Member row = dao.memberOne(email);
		model.addAttribute("row",row);
//		System.out.println("===============success:count"+count);
		return "member/member_update";
	}

	
		
	@RequestMapping(value = "/member_updateSave", method = RequestMethod.POST)
	public String member_updateSave(Model model, HttpSession session, Member member, @RequestParam CommonsMultipartFile imgfile ) throws IOException {
//		System.out.println("---------------------success");
		
//		System.out.println("---> filename:"+imgfile.getOriginalFilename());
//		System.out.println("---> filename:"+member.getOldphoto());
//		System.out.println("---> email"+member.getEmail());
		String filename = imgfile.getOriginalFilename();
		String path = "D:/Code/Spring/AIApplicationProject/src/main/webapp/resources/uploadimages/";
		String realpath = "resources/uploadimages/";		//server path 
		
		
		if(filename.equals("")){
			member.setPhoto(member.getOldphoto());
		}else{
			String cutemail = member.getEmail().substring(0, member.getEmail().indexOf("@"));
			byte bytes[] = imgfile.getBytes();
			try {
				BufferedOutputStream output = new BufferedOutputStream(new FileOutputStream(path+cutemail+filename));
				output.write(bytes);
				output.flush();
				output.close();
				member.setPhoto(realpath+cutemail+filename);
				
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("---> cutemail"+cutemail);
		}
		
		MemberDao dao = sqlSession.getMapper(MemberDao.class); // 세션에 매핑
		dao.memberUpdate(member);
		
//		DB접근 순서
//		1. service/ DAO 인터페이스 에서 메서드 추가 	void memberInsert(Member member);
//		2. mapper/ XLM 수정  ::  key&value 타입 들은 parameterType="hashMap" 설정함.
//		3. MemberDao dao = sqlSession.getMapper(MemberDao.class); // 매핑 실행
//		4. dao.memberInsert(member);
		

		return "index";

	}
	
	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	public String memberList(Locale locale, Model model) {
		
		MemberDao dao = sqlSession.getMapper(MemberDao.class); // 세션에 매핑
		ArrayList<Member> members = dao.memberList();
		System.out.println("===============success:count"+members.size());
		
		for(Member member : members){
			System.out.println(member.getEmail());
		}
//		model.addAllAttributes(members);
		model.addAttribute("members",members);
		
		return "member/member_list";
	}
	
	
	@RequestMapping(value = "/memberUpdateAjax", method = RequestMethod.POST)
	@ResponseBody
	public String memberUpdateAjax(@RequestParam String email, @RequestParam int memlevel) {

		System.out.println("memberUpdateAjax :: email="+email+", memlevel="+memlevel);
		member.setEmail(email);
		member.setMemlevel(memlevel);
		MemberDao dao = sqlSession.getMapper(MemberDao.class); // 세션에 매핑
		int result = dao.memberLevelUpdate(member);
		System.out.println("memberUpdateAjax :: result="+result );
		if(result>0){
			return "Y";
		}else{
			return "N";	
		}
		
	}	

	@RequestMapping(value = "/memberDeleteAjax", method = RequestMethod.POST)
	@ResponseBody
	public String memberDeleteAjax(@RequestParam String email) {

		System.out.println("memberDeleteAjax :: email="+email);
		MemberDao dao = sqlSession.getMapper(MemberDao.class); // 세션에 매핑
		int result = dao.memberLevelDelete(email);
		System.out.println("memberDeleteAjax :: result="+result );
		if(result>0){
			return "Y";
		}else{
			return "N";	
		}
		
	}	

	
}
