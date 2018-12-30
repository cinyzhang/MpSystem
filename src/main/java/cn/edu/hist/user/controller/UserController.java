package cn.edu.hist.user.controller;

import cn.edu.hist.model.SysuserCustom;
import cn.edu.hist.model.SysuserVo;
import cn.edu.hist.user.service.SysuserService;
import com.xiaoleilu.hutool.json.JSON;
import com.xiaoleilu.hutool.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private SysuserService sysuserService;

    @RequestMapping("/toquery")
    public ModelAndView query(ModelAndView modelAndView){
        modelAndView.setViewName("base/user/queryuser");
        return modelAndView;
    }
    @RequestMapping("/query")
    public Object query(SysuserVo sysuserVo){
        JSONObject result = new JSONObject();
        result.put("total",sysuserService.findUserTotal(sysuserVo));
        result.put("rows",sysuserService.findUser(sysuserVo));
        return result;
    }


}
