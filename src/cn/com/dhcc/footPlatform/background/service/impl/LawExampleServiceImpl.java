package cn.com.dhcc.footPlatform.background.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhcc.footPlatform.background.dao.LawexampleMapper;
import cn.com.dhcc.footPlatform.background.domain.Lawexample;
import cn.com.dhcc.footPlatform.background.domain.LawexampleWithBLOBs;
import cn.com.dhcc.footPlatform.background.service.ILawExampleService;

@Service
public class LawExampleServiceImpl implements ILawExampleService {
	 @Autowired
	 private LawexampleMapper lawexampleMapper;
	@Override
	//添加法律常识
	public int addLawexample(LawexampleWithBLOBs lawexample) {
		int num=lawexampleMapper.insert(lawexample);
		 return num;
	}
	@Override
	public List<Lawexample> selectExample(Lawexample lawexample) {
		// TODO Auto-generated method stub
		List<Lawexample> eList=lawexampleMapper.seleLawexample(lawexample);
		return eList;
	}
	@Override
	public int delLawexample(String eid) {
		// TODO Auto-generated method stub
		int eid1=Integer.parseInt(eid);
		int num=lawexampleMapper.deleteByPrimaryKey(eid1);
		return num;
	}
	@Override
	public LawexampleWithBLOBs caseInfo(String eid) {
		int eid1=Integer.parseInt(eid);
		LawexampleWithBLOBs caseinfo=lawexampleMapper.selectByPrimaryKey(eid1);
		return caseinfo;
	}

}
