package cn.com.dhcc.footPlatform.background.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhcc.footPlatform.background.dao.ReplyInfoMapper;
import cn.com.dhcc.footPlatform.background.domain.ReplyInfo;
import cn.com.dhcc.footPlatform.background.service.IReplyService;
@Service
public class ReplyServiceImpl  implements IReplyService{
	@Autowired
	private ReplyInfoMapper replyInfoMapper;
	@Override
	public int countReply(String userId) {
		int num=replyInfoMapper.countReply(userId);
		return  num;
	}
	@Override
	public List<ReplyInfo> selectReplyInfo(String userId,String consuleId) {
		// TODO Auto-generated method stub
		List<ReplyInfo> list=replyInfoMapper.selecReplyInfo(userId,consuleId);
		return list;
	}
	@Override
	public int changeMark(Integer reply_id) {
		// TODO Auto-generated method stub
		int num=replyInfoMapper.changeMark(reply_id);
		return num;
	}
	

}
