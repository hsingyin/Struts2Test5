package com.interceptor;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import java.util.Map;

public class LoginInterceptor extends AbstractInterceptor{

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext actionContext = ActionContext.getContext();
		Map<String, Object> session = actionContext.getSession();
		String userName = (String)session.get("userName");
		
		if (userName!=null&&!"".equals(userName)) {
			System.out.println("登录成功");
			return invocation.invoke();
		}
			
			return "error";
		
		
	
	}

}
