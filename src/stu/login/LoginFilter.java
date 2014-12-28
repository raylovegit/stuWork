/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package stu.login;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author rslee
 * @data 2010-3-23
 * 说明：这个LoginFiter有如下的功能：
 * 过滤指定的路径的非法请求
 * web.xml文件配置如下：
 * <filter>
        <filter-name>Login</filter-name>
        <filter-class>security.LoginFilter</filter-class>
        <init-param>
            <param-name>url</param-name>
            <param-value>p404.jsp</param-value>
        </init-param>
        <init-param>
            <param-name>ext</param-name>
            <param-value>login.jsp,p404.jsp,loginServlet.jsp</param-value>
        </init-param>
        <init-param>
            <param-name>name</param-name>
            <param-value>user</param-value>
        </init-param>
    </filter>
    <filter-mapping>
        <filter-name>Login</filter-name>
        <url-pattern>/security/*</url-pattern>
    </filter-mapping>
 */
public class LoginFilter implements Filter {

    private String name;
    private String url;
    private String ext;//例外

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        long start = System.currentTimeMillis();
        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession();
        String uri = req.getRequestURI();
        String ctx = req.getContextPath();
        ctx+="/";
        //如果是首页的请求，没有加index.jsp
        boolean flag = true;
        if(uri.equals(ctx)){
            flag=false;
        }
        else{
            //请求的是例外的页面
            for(String e:parseExt(ext)){
                if(uri.indexOf(e)!=-1){
                    flag = false;
                    break;
                }
            }
        }
        if(session.getAttribute(name)==null){
        	System.out.println("flag:"+flag);
            //不是请求的页面
            if(flag){
                req.getRequestDispatcher(url).forward(request, response);
            }else{
                chain.doFilter(request, response);
            }
        }else{
        	System.out.println("flag:-------------------");
            chain.doFilter(request, response);
        }
        long end = System.currentTimeMillis();
        System.out.println("实际判断花费时间："+(end-start)+"ms");
    }

    public void init(FilterConfig filterConfig) throws ServletException {
        //这里用于从web.xml文件里面获取参数
        name = filterConfig.getInitParameter("name");
        url = filterConfig.getInitParameter("url");
        ext = filterConfig.getInitParameter("ext");
    }
    //根据","分割多个例外的请求
    public String [] parseExt(String ext){
        return ext.split(",");
    }

    public void destroy() {
        System.out.println("LoginFiter销毁");
    }
}
