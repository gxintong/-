package cn.com.dhcc.footPlatform.background.controller;

import java.io.Console;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.com.dhcc.footPlatform.background.domain.ConsultInfo;
import cn.com.dhcc.footPlatform.background.domain.LawyerInfo;
import cn.com.dhcc.footPlatform.background.domain.ReplyInfo;
import cn.com.dhcc.footPlatform.background.domain.ResponseResult;
import cn.com.dhcc.footPlatform.background.domain.UserInfo;
import cn.com.dhcc.footPlatform.background.service.IConsultService;
import cn.com.dhcc.footPlatform.background.util.DateBuilder;

@Controller
@RequestMapping("consult")
public class ConsultController {
	@Autowired
	private IConsultService iConsultService;
	@RequestMapping("/add")
	public String addConsult(HttpServletRequest request){
		String type = request.getParameter("type")==null?"":request.getParameter("type");
		String lawyer_id = request.getParameter("lawyer_id")==null?"":request.getParameter("lawyer_id");
		String province = request.getParameter("province")==null?"":request.getParameter("province");
		String city = request.getParameter("city")==null?"":request.getParameter("city");
		String content = request.getParameter("content")==null?"":request.getParameter("content");
		String mark = request.getParameter("mark")==null?"":request.getParameter("mark");
		HttpSession session = request.getSession();
		UserInfo userInfo=(UserInfo) session.getAttribute("userLogin");
		String user_id=userInfo.getUserId();
		int num=iConsultService.addConsult(type,content,province,city,user_id,lawyer_id,mark);
		if(num>0){
		return "main";
		}
		return "login_error";
	}
	//公众咨询
	@RequestMapping("/consultInfo")
	@ResponseBody
	public String selectConsult(HttpServletRequest request,ConsultInfo consultInfo ){
		//String mark=request.getParameter("mark");
		List<ConsultInfo> list=iConsultService.selectConsultInfo(consultInfo);
		return com.alibaba.fastjson.JSON.toJSONString(list);
	}
	//律师回复咨询
	@RequestMapping("/reply")
	@ResponseBody
	public String consultReply(HttpServletRequest request,ReplyInfo reply){
		ReplyInfo reply1=new ReplyInfo();
		HttpSession session = request.getSession();
		LawyerInfo lawyerInfo=(LawyerInfo)session.getAttribute("lawyerLogin");
		reply1.setConsultId(reply.getConsultId());
		reply1.setContent(reply.getContent());
		reply1.setMark("0");//未读
		reply1.setReceiver(reply.getReceiver());
		reply1.setSend(lawyerInfo.getUserId());
		reply1.setStatus("0");//未采纳
		DateBuilder dateBuilder=new DateBuilder();
		String time=dateBuilder.getTimeToMM();
		reply1.setTime(time);
		System.out.println(reply.getReceiver());
		System.out.println(reply.getConsultId());
		System.out.println(lawyerInfo.getUserId());
		int num=iConsultService.consultReply(reply1);
		int code=0;
		if(num>0){
			code=0;
		}
		return JSON.toJSONString(ResponseResult.result(code));
	}
	//用户查找个人咨询
	@RequestMapping("/selectConsultById")
	@ResponseBody
	public String selectConsultByUserId(HttpServletRequest request,ConsultInfo consultInfo){
		HttpSession session = request.getSession();
		UserInfo userInfo=(UserInfo)session.getAttribute("userLogin");
		String userId=userInfo.getUserId();
		String mark=consultInfo.getMark();
		consultInfo.setUserId(userId);
		System.out.println(mark);
		/*System.out.println(consultInfo.getUserId());
		
		System.out.println(consultInfo.getConsuleId());*/
		List<ConsultInfo> list=iConsultService.selectConsultInfoById(consultInfo);
		return com.alibaba.fastjson.JSON.toJSONString(list);
	}
}
