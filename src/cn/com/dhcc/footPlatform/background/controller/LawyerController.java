package cn.com.dhcc.footPlatform.background.controller;


import java.io.PrintWriter;
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.ws.rs.core.Response;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;


import cn.com.dhcc.footPlatform.background.domain.LawyerInfo;
import cn.com.dhcc.footPlatform.background.domain.ResponseResult;
import cn.com.dhcc.footPlatform.background.service.ILawyserSearchService;

@Controller
@RequestMapping("lawyer")
public class LawyerController {
	@Autowired
	private ILawyserSearchService iLawyserSearchService;
	@RequestMapping("/lawyerInfo")
	@ResponseBody
	//找律师
	public String  lawyerSearch(HttpServletRequest request,LawyerInfo lawyerInfo){
		List<LawyerInfo> list=iLawyserSearchService.LawyerSearch(lawyerInfo);
		System.out.println(com.alibaba.fastjson.JSON.toJSONString(list));
		return com.alibaba.fastjson.JSON.toJSONString(list);
	}
	@RequestMapping("/lawyer")
	@ResponseBody
	//律师查找律师个人信息
	public void  Lawyer(HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("coming");
		HttpSession session = request.getSession(); 
		LawyerInfo lawyer=(LawyerInfo) session.getAttribute("lawyerLogin");
		String user_id=lawyer.getUserId();
		System.out.println(user_id);
		LawyerInfo lawyerInfo=iLawyserSearchService.LawyerInfo(user_id);
		this.write(response, com.alibaba.fastjson.JSON.toJSONString(lawyerInfo));
		//return com.alibaba.fastjson.JSON.toJSONString(lawyerInfo);//这样写也可以返回值为String
	}
	@RequestMapping("/lawyerdetail")
	@ResponseBody
	//用户查看律师信息
	public String LawyerDetail(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String user_id=request.getParameter("lawyerId");
		LawyerInfo lawyerInfo=iLawyserSearchService.LawyerInfo(user_id);
		//this.write(response, com.alibaba.fastjson.JSON.toJSONString(lawyerInfo));
		return com.alibaba.fastjson.JSON.toJSONString(lawyerInfo);//这样写也可以返回值为String
	}
	@RequestMapping("/lawyerEdit")
	@ResponseBody
	//律师修改个人信息
	public String  lawyerEdit(HttpServletRequest request,HttpServletResponse response, LawyerInfo lawyerInfo) throws Exception{
		System.out.println("律师修改个人信息");
		LawyerInfo lawyerInfo2=new LawyerInfo();
		lawyerInfo2.setUserId(lawyerInfo.getUserId());
		lawyerInfo2.setFirm(lawyerInfo.getFirm()==null?"":lawyerInfo.getFirm());
		lawyerInfo2.setCity(lawyerInfo.getCity()==null?"":lawyerInfo.getCity());
		lawyerInfo2.setPassword(lawyerInfo.getPassword()==null?"":lawyerInfo.getPassword());
		lawyerInfo2.setMajor(lawyerInfo.getMajor()==null?"":lawyerInfo.getMajor());
		lawyerInfo2.setName(lawyerInfo.getName());
		lawyerInfo2.setFirmaddress(lawyerInfo.getFirmaddress()==null?"":lawyerInfo.getFirmaddress());
		lawyerInfo2.setProvince(lawyerInfo.getProvince()==null?"":lawyerInfo.getProvince());
		lawyerInfo2.setPersonalDescription(lawyerInfo.getPersonalDescription()==null?"":lawyerInfo.getPersonalDescription());
		int num=iLawyserSearchService.LawyerEdit(lawyerInfo2);
		int code=1;
		if(num>0){
			code=0;
		}
		return JSON.toJSONString(ResponseResult.result(code));
		
	}
	
	
	
	
	
	
	public void write(HttpServletResponse response, String msg) throws Exception {
        response.setContentType("text/html");
        response.setCharacterEncoding("GBK");
        response.getWriter().write(msg);
        //response.flushBuffer();
    }
}
