package cn.com.dhcc.footPlatform.background.service;

import java.util.List;

import cn.com.dhcc.footPlatform.background.domain.AnnouncementInfo;

public interface NoticeService {
     public List<AnnouncementInfo> selectNotice();

	 public int addNotice(AnnouncementInfo announcementInfo);

	 public int delNotice(String aid);

	 public int editNotice(AnnouncementInfo announcementInfo);
}
