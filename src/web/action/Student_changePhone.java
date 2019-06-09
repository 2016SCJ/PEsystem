package web.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import other.myUtil;
import service.UserService;

public class Student_changePhone extends ActionSupport{
	
	@Resource(name="userService")
	private UserService userService;
	
	private String newPhoneNumber; 
	
	public void validate(){
		if(newPhoneNumber.length()!=11)
			this.addFieldError("newPhoneNumber", "请输入11位的手机号码");
		else if(!myUtil.isNumeric(newPhoneNumber))
			this.addFieldError("newPhoneNumber", "手机号码只能为数字");
	}
	
	public String execute() throws Exception{
		HttpSession session = ServletActionContext.getRequest().getSession(); 
        String userNo = (String) session.getAttribute("STUDENT_NO");
        System.out.println("新的手机号码为："+newPhoneNumber);
        if(userService.changePhone(userNo, newPhoneNumber, "1"))
			return SUCCESS;
		else
			return INPUT;
	}

	public String getNewPhoneNumber() {
		return newPhoneNumber;
	}

	public void setNewPhoneNumber(String newPhoneNumber) {
		this.newPhoneNumber = newPhoneNumber;
	}
}
