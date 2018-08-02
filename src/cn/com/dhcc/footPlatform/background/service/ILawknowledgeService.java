package cn.com.dhcc.footPlatform.background.service;

import java.util.List;

import cn.com.dhcc.footPlatform.background.domain.Lawknowledge;

public interface ILawknowledgeService {
	//添加法律常识
	public int addLawknowledge(Lawknowledge lawknowledge);
	//查找法律常识
	public List<Lawknowledge> selectknowle(Lawknowledge lawknowledge);
	//删除法律常识
	public int delLawknowledge(String articalId);

}
