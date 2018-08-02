package cn.com.dhcc.footPlatform.background.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.com.dhcc.footPlatform.background.domain.ReplyInfo;

public interface ReplyInfoMapper {
    int deleteByPrimaryKey(Integer replyId);
    
    int insert(ReplyInfo record);

    int insertSelective(ReplyInfo record);

    ReplyInfo selectByPrimaryKey(Integer replyId);

    int updateByPrimaryKeySelective(ReplyInfo record);

    int updateByPrimaryKeyWithBLOBs(ReplyInfo record);

    int updateByPrimaryKey(ReplyInfo record);
    //查找未读消息
    int countReply(String userId);
    //查找全部消息
    List<ReplyInfo> selecReplyInfo(@Param("userId")String userId,@Param("consuleId")String consuleId);
    //将消息变为已读
    int changeMark(Integer reply_id);
    
}