package cn.edu.hist.user.service.impl;

import cn.edu.hist.mapper.SysuserMapperCustom;
import cn.edu.hist.model.SysuserCustom;
import cn.edu.hist.model.SysuserVo;
import cn.edu.hist.user.service.SysuserService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SyuserServiceImpl implements SysuserService {
    @Autowired
    private SysuserMapperCustom sysuserMapper;

    @Override
    public List<SysuserCustom> findUser(SysuserVo sysuserVo) {
        PageHelper.startPage(sysuserVo.getPage(),sysuserVo.getRows());
        return sysuserMapper.findUserList(sysuserVo);
    }
    @Override
    public  Integer findUserTotal(SysuserVo sysuserVo){
        return  sysuserMapper.findUserTotal(sysuserVo);
    }

}
