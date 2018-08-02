package cn.com.dhcc.footPlatform.background.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.com.dhcc.footPlatform.background.service.IUserService;
import cn.com.dhcc.footPlatform.background.service.impl.UserServiceImpl;
import cn.com.dhcc.footPlatform.system.log.Log;


@Controller
@RequestMapping("user")
public class UserRegistController {
	@Autowired
	private IUserService iUserService;
	@RequestMapping("/regist")
	public String regist(HttpServletRequest request){
		String phone = request.getParameter("phone")==null?"":request.getParameter("phone");
		String password = request.getParameter("password")==null?"":request.getParameter("password");
		int num= iUserService.regist(phone,password);
		//log.info("注册成功！");
		if(num>0){
			return "dbManagerRegist";
			
		}
		return "login_error";
			}
	
	@RequestMapping("/lawregist")
	public String lawregist(HttpServletRequest request){
		
		String phone = request.getParameter("phone")==null?"":request.getParameter("phone");
		String user_name = request.getParameter("user_name")==null?"":request.getParameter("user_name");
		String city = request.getParameter("city")==null?"":request.getParameter("city");
		String password = request.getParameter("password")==null?"":request.getParameter("password");
		String firm = request.getParameter("firm")==null?"":request.getParameter("firm");
		String province = request.getParameter("province")==null?"":request.getParameter("province");
		String license = request.getParameter("license")==null?"":request.getParameter("license");
		int num= iUserService.lawRegist(phone,user_name,city,password,firm,province,license);
		//log.info("注册成功！");
		if(num>0){
			return "dbManagerRegist";
			
		}
		return "login_error";
			}
}
