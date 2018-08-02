package cn.com.dhcc.footPlatform.background.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhcc.footPlatform.background.dao.LawknowledgeMapper;
import cn.com.dhcc.footPlatform.background.dao.LawyerInfoMapper;
import cn.com.dhcc.footPlatform.background.domain.Lawknowledge;
import cn.com.dhcc.footPlatform.background.service.ILawknowledgeService;

@Service
public class LawknowledgeServiceImpl  implements ILawknowledgeService{
 @Autowired
 private LawknowledgeMapper lawknowledgeMapper;
 //添加法律常识
 public int addLawknowledge(Lawknowledge lawknowledge) {
	 int num=lawknowledgeMapper.insert(lawknowledge);
	 return num;
	
}
@Override
public List<Lawknowledge> selectknowle(Lawknowledge lawknowledge) {
	// TODO Auto-generated method stub
	List<Lawknowledge> list=lawknowledgeMapper.selectknow(lawknowledge);
	return list;
}
@Override
public int delLawknowledge(String articalId) {
	// TODO Auto-generated method stub
	int articalId1=Integer.parseInt(articalId);
	int num=lawknowledgeMapper.deleteByPrimaryKey(articalId1);
	return num;
}
}
