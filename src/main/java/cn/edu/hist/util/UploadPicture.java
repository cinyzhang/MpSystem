package cn.edu.hist.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Date;

import javax.imageio.ImageIO;

public class UploadPicture {
	private String filetype;
    private Long maxSize;
    private Long width;
    private Long height;
    
    
	public UploadPicture(String filetype,Long maxSize,Long width,Long height){
		this.filetype=filetype;
		this.maxSize=maxSize;
		this.width=width;
		this.height=height;
	}
	
	
	
	public  String check(File upload,String uploadFileName,String uploadContentType) {
	      String message="";
		  BufferedImage bi;
			try {
				if(filetype!=null){
		    		String[] filetypes = filetype.split(",");
		        	int v=0;
		        	for(int i=0;i<filetypes.length;i++){
		        		if(uploadContentType.equals(filetypes[i])){
		        			v++;
		        			continue; 
		        		}
		        	}
		        	if(v==0){ 
		        		message="您上传的文件类型不对!";
		        		return message;
		        	}
		    	}
				bi = ImageIO.read(upload);
				int w = bi.getWidth();
		        int h = bi.getHeight();
		        if(w>width||h>height){
		        	message="上传照片宽度和高度不符合要求";
		        }
		        if(upload.length()>maxSize){
		        	message="上传照片过大";
		        }
		    	
			 } catch (IOException e) {
				e.printStackTrace();
			  }
		return message;
	}
	
	
	
	public  String upload(File upload,String uploadFileName,String path,String personid) throws Exception{
		java.io.InputStream is = null;
		java.io.OutputStream os = null;
		String fileType = uploadFileName.substring(uploadFileName.lastIndexOf("."));
		StringBuffer picname = new StringBuffer();
		RandomStrg rstr=new RandomStrg();
  	    rstr.setCharset("a-zA-Z0-9");
  	    rstr.setLength(8);
  	    rstr.generateRandomObject();
  	    picname.append(personid).append(uploadFileName.substring(uploadFileName.lastIndexOf(".")==-1?uploadFileName.length():uploadFileName.lastIndexOf("."), uploadFileName.length()));
  	    uploadFileName = picname.toString();
		String fileName = null;
		try{
			is = new java.io.FileInputStream(upload);
			
			File f = new File(path);
			if(!f.exists())
				f.mkdirs();
			
			System.out.println("=========UPloadPicture.upload(), real path=" + path+"/"+uploadFileName);
		    os = new java.io.FileOutputStream(path+"/"+uploadFileName);
		    byte buffer[] = new byte[8192];
		    int count = 0;
		    int flag = 0;
		    while((count = is.read(buffer)) > 0){
		    	flag = 1;
		    	os.write(buffer, 0, count);
		    }
		    System.out.println("=========UPloadPicture.upload(), flag=" + flag);
		    if(flag == 1) fileName =uploadFileName;
		} catch (FileNotFoundException e){
			
		}catch(IOException e){
			File f = new File(path+"/"+fileName);
			if(f.exists()){
			f.delete();
			}
			
		}
		finally
		{
			try
			{
				os.close();
			}
			catch(IOException ioe)
			{}
			
			try
			{
				is.close();
			}
			catch(IOException ioe)
			{}					
		}
		return fileName;
	}
	
	
	
	public  void clear(String path){
		File file = new File(path);
		if(file.isFile()&&file.exists()){
			file.delete();
		}
	}
	public String getFiletype() {
		return filetype;
	}
	public Long getMaxSize() {
		return maxSize;
	}
	public Long getWidth() {
		return width;
	}
	public Long getHeight() {
		return height;
	}
	public void setFiletype(String filetype) {
		this.filetype = filetype;
	}
	public void setMaxSize(Long maxSize) {
		this.maxSize = maxSize;
	}
	public void setWidth(Long width) {
		this.width = width;
	}
	public void setHeight(Long height) {
		this.height = height;
	}
}
