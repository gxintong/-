package cn.com.dhcc.footPlatform.background.service;

import java.util.List;

import cn.com.dhcc.footPlatform.background.domain.LawyerInfo;

public interface ILawyserSearchService {
	//找律师
    public List<LawyerInfo> LawyerSearch(LawyerInfo lawyerInfo);
    //查询律师个人信息
    public LawyerInfo LawyerInfo(String userId);
	//律师修改个人信息	
	public int LawyerEdit(LawyerInfo lawyerInfo);
}
