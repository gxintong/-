package cn.com.dhcc.footPlatform.background.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhcc.footPlatform.background.dao.AnnouncementInfoMapper;
import cn.com.dhcc.footPlatform.background.domain.AnnouncementInfo;
import cn.com.dhcc.footPlatform.background.service.NoticeService;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private AnnouncementInfoMapper announcementInfoMapper;
	@Override
	public List<AnnouncementInfo> selectNotice() {
		List<AnnouncementInfo> list=announcementInfoMapper.selectNotice();
		System.out.println(list.size());
		return list;
	}
	@Override
	public int addNotice(AnnouncementInfo announcementInfo) {
		int num=announcementInfoMapper.insert(announcementInfo);
		return num;
	}
	@Override
	public int delNotice(String aid) {
		int num=announcementInfoMapper.deleteByPrimaryKey(Integer.parseInt(aid));
		return num;
	}
	@Override
	public int editNotice(AnnouncementInfo announcementInfo) {
		// TODO Auto-generated method stub
		int num=announcementInfoMapper.updateByPrimaryKeySelective(announcementInfo);
		return num;
	}

}
