package cn.edu.hist.business.service;

import java.util.List;

import cn.edu.hist.model.YpxxCustom;
import cn.edu.hist.model.YpxxQueryVo;

public interface YpxxService {
	// 药品目录 查询
	List<YpxxCustom> findYpxxList(YpxxQueryVo ypxxQueryVo)
			throws Exception;

}
