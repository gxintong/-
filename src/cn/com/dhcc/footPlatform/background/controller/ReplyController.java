package cn.com.dhcc.footPlatform.background.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.com.dhcc.footPlatform.background.domain.ConsultInfo;
import cn.com.dhcc.footPlatform.background.domain.ReplyInfo;
import cn.com.dhcc.footPlatform.background.domain.UserInfo;
import cn.com.dhcc.footPlatform.background.service.IReplyService;

@Controller
@RequestMapping("reply")
public class ReplyController {
	@Autowired
	private IReplyService iReplyService;
	@RequestMapping("/replyNum")
	@ResponseBody
	public String  countReply(HttpServletRequest request){
		HttpSession session = request.getSession();
		UserInfo userInfo=(UserInfo)session.getAttribute("userLogin");
		String userId=userInfo.getUserId();
		int num =iReplyService.countReply(userId);
		return com.alibaba.fastjson.JSON.toJSONString(num);
		
		}
	@RequestMapping("/replyInfo")
	@ResponseBody
	public String selectReplyById(HttpServletRequest request,String consuleId){
		HttpSession session = request.getSession();
		UserInfo userInfo=(UserInfo)session.getAttribute("userLogin");
		String userId=userInfo.getUserId();
		List<ReplyInfo> list=iReplyService.selectReplyInfo(userId,consuleId);
		return com.alibaba.fastjson.JSON.toJSONString(list);
	}
	@RequestMapping("/changeMark")
	@ResponseBody
	public void changeMark(HttpServletRequest request){
		String reply_id=request.getParameter("reply_id");
		int  replyId=Integer.parseInt(reply_id);
		System.out.println(replyId);
		iReplyService.changeMark(replyId);
	}
}
