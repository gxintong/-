package cn.com.dhcc.footPlatform.system.cache.cacheImplement;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import net.sf.json.JSONObject;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.com.dhcc.footPlatform.background.dao.TranslateMapper;
import cn.com.dhcc.footPlatform.background.domain.TranslateTable;
import cn.com.dhcc.footPlatform.system.cache.CacheManage;
/**
 * 
 * @author xu
 *
 */
public class TranslateCache extends CacheManage {
    
	private List<TranslateTable> columns ;
	 private static String driver = "";  
	    private static String url = "";  
	    private static String username ="";  
	    private static String password = "";  
	static{
		 Properties p = new Properties();  
	        try {  
	            InputStream in = TranslateCache.class.getResourceAsStream("/jdbc.properties");//这里有人用new FileInputStream(fileName),不过这种方式找不到配置文件。有人说是在classes下，我调过了，不行。  
	           System.out.println(in);
	            p.load(in);  
	            in.close();  
	            
	            if(p.containsKey("jdbc.driverClassName")){  
	              driver = p.getProperty("jdbc.driverClassName");  

	            }  
	            if(p.containsKey("jdbc.url")){  
	               url = p.getProperty("jdbc.url");  
	            }  
	            if(p.containsKey("jdbc.username")){  
	               username = p.getProperty("jdbc.username");  
	            }  
	            if(p.containsKey("jdbc.password")){  
	               password = p.getProperty("jdbc.password");  
	            }  
	            Class.forName(driver); 
	        } catch (Exception ex) {  
	        ex.printStackTrace();
	        }  
	     
	     
	      
	}
    
	
	
	@Override
	protected String put() throws SQLException, Exception {
		// TODO Auto-generated method stub
		  ApplicationContext a = new ClassPathXmlApplicationContext("classpath:beans.xml");
	    
	       TranslateMapper t = (TranslateMapper)a.getBean("translateMapper");
			
		this.columns = t.selectAll();
		return "";
	}

	@Override
	protected String refresh() throws SQLException, Exception {
		// TODO Auto-generated method stub
		put();
		return "";
	}
	private void translateMap(Map par){
		List<TranslateTable> all = columns;
		System.out.println(all);
		for(TranslateTable m : all) {
			if(((Map) par).get("TAB_NAME").equals(m.getTab_name().trim())&&((Map) par).get("COL_NAME").equals(m.getCol_name().trim())&&((Map) par).get("ITEM_NO").equals(m.getItem_no().trim())||((Map) par).get("TAB_NAME").equals(m.getTab_name().trim())&&((Map) par).get("COL_NAME").equals(m.getCol_name().trim())&&"##".equals(m.getItem_no().trim())){
				
				if(m.getItem_no().equals("##")){
					Connection con = null;
					PreparedStatement ps = null;
					ResultSet rs = null;
				    try {
						con =DriverManager.getConnection(url, username, password);
						ps =con.prepareStatement("Select * from  "+m.getItem_name()+"  where "+m.getUp_col_name()+"= '"+((Map) par).get("ITEM_NO")+"'");
//						ps.setString(1, m.get("ITEM_NAME"));
//						ps.setString(2,  m.get("UP_COL_NAME"));
//						ps.setString(3, (String)((Map) o).get("ITEM_NO"));
					
						rs=ps.executeQuery();
						while(rs.next()){
							
						((Map) par).put("ITEM_NO", rs.getString(m.getRet_col())) ;
					
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				else{
					((Map) par).put("ITEM_NO", m.getItem_name());
				}
			}
		}
	}
public Object revert(Object o){
		
		if(o instanceof Map){
			translateMap((Map)o);
		}
		else if(o instanceof List){
			for(Object m : (List)o){
				translateMap((Map)m);
			}
		}else if(o instanceof String){
			JSONObject j=	JSONObject.fromObject(o);
			
			Map<String,String> tmp = new HashMap<String, String>();
			tmp .put("TAB_NAME", j.get("TAB_NAME").toString());
			tmp .put("COL_NAME", j.get("COL_NAME").toString());
			tmp .put("ITEM_NO", j.get("ITEM_NO").toString());
			translateMap(tmp);
			StringBuilder sb = new StringBuilder();
			sb.append("{\"TAB_NAME\":").append("\"").append(tmp.get("TAB_NAME")).append("\" ,").append("\"COL_NAME\":\"").append(tmp.get("COL_NAME")).append("\" ,").append("\"ITEM_NO\":\"").append(tmp.get("ITEM_NO")).append("\"}");
			return sb.toString();
		}
		
	
		
		return o;
	}
}
