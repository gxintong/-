package cn.com.dhcc.footPlatform.background.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.com.dhcc.footPlatform.background.domain.Lawknowledge;

public interface LawknowledgeMapper {
    int deleteByPrimaryKey(Integer articalId);
    //添加法律常识
    int insert(Lawknowledge record);

    int insertSelective(Lawknowledge record);

    Lawknowledge selectByPrimaryKey(Integer articalId);

    int updateByPrimaryKeySelective(Lawknowledge record);

    int updateByPrimaryKeyWithBLOBs(Lawknowledge record);

    int updateByPrimaryKey(Lawknowledge record);
    //查找法律常识
    List<Lawknowledge> selectknow(Lawknowledge lawknowledge);
}