package cn.edu.hist.dict.service;

import cn.edu.hist.model.Basicinfo;
import cn.edu.hist.model.Dictinfo;

import java.util.List;


/**
 * 系统级别service
 * @author Thinkpad
 *
 */
public interface SystemConfigService {
	/**
	 * 根据typecode获取数据字典的信息
	 */
	 List findDictinfoByType(String typecode) throws Exception;
	
	/**
	 * 根据数据字典中的typecode，和dictcode获取一条信息
	 */
	 Dictinfo findDictinfoByDictcode(String typecode, String dictcode) throws Exception;
	
	/**
	 * 根据系统参数id获取系统参数表信息
	 */
	 Basicinfo findBasicinfoById(String id)throws Exception;
}
