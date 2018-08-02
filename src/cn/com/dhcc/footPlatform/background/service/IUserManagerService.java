package cn.com.dhcc.footPlatform.background.service;

import java.util.List;

import cn.com.dhcc.footPlatform.background.domain.UserInfo;

public interface IUserManagerService {
	//删除律师
	public int delLawyer(String temp);
	//删除用户
	public int delUser(String temp);
	//查找所有用户
	public List<UserInfo> selectUser();
	//律师审核
	public int updateMark(String userId,String mark);

}
