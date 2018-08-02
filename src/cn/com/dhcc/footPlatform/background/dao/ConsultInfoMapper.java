package cn.com.dhcc.footPlatform.background.dao;

import java.util.List;

import cn.com.dhcc.footPlatform.background.domain.ConsultInfo;


public interface ConsultInfoMapper {
    int deleteByPrimaryKey(Integer consuleId);

    int insert(ConsultInfo record);
    //添加咨询
    int insertSelective(ConsultInfo record);

    ConsultInfo selectByPrimaryKey(Integer consuleId);

    int updateByPrimaryKeySelective(ConsultInfo record);

    int updateByPrimaryKeyWithBLOBs(ConsultInfo record);

    int updateByPrimaryKey(ConsultInfo record);
    //查询咨询
    List<ConsultInfo> selectConsultInfo(ConsultInfo consultInfo);
    //查询个人咨询
    List<ConsultInfo> selectConsultInfoById(ConsultInfo consultInfo);
    //更新咨询状态
    int updateStatus(Integer consuleId);
}