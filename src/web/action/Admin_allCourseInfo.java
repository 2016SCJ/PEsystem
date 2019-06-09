package web.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;

import domain.Course;
import service.AdminService;

public class Admin_allCourseInfo extends ActionSupport {
	private List<Course> allCourseInfo = null;
	private List<String> test=new ArrayList<String>();
	
	@Resource(name="adminService")
	private AdminService adminService;
	
	public String execute() throws Exception{
		allCourseInfo = adminService.admin_allCourseInfo();
		for(Course couName:allCourseInfo){
			test.add(couName.getCouName());
		}
		return SUCCESS;
	}

	public List<Course> getAllCourseInfo() {
		return allCourseInfo;
	}

	public void setAllCourseInfo(List<Course> allCourseInfo) {
		this.allCourseInfo = allCourseInfo;
	}

	public AdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public List<String> getTest() {
		return test;
	}

	public void setTest(List<String> test) {
		this.test = test;
	}

	
}
