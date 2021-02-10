package com.naver.iamhch.service;

import java.util.ArrayList;

import com.naver.iamhch.entities.Member;

public interface MemberDao {

	int memberAll();
	void memberInsert(Member member);
	Member memberOne(String email);
	void memberUpdate(Member member);
	ArrayList<Member> memberList();
	int memberLevelUpdate(Member member);
	int memberLevelDelete(String email);
}


