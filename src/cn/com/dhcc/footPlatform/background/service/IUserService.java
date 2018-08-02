package cn.com.dhcc.footPlatform.background.service;

import cn.com.dhcc.footPlatform.background.domain.LawyerInfo;
import cn.com.dhcc.footPlatform.background.domain.UserInfo;;

public interface IUserService {
  
	  /**
	   * 用户登录
	   * @author guanxintong
	   * @param username
	   * @param password
	   * @return
	   */
	  public UserInfo login(String phone,String password);
	  /**
	   * 律师登录
	   * @author guanxintong
	   * @param username
	   * @param password
	   * @return
	   */
	  public LawyerInfo lawyerlogin(String phone,String password);
	  
	  public int  changePass(UserInfo user);
	  /**
	   * 普通用户注册
	   * @author guanxintong
	   * @param user
	   * @return
	   */
	  public int  regist(String phone,String password);
	  /**
	   * 律师注册
	   * @author guanxintong
	   * @param user
	   * @return
	   */
	  public int lawRegist(String phone, String user_name, String city,
			String password, String firm, String province, String license);
	
}
