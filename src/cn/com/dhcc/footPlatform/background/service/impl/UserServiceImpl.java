package cn.com.dhcc.footPlatform.background.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhcc.footPlatform.background.dao.LawyerInfoMapper;
import cn.com.dhcc.footPlatform.background.dao.UserMapper;
import cn.com.dhcc.footPlatform.background.domain.LawyerInfo;
import cn.com.dhcc.footPlatform.background.domain.UserInfo;
import cn.com.dhcc.footPlatform.background.service.IUserService;
/**
 * 
 * @author lihang
 * @date  2016年10月17 下午4:45:32
 * @description userservice 实现类
 */
@Service
public class UserServiceImpl implements IUserService {
   
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private LawyerInfoMapper  lawyerInfoMapper;
	
	public UserInfo login(String phone, String password) {
		UserInfo userForFind = new UserInfo ();
		userForFind.setPhone(phone);
		userForFind.setPassword(password);
		
		 UserInfo userFind = userMapper.findByPhoneAndPass(userForFind);
		
		if(userFind!=null){
			
			return userFind;
		}
		
		return null;
	}


	public int changePass(UserInfo user) {
		
		
		Integer result = userMapper.updateForPassword(user);
		if(result!=null&&result!=0){
			return 1;
		}
		
		return 0;
	}


	
	public int regist(String phone,String password) {
		// TODO Auto-generated method stub
		UserInfo user = new UserInfo ();
		user.setPhone(phone);
		user.setPassword(password);
		user.setRoleId("1001");
		String userId="pub"+phone;
		user.setUserId(userId);
		int num= userMapper.insertSelective(user);
		return num;
		
	}


	@Override
	public int lawRegist(String phone,String user_name, String city,
			String password, String firm,String province, String license) {
		// TODO Auto-generated method stub
		String userId="law"+phone;
		LawyerInfo lawyer=new LawyerInfo();
		//System.out.println(city+firm+license+user_name+password+phone+province);
		lawyer.setCity(city);
		lawyer.setFirm(firm);
		lawyer.setLicense(license);
		lawyer.setName(user_name);
		lawyer.setPassword(password);
		lawyer.setPhone(phone);
		lawyer.setProvince(province);
		lawyer.setMark("0");
		lawyer.setUserId(userId);
		lawyer.setRoleId("1002");
		int num=lawyerInfoMapper.insertLawyer(lawyer);
		return num;
	}


	@Override
	public LawyerInfo lawyerlogin(String phone, String password) {
		// TODO Auto-generated method stub
		LawyerInfo lawyer = new LawyerInfo ();
		lawyer.setPhone(phone);
		lawyer.setPassword(password);
		LawyerInfo lawyerfind = lawyerInfoMapper.findByPhoneAndPass(lawyer);
		if(lawyerfind!=null){
			return lawyerfind;
		}
		return null;
	}

	
	
}
