package com.actions;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.beans.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import jdk.internal.org.objectweb.asm.tree.JumpInsnNode;

public class LoginAction extends ActionSupport implements ModelDriven<User>{
	
	private User user = new User();
	
	private Boolean isLogin = false;
	
	private String userName;
	
	public String login()  {  
		
		HttpSession session = ServletActionContext.getRequest().getSession();
		
        if (user.getName().equals("Tom")&&user.getPasswd().equals("123")) {  
        	isLogin = true;
        	session.setAttribute("isLogin", isLogin);
        	session.setAttribute("userName", user.getName());
            return SUCCESS;  
        } else {  
        	isLogin = false;
        	session.setAttribute("isLogin", isLogin);
            return ERROR;  
        }  
    }
	public String jump() {
		
		return SUCCESS;
	}
	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}
}
