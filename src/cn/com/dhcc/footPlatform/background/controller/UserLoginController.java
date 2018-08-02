package cn.com.dhcc.footPlatform.background.controller;

import java.util.*;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import cn.com.dhcc.footPlatform.background.domain.LawyerInfo;
import cn.com.dhcc.footPlatform.background.domain.UserInfo;
import cn.com.dhcc.footPlatform.background.service.IUserService;
import cn.com.dhcc.footPlatform.system.log.Log;


@Controller
@RequestMapping("user")
public class UserLoginController {
	@Autowired
	private IUserService iUserService;

	/**
	 * 用户登录
	 * @author guanxintong
	 * @param username
	 * @param password
	 * @param request
	 * @return
	 */
	@RequestMapping("/login")
	public String login(String phone,String password,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		Log log = Log.getLog(phone);
		UserInfo user = iUserService.login(phone, password);
		if (user!=null) {
			session.setAttribute("userLogin", user);
			log.info("登陆成功！");
				return "login_suss";
		}
		// 添加错误信息
		session.setAttribute("error", "登陆信息错误!");
		log.info("登陆失败！");
		return "login_error";

	}
	@RequestMapping("/lawyerlogin")
	public String lawyerlogin(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String phone = request.getParameter("phone")==null?"":request.getParameter("phone");
		String password = request.getParameter("password")==null?"":request.getParameter("password");
		Log log = Log.getLog(phone);
		LawyerInfo lawyer = iUserService.lawyerlogin(phone, password);
		
		if (lawyer!=null) {
			session.setAttribute("lawyerLogin", lawyer);
			log.info("登陆成功！");
			return "lawloginsuss";
		}
		// 添加错误信息
		session.setAttribute("error", "登陆信息错误!");
		log.info("登陆失败！");
		return "login_error";

	}
    
	/**
	 * 测试拦截器
	 * @return
	 */
	@RequestMapping("/test")
	public String test() {

		return "test";
	}
	
	/**
	 * 用户注销 退出登录
	 * @author lihang
	 * @param request
	 * @return
	 */
	@RequestMapping("/logout")
	public String  logout(HttpServletRequest request){
		HttpSession session = request.getSession();
		session.removeAttribute("userLogin");
		return "main";
	}
	@RequestMapping("/lawyerlogout")
	public String  lawyerlogout(HttpServletRequest request){
		HttpSession session = request.getSession();
		session.removeAttribute("lawyerLogin");
		return "main";
	}
	/**
	 * 跳转到更改密码界面
	 * @author lihang
	 * @return
	 */
	@RequestMapping("/goToChange")
	public String goToChange(){
		
		return "changePass";
	}
	
	/**
     * 用户修改密码
     * @author guanxintong
     * @param request
     * @param password
     * @return
     */
	@RequestMapping("/changePass")
	public String  changePass(HttpServletRequest request,String password,String newpass){
		
		HttpSession session = request.getSession();
		UserInfo user = (UserInfo)session.getAttribute("userLogin");
		if(user.getPassword().equals(password)){//原密码正确
			if(!user.getPassword().equals(newpass))//新密码和原密码不同
		    user.setPassword(newpass);//将密码修改为新密码
		    iUserService.changePass(user);
		}
		return "success";
	}
	
}
