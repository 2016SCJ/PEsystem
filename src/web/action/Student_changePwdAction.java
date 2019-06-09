package web.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import service.UserService;

public class Student_changePwdAction extends ActionSupport{
	
	@Resource(name="userService")
	private UserService userService;
	
	private String oldPwd;
	private String newPwd1;
	private String newPwd2;
	
	public void validate(){
		if(oldPwd.length()<=0)
			this.addFieldError("oldPwd", "请输入旧密码");
		else if(newPwd1.length()<=0)
			this.addFieldError("newPwd1", "请输入新密码");
		else if(newPwd2.length()<=0)
			this.addFieldError("newPwd2", "请输入确认密码");
		else if(oldPwd.length()>20  || oldPwd.length()<4)
			this.addFieldError("oldPwd", "请输入正确的旧密码");
		else if(newPwd1.length()>20)
			this.addFieldError("newPwd1", "新密码的长度不超过20位");
		else if(newPwd1.length()<4)
			this.addFieldError("newPwd1", "新密码的长度至少为4位");
		else if(newPwd2.equals(newPwd1)==false)
			this.addFieldError("newPwd2", "新密码与确认密码不一致");
		else{
			HttpSession session = ServletActionContext.getRequest().getSession(); 
	        String userNo = (String) session.getAttribute("STUDENT_NO");
	        
	        if(userService.checkPwd(userNo, oldPwd, "1")==false)
	        	this.addFieldError("oldPwd", "旧密码错误");
		}
	}
	
	public String execute() throws Exception{
		HttpSession session = ServletActionContext.getRequest().getSession(); 
        String userNo = (String) session.getAttribute("STUDENT_NO");
		if(userService.changePwd(userNo, newPwd1, "1"))
			return SUCCESS;
		else
			return INPUT;
	}

	public String getOldPwd() {
		return oldPwd;
	}

	public void setOldPwd(String oldPwd) {
		this.oldPwd = oldPwd;
	}

	public String getNewPwd1() {
		return newPwd1;
	}

	public void setNewPwd1(String newPwd1) {
		this.newPwd1 = newPwd1;
	}

	public String getNewPwd2() {
		return newPwd2;
	}

	public void setNewPwd2(String newPwd2) {
		this.newPwd2 = newPwd2;
	}
	
	
}
