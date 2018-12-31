package cn.edu.hist.user.service.impl;

import cn.edu.hist.mapper.*;
import cn.edu.hist.model.*;
import cn.edu.hist.user.service.SysuserService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class SyuserServiceImpl implements SysuserService {
    @Autowired
    private SysuserMapperCustom sysuserMapperCustom;
    @Autowired
    private SysuserMapper sysuserMapper;
    @Autowired
    private UseryyMapper useryyMapper;
    @Autowired
    private UsergysMapper usergysMapper;
    @Autowired
    private UserjdMapper userjdMapper;

    @Override
    public List<SysuserCustom> findUser(SysuserVo sysuserVo) {
        PageHelper.startPage(sysuserVo.getPage(),sysuserVo.getRows());
        return sysuserMapperCustom.findUserList(sysuserVo);
    }
    @Override
    public  Integer findUserTotal(SysuserVo sysuserVo){
        return  sysuserMapperCustom.findUserTotal(sysuserVo);
    }

    @Override
    public Boolean addSysuser(SysuserCustom sysuserCustom) {
        String groupid = sysuserCustom.getGroupid();// 机构类别
        String userid= sysuserCustom.getUserid();
        String sysmc = sysuserCustom.getSysmc();
        String sysid=null;
        //查询数据库中是否有该用户
        Sysuser syuser = this.findUserByUserid(userid);
        if(syuser != null){
            return false;
        }
        if("1".equals(groupid) || "2".equals(groupid)){
            Userjd jd = this.findJdBymc(sysmc);
            if(jd == null){
                return false;
            }else{
                sysid=jd.getId();
            }
        } else if ("3".equals(groupid)) {
            Useryy yy = this.findYyBymc(sysmc);
            if(yy == null){
                return false;
            }else{
                sysid=yy.getId();
            }
        } else if("4".equals(groupid)){
            Usergys gys = this.findGysBymc(sysmc);
            if (gys == null) {
                return false;
            }else{
                sysid=gys.getId();
            }
        }
        //插入sysuser
        sysuserCustom.setSysid(sysid);
        sysuserCustom.setId(UUID.randomUUID().toString().replace("-",""));
        sysuserMapper.insertSelective(sysuserCustom);
        return true;
    }

    @Override
    public Sysuser findUserByUserid(String userid) {
        SysuserExample example = new SysuserExample();
        SysuserExample.Criteria criteria = example.createCriteria();
        criteria.andUseridEqualTo(userid);
        List<Sysuser> sysusers = sysuserMapper.selectByExample(example);
        if(sysusers != null && sysusers.size() >=1){
            return sysusers.get(0);
        }
        return null;
    }

    @Override
    public Useryy findYyBymc(String mc) {
        UseryyExample example=new UseryyExample();
        UseryyExample.Criteria criteria = example.createCriteria();
        criteria.andMcEqualTo(mc);
        List<Useryy> useryys = useryyMapper.selectByExample(example);
        if(useryys !=null && useryys.size() >=0){
            return useryys.get(0);
        }
        return null;
    }

    @Override
    public Userjd findJdBymc(String mc) {
        UserjdExample example= new UserjdExample();
        UserjdExample.Criteria criteria = example.createCriteria();
        criteria.andMcEqualTo(mc);
        List<Userjd> userjds = userjdMapper.selectByExample(example);
        if(userjds != null && userjds.size()>=1){
            return userjds.get(0);
        }
        return null;
    }

    @Override
    public Usergys findGysBymc(String mc) {
        UsergysExample example = new UsergysExample();
        UsergysExample.Criteria criteria = example.createCriteria();
        criteria.andMcEqualTo(mc);
        List<Usergys> usergys = usergysMapper.selectByExample(example);
        if(usergys != null && usergys.size() >=1){
            return usergys.get(0);
        }
        return null;
    }

}
