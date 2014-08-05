package com.akatsuki.members.dao;

import org.springframework.stereotype.Repository;

@Repository(value = "membersMapper")
public interface MembersMapper {
	
	void insert(MembersVo membersVo);
}
