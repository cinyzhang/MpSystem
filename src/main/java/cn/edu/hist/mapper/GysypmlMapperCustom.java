package cn.edu.hist.mapper;

import cn.edu.hist.model.GysypmlCustom;
import cn.edu.hist.model.GysypmlQueryVo;

import java.util.List;

public interface GysypmlMapperCustom {
    
	//供货商药品目录查询列表
	 List<GysypmlCustom> findGysypmlList(GysypmlQueryVo gysypmlQueryVo) throws Exception;
	 int findGysypmlCount(GysypmlQueryVo gysypmlQueryVo) throws Exception;
	//供货商添加药品目录查询列表
	 List<GysypmlCustom> findAddGysypmlList(GysypmlQueryVo gysypmlQueryVo) throws Exception;
	 int findAddGysypmlCount(GysypmlQueryVo gysypmlQueryVo) throws Exception;
}