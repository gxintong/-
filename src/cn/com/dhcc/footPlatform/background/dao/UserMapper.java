package cn.com.dhcc.footPlatform.background.dao;

import java.util.List;

import cn.com.dhcc.footPlatform.background.domain.UserInfo;
/**
 * 
 * @author lihang
 * @date  2016年10月26日 上午9:33:24
 * @description
 */
public interface UserMapper {
    
	int deleteByPrimaryKey(String userId);

    int insert(UserInfo record);

    int insertSelective(UserInfo record);

    UserInfo selectByPrimaryKey(String userId);

    int updateByPrimaryKeySelective(UserInfo record);

    int updateByPrimaryKey(UserInfo record);

    
    
    /**
     * 用户登录
     * @param userForFind
     * @return
     */
    UserInfo findByPhoneAndPass(UserInfo userForFind);
    /**
     * 用户修改密码
     * @author lihang
     * @param password
     * @return
     */
    int updateForPassword(UserInfo user);
    //查找所有用户
    List<UserInfo> selectUser();
}