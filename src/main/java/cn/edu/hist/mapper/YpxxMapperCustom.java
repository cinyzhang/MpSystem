package cn.edu.hist.mapper;

import cn.edu.hist.model.YpxxCustom;
import cn.edu.hist.model.YpxxQueryVo;

import java.util.List;

public interface YpxxMapperCustom {
    //药品目录 查询
	List<YpxxCustom> findYpxxList(YpxxQueryVo ypxxQueryVo) throws Exception;
}