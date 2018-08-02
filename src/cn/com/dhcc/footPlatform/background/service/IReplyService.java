package cn.com.dhcc.footPlatform.background.service;

import java.util.List;

import cn.com.dhcc.footPlatform.background.domain.ReplyInfo;


public interface IReplyService {
	//查找未读消息数量
	public int countReply(String userId);
	//查找全部消息
	public List<ReplyInfo> selectReplyInfo(String userId,String consuleId);
	//将消息变为已读状态
	int changeMark(Integer reply_id);
	
}
