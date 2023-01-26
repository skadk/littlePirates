package com.littlePirates.project.service;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.json.JSONObject;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class SummernoteService {

	public JSONObject SummerNoteImageFile(MultipartFile file) {

		JSONObject jsonObject = new JSONObject();
		String fileRoot = "C:\\springWorkspace\\summernoteImg\\";
		String originalFileName = file.getOriginalFilename();
		System.out.println(originalFileName);
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));
		System.out.println(extension);
		
		
		String saveFileName = UUID.randomUUID()+extension;
		System.out.println(saveFileName);
			
		File targetFile = new File(fileRoot+saveFileName);
		System.out.println(targetFile);
		System.out.println("4");
		
		try {
			InputStream fileStream = file.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);
			System.out.println(fileStream);
			System.out.println(targetFile);
			jsonObject.put("url", "/summernoteImage/"+saveFileName);
			System.out.println("성공?");
			jsonObject.put("responseCode", "succcess");
			System.out.println("성공!");
		} catch(IOException e) {
			FileUtils.deleteQuietly(targetFile);
			jsonObject.put("responseCode", "error");
			System.out.println("89");
			e.printStackTrace();
		}
		System.out.println(jsonObject);
		return jsonObject;
	}
	
}
