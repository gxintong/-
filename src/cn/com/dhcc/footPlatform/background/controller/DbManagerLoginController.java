package cn.com.dhcc.footPlatform.background.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.com.dhcc.footPlatform.background.domain.DbInfo;
import cn.com.dhcc.footPlatform.background.service.IDbManagerLoginService;

@Controller
@RequestMapping("dbManagerLoginController")
public class DbManagerLoginController {
	@Autowired
	private IDbManagerLoginService dbManagerLoginServiceImpl;
	@RequestMapping("/login")
	public String login(HttpServletRequest request){
		String url = request.getParameter("url")==null?"":request.getParameter("url");
		String dbDriver = request.getParameter("driver")==null?"":request.getParameter("driver");
		String username = request.getParameter("username")==null?"":request.getParameter("username");
		String password = request.getParameter("password")==null?"":request.getParameter("password");
		DbInfo dbInfo = dbManagerLoginServiceImpl.login(url, dbDriver, username, password);
		if("success".equals(dbInfo.getInfo())){
			request.getSession().setAttribute("dbInfo", dbInfo);
			return "dbManager";
		}else{
			request.setAttribute("dbInfo", dbInfo);
			return "dbManagerLogin";
		}
		
	}
}
