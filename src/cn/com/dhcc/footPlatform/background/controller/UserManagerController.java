package cn.com.dhcc.footPlatform.background.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.com.dhcc.footPlatform.background.domain.LawyerInfo;
import cn.com.dhcc.footPlatform.background.domain.ResponseResult;
import cn.com.dhcc.footPlatform.background.domain.UserInfo;
import cn.com.dhcc.footPlatform.background.service.IUserManagerService;

@Controller
@RequestMapping("userManager")
public class UserManagerController {
	@Autowired
	private IUserManagerService iUserManagerService;
	@RequestMapping("/del")
	public void delLawyer(HttpServletResponse response,String lawyer_id) throws Exception{
		int num=iUserManagerService.delLawyer(lawyer_id);
		int code=1;
		if(num>0){
			code=0;
		}
		this.write(response, com.alibaba.fastjson.JSON.toJSONString(code));
	}
	//审核律师
	@RequestMapping("/updateMark")
	public void updateMark(HttpServletResponse response,String lawyer_id,String mark) throws Exception{
		int num=iUserManagerService.updateMark(lawyer_id,mark);
		int code=1;
		if(num>0){
			code=0;
		}
		this.write(response, com.alibaba.fastjson.JSON.toJSONString(code));
	}
	@RequestMapping("/userInfo")
	@ResponseBody
	public String selectUser(HttpServletResponse response){
		List<UserInfo> list=iUserManagerService.selectUser();
		System.out.println(com.alibaba.fastjson.JSON.toJSONString(list));
		return com.alibaba.fastjson.JSON.toJSONString(list);
		
	}
	@RequestMapping("/delUser")
	@ResponseBody
	public void delUser(HttpServletResponse response,String user_id) throws Exception{
		int num=iUserManagerService.delUser(user_id);
		int code=1;
		if(num>0){
			code=0;
		}
		this.write(response, com.alibaba.fastjson.JSON.toJSONString(code));
	}
	public void write(HttpServletResponse response, String msg) throws Exception {
        response.setContentType("text/html");
        response.setCharacterEncoding("GBK");
        response.getWriter().write(msg);
        //response.flushBuffer();
    }
}
