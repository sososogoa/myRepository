package com.hungpick.dto;

public class AnswerVo {

	private AnswerDto answerDto;
	private Question qesDto;
	private MemberDto memberDto;
	private AdminDto adminDto;
	
	public AdminDto getAdminDto() {
		return adminDto;
	}
	public void setAdminDto(AdminDto adminDto) {
		this.adminDto = adminDto;
	}
	public MemberDto getMemberDto() {
		return memberDto;
	}
	public void setMemberDto(MemberDto memberDto) {
		this.memberDto = memberDto;
	}
	public AnswerDto getAnswerDto() {
		return answerDto;
	}
	public void setAnswerDto(AnswerDto answerDto) {
		this.answerDto = answerDto;
	}
	public Question getQesDto() {
		return qesDto;
	}
	public void setQesDto(Question qesDto) {
		this.qesDto = qesDto;
	}
	
}
