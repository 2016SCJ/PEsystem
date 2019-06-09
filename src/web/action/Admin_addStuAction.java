package web.action;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;

import domain.Profession;
import domain.Student;
import service.AdminService;

public class Admin_addStuAction extends ActionSupport{
	
	@Resource(name="adminService")
	private AdminService adminService;
	
	private String addName;
	private String addSex;
	private String addProfession;
	private String addYear;
	private Integer proId = null;
	
	public Admin_addStuAction(){}
	
	public boolean testNumber(String str){
		int len=str.length();
		for(int i=0;i<len;++i){
			if(str.charAt(i)>='0'&&str.charAt(i)<='9')
				return true;
		}
		return false;
	}
	
	public boolean isSpecialChar(String str) {  //true为包含，false为不包含
        String regEx = "[ _`~!@#$%^&*()+=|{}':;',\\[\\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、？]|\n|\r|\t";
        Pattern p = Pattern.compile(regEx);
        Matcher m = p.matcher(str);
        return m.find();
    }
	
	public void validate(){
		System.out.println("姓名="+addName+" 性别="+addSex+" 专业="+addProfession);
		
		String tempName=addName;
		if(tempName.trim().length()==0)
			this.addFieldError("addName", "请输入正确的姓名");
		
		if(testNumber(addName)==true)
			this.addFieldError("addName", "姓名不能包含数字");
		
		if(isSpecialChar(addName)==true)
			this.addFieldError("addName", "姓名不能包含特殊字符");
		
		if(addName.length()<=0 || addName.length()>30)
			this.addFieldError("addName", "请输入姓名，并且姓名的长度不能大于30");
		else if(addProfession.length()<=0 || addProfession.length()>15)
			this.addFieldError("addProfession", "请输入正确的专业，且长度不能大于15位");
		else{
			this.proId=adminService.admin_findProfession(addProfession);
			if(this.proId==null)
				this.addFieldError("addProfession", "没有找到该专业，请联系数据库管理员");
		}
	}
	
	public String execute() throws Exception{
		System.out.println("专业的ID为："+this.proId);
		Student student = new Student();
		Profession profession = new Profession();
		profession.setId(this.proId);
		student.setProfession(profession);
		student.setStuNo("NULL");
		student.setStuName(addName);
		student.setStuSex(addSex);
		student.setStuPhone("NULL");
		student.setStuPassword("1234");
		if(adminService.admin_addStu(student, this.addYear))
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

	public String getAddProfession() {
		return addProfession;
	}

	public void setAddProfession(String addProfession) {
		this.addProfession = addProfession;
	}

	public Integer getProId() {
		return proId;
	}

	public void setProId(Integer proId) {
		this.proId = proId;
	}

	public String getAddYear() {
		return addYear;
	}

	public void setAddYear(String addYear) {
		this.addYear = addYear;
	}
	
	
}
