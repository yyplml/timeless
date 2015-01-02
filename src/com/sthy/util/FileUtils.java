package com.sthy.util;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

/**
 * 文件公共类
 * 
 * @author Administrator
 * 
 */
public class FileUtils {
	
	/**
	 * 保存文件 
	 * @param file
	 * @param path
	 * @return
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	public static String save(MultipartFile file, String path) throws IllegalStateException, IOException {
		String type = file.getOriginalFilename().split("\\.")[1];
		String randomFileName = UUID.randomUUID().toString().replace("-", "")
				+ "." + type;
		File saveFile = new File(path + randomFileName.toLowerCase());
		file.transferTo(saveFile);
		return randomFileName.toLowerCase();
	}

	/**
	 * 删除文件
	 * 
	 * @param path
	 * @return
	 */
	public static boolean remove(String path) {
		boolean success = false;
		File file = new File(path);
		if(file.exists()) {
			success = file.delete();
		}
		return success;
	}
	
	/**
	 * 文件是否存在
	 * @param path
	 * @return
	 */
	public static boolean exists(String path) {
		File file = new File(path);
		return file.exists();
	}
	
	public static boolean move(String oldPath, String newPath, String fileName) {
		File oldFile = new File(oldPath + fileName);
		File newFile = new File(newPath + fileName);
		oldFile.renameTo(newFile);
		return true;
	}
	
}
