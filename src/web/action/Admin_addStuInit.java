package web.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;

import domain.Profession;
import service.AdminService;

public class Admin_addStuInit extends ActionSupport{
	
	@Resource(name="adminService")
	private AdminService adminService;
	
	private List<String> allProfession = new ArrayList<String>();
	
	public String execute() throws Exception{
		List<Profession> temp = adminService.admin_addStuInit();
		int tempSize=temp.size();
		for(int i=0;i<tempSize;++i){
			allProfession.add(temp.get(i).getProName());
			System.out.println(temp.get(i).getProName());
		}
		return SUCCESS;
	}

	public List<String> getAllProfession() {
		return allProfession;
	}

	public void setAllProfession(List<String> allProfession) {
		this.allProfession = allProfession;
	}
	
	
}
