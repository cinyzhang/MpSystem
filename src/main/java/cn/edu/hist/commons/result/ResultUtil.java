package cn.edu.hist.commons.result;

import cn.edu.hist.util.ResourcesUtil;

import java.util.List;



/**
 * 系统结果工具类
 * @author mrt
 *
 */
public class ResultUtil {

	
	  /**
     * 创建错误结果
     * @return
     */
    public static ResultInfo createFail(String fileName,int messageCode,Object[] objs){
    	String message=null;
    	if(objs == null){
    		message = ResourcesUtil.getValue(fileName, messageCode+"");
    	}else{
    		message = ResourcesUtil.getValue(fileName, messageCode+"",objs);
    	}
    	return new ResultInfo(ResultInfo.TYPE_RESULT_FAIL,messageCode,message);
    }
    /**
     * 创建敬告提示结果
     */
    public static ResultInfo createWarning(String fileName,int messageCode,Object[] objs){
    	String message=null;
    	if(objs == null){
    		message = ResourcesUtil.getValue(fileName, messageCode+"");
    	}else{
    		message = ResourcesUtil.getValue(fileName, messageCode+"",objs);
    	}
    	return new ResultInfo(ResultInfo.TYPE_RESULT_WARN,messageCode,message);
    }
    
    /**
     * 创建成功提示结果
     */
    public static ResultInfo createSuccess(String fileName,int messageCode,Object[] objs){
    	
    	String message=null;
    	if(objs == null){
    		message = ResourcesUtil.getValue(fileName, messageCode+"");
    	}else{
    		message = ResourcesUtil.getValue(fileName, messageCode+"",objs);
    	}
    	return new ResultInfo(ResultInfo.TYPE_RESULT_SUCCESS,messageCode,message);
    }
    
    
    
    /**
     * 创建普通信息提示结果
     */
    public static ResultInfo createInfo(String fileName,int messageCode,Object[] objs){
    	
    	String message=null;
    	if(objs == null){
    		message = ResourcesUtil.getValue(fileName, messageCode+"");
    	}else{
    		message = ResourcesUtil.getValue(fileName, messageCode+"",objs);
    	}
    	return new ResultInfo(ResultInfo.TYPE_RESULT_INFO,messageCode,message);
    }

    
	/**
	 * 抛出异常
	 * @param resultInfo
	 * @throws ExceptionResultInfo
	 */
    public static void throwExcepion(ResultInfo resultInfo) throws ExceptionResultInfo{
		throw new ExceptionResultInfo(resultInfo);
	}
	public static void throwExcepion(ResultInfo resultInfo,List<ResultInfo> details) throws ExceptionResultInfo{
		if(resultInfo != null){
			resultInfo.setDetails(details);
		}
		throw new ExceptionResultInfo(resultInfo);
	}
	/**
	 * 创建提交结果信息
	 * @param resultInfo
	 * @return
	 */
	public static SubmitResultInfo createSubmitResult(ResultInfo resultInfo){
		return new SubmitResultInfo(resultInfo);
	}
	/**
	 * 创建提交结果信息，包括明细信息
	 * @param resultInfo
	 * @param details
	 * @return
	 */
	public static SubmitResultInfo createSubmitResult(ResultInfo resultInfo,List<ResultInfo> details){
		if(resultInfo != null){
			resultInfo.setDetails(details);
		}
		return new SubmitResultInfo(resultInfo);
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
