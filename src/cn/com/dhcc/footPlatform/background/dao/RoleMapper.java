package cn.com.dhcc.footPlatform.background.dao;

import cn.com.dhcc.footPlatform.background.domain.Role;
/**
 * 
 * @author lihang
 * @date  2016年10月26日 上午9:33:02
 * @description
 */
public interface RoleMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table WORK_ROLE
     *
     * @mbggenerated Wed Oct 26 09:28:26 CST 2016
     */
    int insert(Role record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table WORK_ROLE
     *
     * @mbggenerated Wed Oct 26 09:28:26 CST 2016
     */
    int insertSelective(Role record);
}