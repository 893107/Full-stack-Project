package kr.pe.team.service;

import kr.pe.team.domain.Member;

public interface MemberService {

	Member getMember(Member member);
	Member insertMember(Member member);
}