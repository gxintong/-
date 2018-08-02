package cn.com.dhcc.footPlatform.background.service;

import java.util.List;

import cn.com.dhcc.footPlatform.background.domain.Lawexample;
import cn.com.dhcc.footPlatform.background.domain.LawexampleWithBLOBs;

public interface ILawExampleService {
	public	int addLawexample(LawexampleWithBLOBs lawexample);
	//查找案例
	public List<Lawexample> selectExample(Lawexample lawexample);
	//查看案例具体信息
	public LawexampleWithBLOBs caseInfo(String eid);
	//删除案例
	public int delLawexample(String eid);

}
