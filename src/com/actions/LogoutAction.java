package com.actions;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport{
	
	
	public String logout() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("isLogin", false);
		session.setAttribute("userName", "");
		return SUCCESS;
	}
}
