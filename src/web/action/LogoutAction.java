package web.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 
 * 用户退出登录的Action，清空session登陆的用户标志
 * @author 黄泽彬
 *
 */

public class LogoutAction extends ActionSupport{
	public String execute() throws Exception{
		HttpSession mySession = ServletActionContext.getRequest().getSession(); 
        String type = (String) mySession.getAttribute("TYPE");
		if(type.equals("1"))
			mySession.removeAttribute("STUDENT_NO");
		else if(type.equals("2"))
			mySession.removeAttribute("TEACHER_NO");
		else
			mySession.removeAttribute("ADMIN_NO");
		return SUCCESS;
	}
}
