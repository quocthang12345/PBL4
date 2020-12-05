package com.SpringMVC.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Component;

@Component
public class UploadFileUtils {
	public final String root = "C:\\Users\\Huy Coc\\Desktop\\Course\\workspace\\Work\\src\\main\\webapp\\template\\web\\image";
    public String writeOrUpdate(byte[] bytes, String path) {
    	String ImagePath =   "/template/web/image/" + path;
    	
        File file = new File(StringUtils.substringBeforeLast(root + "/" + path, "/"));

        if (!file.exists()) {
            file.mkdir();
        }
        try(FileOutputStream fileOutputStream = new FileOutputStream(new File(root + "/" + path))) {
            fileOutputStream.write(bytes);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return ImagePath;
    }
}
