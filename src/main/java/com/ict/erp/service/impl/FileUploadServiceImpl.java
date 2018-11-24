package com.ict.erp.service.impl;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Scanner;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ict.erp.service.FileUploadService;
import com.ict.erp.vo.UserInfo;

@Service
public class FileUploadServiceImpl implements FileUploadService {
	private static final String PATH = "C:\\jsp_study\\workspace\\git\\ict1-erp1\\src\\main\\webapp\\resources";
	private static final String LINE_SEPARATOR = System.getProperty("line.separator");
	
	public void putStory(String story) throws IOException {
		final String UUIDUserToken = UUID.randomUUID().toString();
		File file = new File("C:/jsp_study/workspace/git/ict1-erp1/src/main/webapp/resources/text/" + UUIDUserToken + ".html");
		FileWriter fw = new FileWriter(file, true);
		fw.write("<%@ page language=\"java\" contentType=\"text/html; charset=UTF-8\" pageEncoding=\"UTF-8\"%>");
		fw.write(LINE_SEPARATOR);
		fw.write(story);
		fw.flush();
		fw.close();
	}
	
	public void updateUserProfile(MultipartFile upFile, UserInfo ui) throws IOException {
		UUID uuid = UUID.randomUUID();
		File oldFile = new File(PATH + ui.getUi_img());
		String thumbFileName = ui.getUi_img();
		
		String str = "s_";
		int point = thumbFileName.lastIndexOf("/") + 1;
		System.out.println(point);
		String front = thumbFileName.substring(0, point);
		String rear = thumbFileName.substring(point, thumbFileName.length());
		String thumbfName = front + str + rear;
		if (point != -1) {

			File thumbOldFile = new File(PATH + thumbfName);
			System.out.println("d1   " + PATH + thumbfName);

			if (thumbOldFile.exists() == true) {
				thumbOldFile.delete();
			}
		}
		if (oldFile.exists() == true) {
			System.out.println("d2   " + PATH + ui.getUi_img());
			oldFile.delete();
		}

		new File(PATH).mkdir();
		String fName = front + uuid + upFile.getOriginalFilename();
		String thFName = front + "s_" + uuid + upFile.getOriginalFilename();
		ui.setUi_img(fName);
		upFile.transferTo(new File(PATH + fName));
		makeThumbnail(fName, thFName, upFile);
	}
	
	public void makeThumbnail(String fileName, String thFileName, MultipartFile upFile) {
		try {
			File originalFileNm = new File(PATH + fileName);
			File thumbnailFileNm = new File(PATH + thFileName);
			int width = 50;
			int height = 50;
			BufferedImage originalImg = ImageIO.read(originalFileNm);
			BufferedImage thumbnailImg = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR); // 썸네일 그리기
			Graphics2D g = thumbnailImg.createGraphics();
			g.drawImage(originalImg, 0, 0, width, height, null); 
			ImageIO.write(thumbnailImg, "jpg", thumbnailFileNm);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void ckEditorUpload(MultipartFile upload, HttpServletRequest request, HttpServletResponse response) {
		OutputStream out = null;
        PrintWriter printWriter = null;
       
        try{
            String fileName = upload.getOriginalFilename();
            byte[] bytes = upload.getBytes();
            String uploadPath = "C:\\jsp_study\\workspace\\git\\ict1-erp1\\src\\main\\webapp\\resources\\img\\" + fileName;//저장경로
            
            out = new FileOutputStream(new File(uploadPath));
            out.write(bytes);
            String callback = request.getParameter("CKEditorFuncNum");
 
            printWriter = response.getWriter();
            String fileUrl = "/img/" + fileName;//url경로
            
            printWriter.println("<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction("
                    + callback
                    + ",'"
                    + fileUrl
                    + "','이미지를 업로드 하였습니다.'"
                    + ")</script>");
            printWriter.flush();
            File oldFile = new File(fileUrl);
           
            if (oldFile.exists() == true) {
            	oldFile.delete();
			}
        }catch(IOException e){
            e.printStackTrace();
        } finally {
            try {
                if (out != null) {
                    out.close();
                }
                if (printWriter != null) {
                    printWriter.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
 
        return;
	}
	
	public String parseContent(String pjPath) {
		String parseStr = "";
		try {
			File file = new File(PATH + pjPath);
			Scanner scan = new Scanner(file);
			scan.nextLine();
			while(scan.hasNextLine()) {
				parseStr += scan.nextLine();
			}
		}catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		System.out.println(parseStr);
		return parseStr;
	}
}
