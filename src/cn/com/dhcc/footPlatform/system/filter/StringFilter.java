package cn.com.dhcc.footPlatform.system.filter;
/**
 * <b>提供字符串操作 20161017</b><br>
 * 
 * @author @HL
 *
 */
public class StringFilter {
	public static boolean isNull(String string) {
		return string == null || string.trim().isEmpty();
	}
	
}
