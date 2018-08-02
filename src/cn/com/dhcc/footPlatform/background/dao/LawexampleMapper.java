package cn.com.dhcc.footPlatform.background.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.com.dhcc.footPlatform.background.domain.Lawexample;
import cn.com.dhcc.footPlatform.background.domain.LawexampleWithBLOBs;

public interface LawexampleMapper {
    int deleteByPrimaryKey(Integer eid);
    //添加案例
    int insert(LawexampleWithBLOBs record);

    int insertSelective(LawexampleWithBLOBs record);

    LawexampleWithBLOBs selectByPrimaryKey(Integer eid);

    int updateByPrimaryKeySelective(LawexampleWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(LawexampleWithBLOBs record);

    int updateByPrimaryKey(Lawexample record);
    
    List<Lawexample> seleLawexample(Lawexample lawexample);
   
}