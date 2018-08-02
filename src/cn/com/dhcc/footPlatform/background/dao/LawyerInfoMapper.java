package cn.com.dhcc.footPlatform.background.dao;

import java.util.List;

import cn.com.dhcc.footPlatform.background.domain.ImageInfo;
import cn.com.dhcc.footPlatform.background.domain.LawyerInfo;

public interface LawyerInfoMapper {
	//删除律师
    int deleteByPrimaryKey(String userId);

    int insert(LawyerInfo record);

    int insertSelective(LawyerInfo record);

    LawyerInfo selectByPrimaryKey(String  userId);
    //律师修改个人信息
    int updateByPrimaryKeySelective(LawyerInfo record);
    
    int updateByPrimaryKey(LawyerInfo record);
   
    int insertLawyer(LawyerInfo record);
    //律师登录
    LawyerInfo findByPhoneAndPass(LawyerInfo record);
    //查找所有律师
    List<LawyerInfo> selectLawyerInfo(LawyerInfo record);
    //查找律师个人信息
    LawyerInfo lawyerInfo(String userId);
    //上传头像
    int upload(ImageInfo image);
    //审核律师
    int updateMark(LawyerInfo lawyer);
    
}