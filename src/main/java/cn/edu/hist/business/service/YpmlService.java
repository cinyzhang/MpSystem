package cn.edu.hist.business.service;


import cn.edu.hist.model.GysypmlCustom;
import cn.edu.hist.model.GysypmlQueryVo;

import java.util.List;

public interface YpmlService {

	// 供货商药品目录查询列表
	/**
	 * 
	 * <p>
	 * Title: findGysypmlList
	 * </p>
	 * <p>
	 * Description:
	 * </p>
	 *
	 *            供货商id
	 * @param gysypmlQueryVo
	 *            查询条件
	 * @return
	 * @throws Exception
	 */
	public List<GysypmlCustom> findGysypmlList(String usergysId,
											   GysypmlQueryVo gysypmlQueryVo) throws Exception;

	public int findGysypmlCount(String usergysId, GysypmlQueryVo gysypmlQueryVo)
			throws Exception;

	// 供货商添加药品目录查询列表
	public List<GysypmlCustom> findAddGysypmlList(String usergysId, GysypmlQueryVo gysypmlQueryVo)
			throws Exception;

	public int findAddGysypmlCount(String usergysId, GysypmlQueryVo gysypmlQueryVo)
			throws Exception;
}
