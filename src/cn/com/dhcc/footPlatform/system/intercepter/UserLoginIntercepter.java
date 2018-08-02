package cn.com.dhcc.footPlatform.system.intercepter;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import cn.com.dhcc.footPlatform.background.domain.UserInfo;;
/**
 * 
 * @author lihang
 * @date  2016年10月18日 上午11:38:02
 * @description 用户登录拦截器 除了登陆controller 其他都拦截 
 */
public class UserLoginIntercepter implements HandlerInterceptor {

	
	//用于单点登录 key是username value是sessionid
	private static Map<String,String> map = new HashMap<String, String>();
	//执行Handler方法之前执行  
	//如果请求的url不是登陆就拦截，需要此方法拦截不再向下执行返回登陆页面  
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2) throws Exception {
		
		//1.获得请求url
		/*String url = arg0.getRequestURI();
		//2.判断url是否是登陆url
		if(url.indexOf("login")>=0){
			return true;
		}
		User u = (User)arg0.getSession().getAttribute("userLogin");
        //3.如果登陆过了放行
        if(u!=null){
        	return true;
        }
        //4.没有登陆 返回登陆页面
        arg0.getRequestDispatcher("/WEB-INF/pages/jsp/login_error.jsp").forward(arg0, arg1);*/
		return true;
	}

	
	
	//进入Handler方法之后，返回modelAndView之前执行  
    //应用场景从modelAndView出发：将公用的模型数据(比如菜单导航)在这里  
    //传到视图，也可以在这里统一指定视图  
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {

	}


	//执行Handler完成执行此方法  
    //应用场景：统一异常处理，统一日志处理  
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
					throws Exception {
      
		
	}

	
	
	
	
}
