package cn.com.dhcc.footPlatform.background.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhcc.footPlatform.background.dao.MenuMapper;
import cn.com.dhcc.footPlatform.background.domain.Menu;
import cn.com.dhcc.footPlatform.background.service.IMenuService;
import cn.com.dhcc.footPlatform.system.cache.cacheImplement.MenuManage;
@Service
public class MenuServiceImpl implements IMenuService {
   @Autowired
	private MenuMapper menuMapper;
	
	public List<Menu> findAll() {
		
		List<Menu> list = menuMapper.findAll();
		if(list!=null&& list.size()>0){
			return list;
		}
		
		return null;
	}

	public static void main(String[] args) {
		IMenuService ms = new MenuServiceImpl();
		ms.findAll();
	}
}
