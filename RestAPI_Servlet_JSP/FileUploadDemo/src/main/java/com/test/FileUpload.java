package com.test;

import java.io.File;
import java.io.IOException;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;


public class FileUpload extends HttpServlet {
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		ServletFileUpload sf=new ServletFileUpload(new DiskFileItemFactory());
		try {
			List<FileItem> multifiles=sf.parseRequest(request);
			for(FileItem item : multifiles)
			{
				
					item.write(new File("C:\\Users\\deepp\\eclipse-workspace\\Maven-Demo\\FileUploadDemo\\"+item.getName()));
			}
			System.out.println("file uploaded");
			} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		
		
	}


