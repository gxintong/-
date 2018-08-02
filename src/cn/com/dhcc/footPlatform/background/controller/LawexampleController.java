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
import cn.com.dhcc.footPlatform.background.domain.LawexampleWithBLOBs;
import cn.com.dhcc.footPlatform.background.domain.Lawknowledge;
import cn.com.dhcc.footPlatform.background.domain.LawyerInfo;
import cn.com.dhcc.footPlatform.background.domain.ResponseResult;
import cn.com.dhcc.footPlatform.background.domain.UserInfo;
import cn.com.dhcc.footPlatform.background.service.ILawExampleService;
import cn.com.dhcc.footPlatform.background.util.DateBuilder;

@Controller
@RequestMapping("lawexample")
public class LawexampleController {
	@Autowired
	private ILawExampleService iLawExampleService;
	@RequestMapping("/addLawexample")
	@ResponseBody
	public String addLawexample(HttpServletRequest request){
		LawexampleWithBLOBs lawexample=new LawexampleWithBLOBs();
		HttpSession session = request.getSession();
		LawyerInfo lawyerInfo=(LawyerInfo)session.getAttribute("lawyerLogin");
		lawexample.setCaseDes(request.getParameter("case_des"));//案例详情
		lawexample.setProcess(request.getParameter("process"));//承办过程
		lawexample.setResult(request.getParameter("result"));//结果
		lawexample.setEtitile(request.getParameter("title"));//标题
		lawexample.setLawyerId(lawyerInfo.getUserId());//律师
		DateBuilder date=new DateBuilder();
		String time=date.getTimeToDay();
		lawexample.setTime(time);
		lawexample.setType(request.getParameter("type"));
		int num =iLawExampleService.addLawexample(lawexample);
		int code=1;
		if(num>0){
			code=0;
		}
		return JSON.toJSONString(ResponseResult.result(code));
		
	}
	
	@RequestMapping("/selectLawexample")
	@ResponseBody
   public String selectExample(HttpServletRequest request,Lawexample lawexample){
		//lawyerId.replaceAll("'", "");
	   List<Lawexample> list=iLawExampleService.selectExample(lawexample);
		System.out.println(com.alibaba.fastjson.JSON.toJSONString(list));
		return com.alibaba.fastjson.JSON.toJSONString(list);
	 
   }
	@RequestMapping("/caseDetail")
	@ResponseBody
   public String caseDetail(HttpServletRequest request,String eid){
		LawexampleWithBLOBs caseinfo=iLawExampleService.caseInfo(eid);
		System.out.println(com.alibaba.fastjson.JSON.toJSONString(caseinfo));
		return com.alibaba.fastjson.JSON.toJSONString(caseinfo);
	 
   }
	@RequestMapping("/delLawexample")
	@ResponseBody
	public void delLawexample(HttpServletResponse response,String eid) throws Exception{
		int num=iLawExampleService.delLawexample(eid);
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
