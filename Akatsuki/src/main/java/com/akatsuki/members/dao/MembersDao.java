package com.akatsuki.members.dao;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service(value = "membersDao")
public class MembersDao {
	 @Resource(name = "membersMapper")
	 private MembersMapper membersMapper;
	 
	 public void insert(MembersVo membersVo){
		 this.membersMapper.insert(membersVo);
	 }
}
