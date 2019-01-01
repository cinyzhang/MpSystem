package cn.edu.hist.commons;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3) {
        //System.out.println("拦截器MyInterceptor------->3、请求结束之后被调用，主要用于清理工作。");

    }

    @Override
    public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3) {
       // System.out.println("拦截器MyInterceptor------->2、请求之后调用，在视图渲染之前，也就是Controller方法调用之后");

    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws  Exception{
        //校验用户身份是否合法
        HttpSession session = request.getSession();
        Object activeUser = session.getAttribute(Config.ACTIVE_USER);
        String requestURI = request.getRequestURI();
        System.out.println("拦截请求："+requestURI);
        if(activeUser != null){
            //用户已经登陆，放行
            System.out.println("系统放行");
            return true;
        }
        response.sendRedirect("/login");

        return false;
    }
}
