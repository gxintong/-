package cn.com.dhcc.footPlatform.background.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhcc.footPlatform.background.dao.LawyerInfoMapper;
import cn.com.dhcc.footPlatform.background.domain.ImageInfo;
import cn.com.dhcc.footPlatform.background.service.IPhotoService;
@Service
public class IPhotoServiceImpl implements IPhotoService {
	@Autowired 
	private LawyerInfoMapper lawyerInfoMapper;
	@Override
	public int upload(String userId, String path) {
		ImageInfo image=new ImageInfo();
		image.setImagePath(path);
		image.setUserId(userId);
		int num=lawyerInfoMapper.upload(image);
		// 上传头像
		return num;
	}

}
