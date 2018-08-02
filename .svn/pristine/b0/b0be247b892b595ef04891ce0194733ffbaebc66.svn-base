package cn.com.dhcc.footPlatform.system.cache;

import java.sql.SQLException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import cn.com.dhcc.footPlatform.system.io.PackageManage;
import static cn.com.dhcc.footPlatform.system.filter.StringFilter.isNull;

/**
 * <b>缓存池 20161017</b><br>
 * <br>
 * 新建缓存需继承该类<br>
 * 
 * @author @HL
 *
 */
public abstract class CacheManage {
	protected static Map<String, CacheManage> map;

	static {
		map = new ConcurrentHashMap<String, CacheManage>();
	}

	protected abstract String put() throws SQLException, Exception;

	protected abstract String refresh() throws SQLException, Exception;

	public static synchronized String putAll() {
		String message = "";
		Object o = null;
		for (Class<?> clazz : PackageManage
				.getClasses("cn.com.dhcc.footPlatform.system.cache.cacheImplement")) {
			try {
				o = clazz.newInstance();
				if (o != null && o instanceof CacheManage) {
					String s = ((CacheManage) o).put();
					if (isNull(s))
						map.put(clazz.getSimpleName(), (CacheManage) o);
					else
						message += ((CacheManage) o).put();
				}
				o = null;
			} catch (InstantiationException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return message;
	}

	public static synchronized String refreshAll() {
		String message = "";
		Object o = null;
		for (Class<?> clazz : PackageManage
				.getClasses("cn.com.dhcc.footPlatform.system.cache.cacheImplement")) {
			try {
				if (map.containsKey(clazz.getSimpleName()))
					message += map.get(clazz.getSimpleName()).refresh();
				else {
					o = clazz.newInstance();
					if (o != null && o instanceof CacheManage) {
						String s = ((CacheManage) o).put();
						if (isNull(s))
							map.put(clazz.getSimpleName(), (CacheManage) o);
						else
							message += ((CacheManage) o).put();
					}
					o = null;
				}
			} catch (InstantiationException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return message;
	}

	public static synchronized void close() {
		map.clear();
	}

	public static CacheManage getCache(String cacheName) {
		return map.get(cacheName);
	}

}
