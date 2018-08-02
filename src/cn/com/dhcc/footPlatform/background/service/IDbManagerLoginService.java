package cn.com.dhcc.footPlatform.background.service;

import cn.com.dhcc.footPlatform.background.domain.DbInfo;

public interface IDbManagerLoginService {
	public DbInfo login(String url,String dbDriver,String username,String password);
}
