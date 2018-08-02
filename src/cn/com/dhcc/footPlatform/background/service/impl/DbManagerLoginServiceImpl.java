package cn.com.dhcc.footPlatform.background.service.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhcc.footPlatform.background.domain.DbInfo;
import cn.com.dhcc.footPlatform.background.service.IDbManagerLoginService;
@Service
public class DbManagerLoginServiceImpl implements IDbManagerLoginService {
	@Override
	public DbInfo login(String url, String dbDriver, String username,
			String password) {
		DbInfo dbInfo = new DbInfo();
		Connection conn = null;
		try {
			Class.forName(dbDriver);
			conn = DriverManager.getConnection(url, username, password);
			dbInfo.setInfo("success");
			dbInfo.setDbDriver(dbDriver);
			dbInfo.setPassword(password);
			dbInfo.setUrl(url);
			dbInfo.setUsername(username);
		} catch (ClassNotFoundException e) {
			dbInfo.setInfo("数据库驱动加载失败");
			e.printStackTrace();
		} catch (SQLException e) {
			dbInfo.setInfo("数据库连接信息有误");
			e.printStackTrace();
		}finally{
			try {
				if(conn!=null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return dbInfo;
	}

}
