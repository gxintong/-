package cn.com.dhcc.footPlatform.system.cache.cacheImplement;

import java.sql.SQLException;


import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;

import cn.com.dhcc.footPlatform.background.dao.MenuMapper;
import cn.com.dhcc.footPlatform.background.domain.Menu;
import cn.com.dhcc.footPlatform.system.cache.CacheManage;

@Component
public class MenuManage extends CacheManage{
	@SuppressWarnings("rawtypes")
	private static List list;

	

	@Override
	public String put() throws SQLException, Exception {
		ApplicationContext a = new ClassPathXmlApplicationContext("classpath:beans.xml");
		MenuMapper u = (MenuMapper) a.getBean("menuMapper");
		list =   u.findAll();
		return null;
	}

	@Override
	protected String refresh() throws SQLException, Exception {
		// TODO Auto-generated method stub
		return null;
	}

	

}
