package cn.edu.hist.user.controller;

import cn.edu.hist.model.SysuserVo;
import cn.edu.hist.user.service.SysuserService;
import com.xiaoleilu.hutool.json.JSONObject;
import com.xiaoleilu.hutool.json.JSONUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

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

    @RequestMapping("/toAddUser")
    public ModelAndView toAddUser(ModelAndView modelAndView){
        modelAndView.setViewName("base/user/addsysuser");
        return modelAndView;
    }

     @PostMapping("addsysusersubmit")
     public Object  addsysusersubmit(SysuserVo sysuserVo){
         JSONObject result = new JSONObject();
         Boolean success = sysuserService.addSysuser(sysuserVo.getSysuserCustom());
         result.put("success", success);
         if(success){
             result.put("msg","插入成功");
         }else{
             result.put("msg","插入失败");
         }
        return result;
    }


}
