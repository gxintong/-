package cn.com.dhcc.footPlatform.background.service;

import java.util.List;

import cn.com.dhcc.footPlatform.background.domain.ConsultInfo;
import cn.com.dhcc.footPlatform.background.domain.ReplyInfo;

public interface IConsultService {
	  public int  addConsult(String type,String content,String province,String city,String user_id,String lawyer_id,String mark);
	  
	  public List<ConsultInfo> selectConsultInfo(ConsultInfo consultInfo);
	  
	  public List<ConsultInfo> selectConsultInfoById(ConsultInfo consultInfo);
	  //律师添加回复
	  public int consultReply(ReplyInfo replyInfo);
}
