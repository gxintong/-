package cn.com.dhcc.footPlatform.background.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhcc.footPlatform.background.dao.ConsultInfoMapper;
import cn.com.dhcc.footPlatform.background.dao.ReplyInfoMapper;
import cn.com.dhcc.footPlatform.background.domain.ConsultInfo;
import cn.com.dhcc.footPlatform.background.domain.LawyerInfo;
import cn.com.dhcc.footPlatform.background.domain.ReplyInfo;
import cn.com.dhcc.footPlatform.background.service.IConsultService;
import cn.com.dhcc.footPlatform.background.util.DateBuilder;
@Service
public class IConsultServiceImpl implements IConsultService {
	@Autowired
	private ConsultInfoMapper consultMapper;
	@Autowired
	private ReplyInfoMapper replyInfoMapper;
	@Override
	public int addConsult(String type, String content, String province,
			String city,String userId,String lawyer_id,String mark) {
		DateBuilder dateBuilder=new DateBuilder();
		String time=dateBuilder.getTimeToMM();		
		String status="0";
		ConsultInfo con=new ConsultInfo();
		con.setLawyerId(lawyer_id);
		con.setDescription(content);
		con.setStatus(status);
		con.setCid(city);
		con.setPid(province);
		con.setTime(time);
		con.setType(type);
		con.setMark(mark);
		con.setUserId(userId);
		int num =consultMapper.insertSelective(con);
		return num;
		
		
	}
	@Override
	public List<ConsultInfo> selectConsultInfo(ConsultInfo consultInfo) {
		List<ConsultInfo> list=consultMapper.selectConsultInfo(consultInfo);
		return list;
		
	}

	@Override
	public int consultReply(ReplyInfo replyInfo) {
		System.out.println(replyInfo);
	    int num=replyInfoMapper.insert(replyInfo);
	    if(num>0){
	    	consultMapper.updateStatus(replyInfo.getConsultId());
	    }
		return num;
	}
	@Override
	public List<ConsultInfo> selectConsultInfoById(ConsultInfo consultInfo) {
		List<ConsultInfo> list=consultMapper.selectConsultInfoById(consultInfo);
		return list;
	}
}
