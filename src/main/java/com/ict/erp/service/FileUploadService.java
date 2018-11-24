package com.ict.erp.service;

import java.io.IOException;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.multipart.MultipartFile;

import com.ict.erp.vo.UserInfo;

public interface FileUploadService {

	void putStory(String story) throws IOException;
	public void updateUserProfile(MultipartFile upFile, UserInfo ui) throws IOException;
	public void makeThumbnail(String fileName, String thFileName, MultipartFile upFile);
	public String parseContent(String pjPath);
}
