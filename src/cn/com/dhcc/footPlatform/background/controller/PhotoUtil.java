package cn.com.dhcc.footPlatform.background.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;

import cn.com.dhcc.footPlatform.background.domain.LawyerInfo;
import cn.com.dhcc.footPlatform.background.domain.ResponseResult;
import cn.com.dhcc.footPlatform.background.domain.UserInfo;
import cn.com.dhcc.footPlatform.background.service.IPhotoService;

@Controller
@RequestMapping("image")
public class PhotoUtil {
	@Autowired
	private IPhotoService iPhotoService; 
	@RequestMapping("/imageUpload")
	@ResponseBody
	public String imageUpload(MultipartFile file,HttpServletRequest request){
		System.out.println("comming!"); 
		 File targetFile=null;
		 String msg="";//返回存储路径
		 int code=1;
         String fileName=file.getOriginalFilename();//获取文件名加后缀
         System.out.println(fileName);
         if(fileName!=null&&fileName!=""){
            String returnUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() +"/images/";//存储路径
            String path = request.getSession().getServletContext().getRealPath("/images"); //文件存储位置
            String fileF = fileName.substring(fileName.lastIndexOf("."), fileName.length());//文件后缀
            fileName=new Date().getTime()+"_"+new Random().nextInt(1000)+fileF;//新的文件名
            System.out.println(returnUrl);
            System.out.println(path);
            System.out.println(fileName);
            String dateFormatTo = "yyyyMMdd";
           SimpleDateFormat dateFormat = new SimpleDateFormat(dateFormatTo);
           String fileAdd =  dateFormat.format(new Date());
           System.out.println(fileAdd);
           File file1 =new File(path+"/"+fileAdd);
         //如果文件夹不存在则创建    
           if(!file1 .exists()  && !file1 .isDirectory()){       
               file1 .mkdir();  
           }
           targetFile = new File(file1, fileName);
           try {
               file.transferTo(targetFile);//转存文件
               msg=returnUrl+fileAdd+"/"+fileName;
               code=0;
               System.out.println(msg);
           } catch (Exception e) {
               e.printStackTrace();
           }
        }
         HttpSession session = request.getSession();
         LawyerInfo lawyerInfo=(LawyerInfo) session.getAttribute("lawyerLogin");
 		   String user_id=lawyerInfo.getUserId();
           iPhotoService.upload(user_id, msg);
        	return JSON.toJSONString(ResponseResult.result(code, msg));
}

	
}