package cn.com.dhcc.footPlatform.background.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.com.dhcc.footPlatform.background.domain.AnnouncementInfo;
import cn.com.dhcc.footPlatform.background.domain.LawexampleWithBLOBs;
import cn.com.dhcc.footPlatform.background.domain.LawyerInfo;
import cn.com.dhcc.footPlatform.background.domain.ResponseResult;
import cn.com.dhcc.footPlatform.background.service.NoticeService;
import cn.com.dhcc.footPlatform.background.util.DateBuilder;

@Controller
@RequestMapping("notice")
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	@RequestMapping("/selectNotice")
	@ResponseBody
   public String selectNotice(HttpServletRequest request){
	    List<AnnouncementInfo> list=noticeService.selectNotice();
		System.out.println(com.alibaba.fastjson.JSON.toJSONString(list));
		return com.alibaba.fastjson.JSON.toJSONString(list);
   }
	@RequestMapping("/addNotice")
	@ResponseBody
	public String addNotice(HttpServletRequest request,AnnouncementInfo announcementInfo){
		AnnouncementInfo announcementInfo2=new AnnouncementInfo();
		announcementInfo2.setAtitle(announcementInfo.getAtitle());
		announcementInfo2.setAcontent(announcementInfo.getAcontent());
		DateBuilder date=new DateBuilder();
		String time=date.getTimeToDay();
		announcementInfo2.setTime(time);
		int num =noticeService.addNotice(announcementInfo2);
		int code=1;
		if(num>0){
			code=0;
		}
		return JSON.toJSONString(ResponseResult.result(code));
		
	}
	@RequestMapping("/del")
	@ResponseBody
	public String delNotice(HttpServletResponse response,String aid) throws Exception{
		int num=noticeService.delNotice(aid);
		int code=1;
		if(num>0){
			code=0;
		}
		return JSON.toJSONString(ResponseResult.result(code));
	}
	@RequestMapping("/edit")
	@ResponseBody
	public String editNotice(HttpServletResponse response,AnnouncementInfo announcementInfo) throws Exception{
		int num=noticeService.editNotice(announcementInfo);
		int code=1;
		if(num>0){
			code=0;
		}
		return JSON.toJSONString(ResponseResult.result(code));
	}
}
