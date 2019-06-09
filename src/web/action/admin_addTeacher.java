package web.action;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;

import domain.Teacher;
import service.AdminService;

public class admin_addTeacher extends ActionSupport{
	
	@Resource(name="adminService")
	private AdminService adminService;
	
	private String addName;
	private String addSex;
	
	public admin_addTeacher(){}
	
	public boolean testNumber(String str){
		int len=str.length();
		for(int i=0;i<len;++i){
			if(str.charAt(i)>='0'&&str.charAt(i)<='9')
				return true;
		}
		return false;
	}
	
	public boolean isSpecialChar(String str) {  //trueΪ������falseΪ������
        String regEx = "[ _`~!@#$%^&*()+=|{}':;',\\[\\].<>/?~��@#��%����&*��������+|{}������������������������]|\n|\r|\t";
        Pattern p = Pattern.compile(regEx);
        Matcher m = p.matcher(str);
        return m.find();
    }
	
	public void validate(){
		String tempName=addName;
		if(tempName.trim().length()==0)
			this.addFieldError("addName", "��������ȷ������");
		else if(testNumber(tempName))
			this.addFieldError("addName", "�������ܺ�������");
		else if(isSpecialChar(tempName))
			this.addFieldError("addName", "�������ܺ��������ַ�");
		else if(addName.length()>30)
			this.addFieldError("addName", "�������Ȳ�����30");
		else if(addName.length()==0)
			this.addFieldError("addName", "��������Ϊ��");
	}
	
	public String execute() throws Exception{
		System.out.println(addName+" "+addSex);
		Teacher teacher = new Teacher();
		teacher.setTeaName(addName);
		teacher.setTeaSex(addSex);
		teacher.setTeaNo("NULL");
		teacher.setTeaPhone("NULL");
		teacher.setTeaPassword("1234");
		if(adminService.admin_addTeacher(teacher))
			return SUCCESS;
		else
			return INPUT;
	}

	public String getAddName() {
		return addName;
	}

	public void setAddName(String addName) {
		this.addName = addName;
	}

	public String getAddSex() {
		return addSex;
	}

	public void setAddSex(String addSex) {
		this.addSex = addSex;
	}
	
	
}
