package cn.com.dhcc.footPlatform.background.dao;

import cn.com.dhcc.footPlatform.background.domain.TaskDetails;
/**
 * 
 * @author lihang
 * @date  2016年10月26日 上午9:33:09
 * @description
 */
public interface TaskDetailsMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table WORK_TASK_DETAILS
     *
     * @mbggenerated Wed Oct 26 09:28:26 CST 2016
     */
    int insert(TaskDetails record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table WORK_TASK_DETAILS
     *
     * @mbggenerated Wed Oct 26 09:28:26 CST 2016
     */
    int insertSelective(TaskDetails record);
}