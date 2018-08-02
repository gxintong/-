package cn.com.dhcc.footPlatform.background.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhcc.footPlatform.background.dao.LawyerInfoMapper;
import cn.com.dhcc.footPlatform.background.domain.LawyerInfo;
import cn.com.dhcc.footPlatform.background.service.ILawyserSearchService;
@Service
public class LawyerSearchServiceImpl  implements ILawyserSearchService {
	@Autowired
	private LawyerInfoMapper lawyerInfoMapper;

	@Override
	public List<LawyerInfo> LawyerSearch(LawyerInfo lawyerInfo) {
		List<LawyerInfo> list=lawyerInfoMapper.selectLawyerInfo(lawyerInfo);
		return list;
	}

	@Override
	public LawyerInfo LawyerInfo(String userId) {
		// TODO Auto-generated method stub
		LawyerInfo lawyerInfo=lawyerInfoMapper.lawyerInfo(userId);
		return lawyerInfo;
	}

	@Override
	//律师修改个人信息
	public int LawyerEdit(LawyerInfo lawyerInfo) {
		int num =lawyerInfoMapper.updateByPrimaryKeySelective(lawyerInfo);
		return num;
	
		
	}

	
}
