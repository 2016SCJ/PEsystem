package web.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import other.myUtil;
import service.UserService;

public class Teacher_changePhone extends ActionSupport{
	private String newPhoneNumber;
	
	@Resource(name="userService")
	private UserService userService;
	
	public void validate(){
		if(newPhoneNumber.length()!=11)
			this.addFieldError("newPhoneNumber", "������11λ���ֻ�����");
		else if(!myUtil.isNumeric(newPhoneNumber))
			this.addFieldError("newPhoneNumber", "�ֻ�����ֻ��Ϊ����");
	}
	
	public String execute() throws Exception{
		HttpSession session = ServletActionContext.getRequest().getSession(); 
        String userNo = (String) session.getAttribute("TEACHER_NO");
		if(userService.changePhone(userNo, newPhoneNumber, "2"))
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
