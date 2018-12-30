package cn.edu.hist.user.service;

import cn.edu.hist.model.SysuserCustom;
import cn.edu.hist.model.SysuserVo;

import java.util.List;

public interface SysuserService {

    List<SysuserCustom> findUser(SysuserVo sysuserVo);
     Integer findUserTotal(SysuserVo sysuserVo);

}
