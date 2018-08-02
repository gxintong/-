package cn.com.dhcc.footPlatform.background.dao;

import java.util.List;

import cn.com.dhcc.footPlatform.background.domain.AnnouncementInfo;

public interface AnnouncementInfoMapper {
    int deleteByPrimaryKey(Integer aid);

    int insert(AnnouncementInfo record);

    int insertSelective(AnnouncementInfo record);

    AnnouncementInfo selectByPrimaryKey(Integer aid);

    int updateByPrimaryKeySelective(AnnouncementInfo record);

    int updateByPrimaryKey(AnnouncementInfo record);

	List<AnnouncementInfo> selectNotice();
}