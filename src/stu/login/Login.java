package stu.login;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class Login extends  AbstractInterceptor {
	
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// ȡ��������ص�ActionContextʵ��  
        ActionContext ctx=invocation.getInvocationContext();  
        Map<String,Object> session=ctx.getSession();
        //����ǵ�½�����ֱ�ӷ���loginAction
        Action action = (Action)invocation.getAction(); 
        if (action instanceof LoginAction||action instanceof IndexAction) { 
        	return invocation.invoke();
        }
        //����½ʱ��û��ʧЧ
        if(session.get("userLogin")!=null){  
            return invocation.invoke();  
        }else{
        	return "login_timeout";
        } 
	}
}
