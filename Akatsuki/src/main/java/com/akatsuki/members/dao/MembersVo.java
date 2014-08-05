package com.akatsuki.members.dao;

public class MembersVo {
	
	private String member_id;
	private String member_password;
	private String member_HP;
	private String password_hint;
	private String hp1;
	private String hp2;
	private String hp3;
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_password() {
		return member_password;
	}
	public void setMember_password(String member_password) {
		this.member_password = member_password;
	}
	public String getMember_HP() {
		return member_HP;
	}
	public void setMember_HP(String member_HP) {
		this.member_HP = member_HP;
	}
	public String getPassword_hint() {
		return password_hint;
	}
	public void setPassword_hint(String password_hint) {
		this.password_hint = password_hint;
	}
	
	
}
