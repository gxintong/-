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

import cn.com.dhcc.footPlatform.background.domain.Lawexample;
import cn.com.dhcc.footPlatform.background.domain.Lawknowledge;
import cn.com.dhcc.footPlatform.background.domain.LawyerInfo;
import cn.com.dhcc.footPlatform.background.domain.ResponseResult;
import cn.com.dhcc.footPlatform.background.service.ILawknowledgeService;
import cn.com.dhcc.footPlatform.background.util.DateBuilder;

@Controller
@RequestMapping("lawknowledge")
public class LawknowldgeController {
	@Autowired
	private ILawknowledgeService iLawknowledgeService;
	//添加法律常识
	@RequestMapping("/addLawknowledge")
	@ResponseBody
	public String addLawknowledge(HttpServletRequest request){
		Lawknowledge lawknowledge=new Lawknowledge();
		HttpSession session = request.getSession();
		LawyerInfo lawyerInfo=(LawyerInfo)session.getAttribute("lawyerLogin");
		lawknowledge.setContent(request.getParameter("content"));
		lawknowledge.setTitle(request.getParameter("title"));
		DateBuilder date=new DateBuilder();
		String time=date.getTimeToDay();
		lawknowledge.setTime(time);
		lawknowledge.setType(request.getParameter("type"));
		lawknowledge.setLawyerId(lawyerInfo.getUserId());
		int num=iLawknowledgeService.addLawknowledge(lawknowledge);
		int code=1;
		if(num>0){
			code=0;
		}
		return JSON.toJSONString(ResponseResult.result(code));
	}
	@RequestMapping("/selectLawknowledge")
	@ResponseBody
   public String selectLawknowledge(HttpServletRequest request,Lawknowledge lawknowledge){
		
	   List<Lawknowledge> list=iLawknowledgeService.selectknowle(lawknowledge);
		System.out.println(com.alibaba.fastjson.JSON.toJSONString(list));
		return com.alibaba.fastjson.JSON.toJSONString(list);
	 
   }	
	@RequestMapping("/delLawknowledge")
	@ResponseBody
	public void delLawknowledge(HttpServletResponse response,String articalId) throws Exception{
		int num=iLawknowledgeService.delLawknowledge(articalId);
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
