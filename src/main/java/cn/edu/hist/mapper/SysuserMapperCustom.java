package cn.edu.hist.mapper;

import cn.edu.hist.model.SysuserCustom;
import cn.edu.hist.user.vo.SysuserVo;

import java.util.List;
public interface SysuserMapperCustom {
    List<SysuserCustom> findUserList(SysuserVo sysuserVo);

    Integer findUserTotal(SysuserVo sysuserVo);
}
