package cn.edu.hist.user.controller;

import cn.edu.hist.model.SysuserCustom;
import cn.edu.hist.user.vo.SysuserVo;
import cn.edu.hist.user.service.SysuserService;
import com.xiaoleilu.hutool.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
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

    @PostMapping("delete")
    public Object delete(String id){
        boolean success=sysuserService.deleteByUserId(id);
        JSONObject result = new JSONObject();
        result.put("success", success);
        if(success){
            result.put("msg","删除成功");
        }else{
            result.put("msg","删除失败");
        }
        return result;

    }

    @GetMapping("toEdit")
    public ModelAndView toEdit(ModelAndView md,String id){
        SysuserCustom sysuserCustom = sysuserService.findUserByid(id);
        md.addObject("sysuserCustom",sysuserCustom);
        md.setViewName("base/user/editsysuser");
        return md;
    }

    @PostMapping("edit")
    public Object edit(SysuserVo sysuserVo){
        boolean success = sysuserService.editSysuser(sysuserVo.getSysuserCustom());
        JSONObject result = new JSONObject();
        result.put("success", success);
        if(success){
            result.put("msg","修改成功");
        }else{
            result.put("msg","修改失败");
        }
        return result;
    }



}
