package cn.com.dhcc.footPlatform.system.listener;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

import cn.com.dhcc.footPlatform.background.domain.UserInfo;
/**
 * 
 * @author lihang
 * @date  2016年10月19日 下午2:51:39
 * @description 登录监听类 单地点登录 
 */
public class LoginListenner implements HttpSessionAttributeListener {
    
	/** 
     * 用于存放账号和session对应关系的map 
     */  
    private Map<String, HttpSession> map = new HashMap<String, HttpSession>();  
	/**
	 * 向session添加数据时触发的事件
	 */
    public void attributeAdded(HttpSessionBindingEvent event) {
    	 String name = event.getName(); 
         if (name.equals("userLogin")) {  
        	 UserInfo user = (UserInfo)event.getValue();  
             if (map.get(user.getPhone())!=null) {  
                 HttpSession session = map.get(user.getPhone());  
                 session.removeAttribute(name);  
                 session.invalidate();  
             }  
             map.put(user.getPhone(),event.getSession());  
         }  
	}
    /**
     * 修改和删除session时触发的事件
     */
 	public void attributeRemoved(HttpSessionBindingEvent event) {
 		 String name = event.getName();  
         if (name.equals("userLogin")) {  
             UserInfo user = (UserInfo) event.getValue();  
             map.remove(user.getPhone());  
         }  
	}
    /**
     * 在Session属性被重新设置时
     */
	public void attributeReplaced(HttpSessionBindingEvent arg0) {

	}
	public Map<String, HttpSession> getMap() {
		return map;
	}
	public void setMap(Map<String, HttpSession> map) {
		this.map = map;
	}
    
	
}
