package hello;

import cn.edu.hist.commons.Config;
import cn.edu.hist.model.Sysuser;
import cn.edu.hist.user.service.SysuserService;
import com.xiaoleilu.hutool.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpRequest;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.thymeleaf.util.StringUtils;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.concurrent.atomic.AtomicLong;

@RestController
public class GreetingController {

    private static final String template = "Hello, %s!";
    private final AtomicLong counter = new AtomicLong();

    @Autowired
    private SysuserService sysuserService;
    @Value("${version_number}")
    private String version_number;
    @Value("${version_date}")
    private String version_date;


    @RequestMapping("/greeting")
    public Greeting greeting(@RequestParam(value="name", defaultValue="World") String name) {
        return new Greeting(counter.incrementAndGet(),
                            String.format(template, name));
    }

    @RequestMapping("/home")
    public ModelAndView first(ModelAndView md, HttpSession session){
        md.addObject("activeUser",(Sysuser)session.getAttribute(Config.ACTIVE_USER));
        md.addObject("version_number",version_number);
        md.addObject("version_date",version_date);
        md.setViewName("base/home");
        return md;
    }
    @RequestMapping("/welcome")
    public ModelAndView welcome(ModelAndView md){
        md.setViewName("base/welcome");
        return md;
    }

    @RequestMapping("/login")
    public ModelAndView login(ModelAndView md){
        md.setViewName("base/login");
        return md;
    }

    /**
     * 系统登录
     * @param sysuser
     * @param request
     * @return
     */
    @PostMapping("/loginsubmit")
    public Object loginsubmit(Sysuser sysuser, HttpServletRequest request){
        String userid = sysuser.getUserid();
        String pwd = sysuser.getPwd();
        JSONObject result = new JSONObject();
        if(StringUtils.isEmptyOrWhitespace(userid) || StringUtils.isEmptyOrWhitespace(pwd)){
            result.put("success",false);
            result.put("msg","用户名或密码不能为空");
            return result;
        }
        Sysuser userdb = sysuserService.findUserByUserid(userid);
        if(userdb!=null && pwd.equals(userdb.getPwd())){
            result.put("success",true);
            result.put("msg","登录成功");
            request.getSession().setAttribute(Config.ACTIVE_USER,userdb);
        }else{
            result.put("success",false);
            result.put("msg","用户名或密码错误");
        }
        return result;
    }
    @GetMapping("logout")
    public void logout(HttpServletResponse response,HttpSession session) throws Exception{
        session.invalidate();
        response.sendRedirect("/login");
    }
}
