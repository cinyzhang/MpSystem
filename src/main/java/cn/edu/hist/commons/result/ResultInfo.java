package cn.edu.hist.commons.result;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 系统提示信息封装类
 * @author mrt
 *
 */
public class ResultInfo
{
	public static final int TYPE_RESULT_FAIL = 0;//失败
	public static final int TYPE_RESULT_SUCCESS = 1;//成功
	public static final int TYPE_RESULT_WARN = 2;//警告
	public static final int TYPE_RESULT_INFO = 3;//提示信息
	
	public ResultInfo(){}

	/**
	 * 消息提示类型
	 */
	private int type;
		
	
	/**
	 * 提示代码
	 */
	private int messageCode;
	
	   
	/**
	 * 提示信息
	 */
	private String message;
	
	
	/**
	 * 提示信息明细列表
	 */
	private List<ResultInfo> details;
	
	public List<ResultInfo> getDetails() {
		return details;
	}


	public void setDetails(List<ResultInfo> details) {
		this.details = details;
	} 
	
	/**
	 * 提示消息对应操作的序号，方便用户查找问题，通常用于在批量提示信息中标识记录序号
	 */
	private int index;
	
	
	/**
	 * 提交后得到到业务数据信息从而返回给页面
	 */
	private Map<String,Object> sysdata = new HashMap<String, Object>();
	
    /**
     * 构造函数,根据提交信息代码messageCode获取提示信息
     */
    public ResultInfo(final int type,int messageCode,String message){
    	this.type = type;
    	this.messageCode = messageCode;
    	this.message = message;
    }
    
   
	public int getMessageCode() {
		return messageCode;
	}




	public void setMessageCode(int messageCode) {
		this.messageCode = messageCode;
	}


	public String getMessage() {
		return message;
	}
	
	
	public void setMessage(String message) {
		this.message = message;
	}


	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public boolean isSuccess(){
		if(this.type == TYPE_RESULT_SUCCESS){
			return true;
		}
		return false;
	}

	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	
	    
	


	public Map<String, Object> getSysdata() {
		return sysdata;
	}


	public void setSysdata(Map<String, Object> sysdata) {
		this.sysdata = sysdata;
	}



}