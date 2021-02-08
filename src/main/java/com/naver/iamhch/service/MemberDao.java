package com.naver.iamhch.service;

import com.naver.iamhch.entities.Member;

public interface MemberDao {

	int memberAll();
	void memberInsert(Member member);
	Member memberOne(String email);

	
	
}


