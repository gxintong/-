package cn.com.dhcc.footPlatform.system.listener;


import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import cn.com.dhcc.footPlatform.system.cache.CacheManage;


public class TomcatListener implements ServletContextListener {

	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub

	}

	public void contextInitialized(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		   System.out.println("tomcate启动了..............");  
		   CacheManage.putAll();
/*		   MenuController menu=new MenuController();
		   menu.menu();
*/		   
		   
	}

}
