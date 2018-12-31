package cn.edu.hist.user.service;

import cn.edu.hist.model.*;

import java.util.List;

public interface SysuserService {

    List<SysuserCustom> findUser(SysuserVo sysuserVo);
     Integer findUserTotal(SysuserVo sysuserVo);
    Boolean addSysuser(SysuserCustom sysuserCustom);
    Sysuser findUserByUserid(String userid);
    Useryy findYyBymc(String mc);
    Userjd findJdBymc(String mc);
    Usergys findGysBymc(String mc);
    Boolean deleteByUserId(String id);
    SysuserCustom findUserByid(String id);
    boolean editSysuser(SysuserCustom sysuserCustom);
}
