package cn.com.dhcc.footPlatform.background.dao;

import cn.com.dhcc.footPlatform.background.domain.ImageInfo;

public interface ImageInfoMapper {
    int deleteByPrimaryKey(Integer imageId);

    int insert(ImageInfo record);

    int insertSelective(ImageInfo record);

    ImageInfo selectByPrimaryKey(Integer imageId);

    int updateByPrimaryKeySelective(ImageInfo record);

    int updateByPrimaryKey(ImageInfo record);
}