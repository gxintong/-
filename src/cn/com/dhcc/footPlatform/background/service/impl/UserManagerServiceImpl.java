package cn.com.dhcc.footPlatform.background.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhcc.footPlatform.background.dao.LawyerInfoMapper;
import cn.com.dhcc.footPlatform.background.dao.UserMapper;
import cn.com.dhcc.footPlatform.background.domain.LawyerInfo;
import cn.com.dhcc.footPlatform.background.domain.UserInfo;
import cn.com.dhcc.footPlatform.background.service.IUserManagerService;

@Service
public class UserManagerServiceImpl implements IUserManagerService{
    @Autowired
    private LawyerInfoMapper lawyerInfoMapper;
    @Autowired
    private UserMapper userMapper;
    //管理员删除用户
	@Override
	public int delLawyer(String userId) {
		// TODO Auto-generated method stub
		int num=lawyerInfoMapper.deleteByPrimaryKey(userId);
		System.out.println(num);
		return num;
	}
	@Override
	public List<UserInfo> selectUser() {
		// TODO Auto-generated method stub
		List<UserInfo> ulist=userMapper.selectUser();
		return ulist;
	}
	//删除普通用户
	@Override
	public int delUser(String user_id) {
		// TODO Auto-generated method stub
		int num=userMapper.deleteByPrimaryKey(user_id);
		System.out.println(num);
		return num;
	}
	@Override
	public int updateMark(String userId, String mark) {
		// TODO Auto-generated method stub
		LawyerInfo lawyer=new LawyerInfo();
		lawyer.setUserId(userId);
		lawyer.setMark(mark);
		int num=lawyerInfoMapper.updateMark(lawyer);
		return num;
	}

}
