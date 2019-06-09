package web.action;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;

import other.myUtil;
import service.AdminService;

public class Admin_addStartClassAction extends ActionSupport{
	private Integer addCourseId;
	private String addTeacherNo;
	private String addLocation;
	private String addTime;
	private String addTime1;
	private String addTime2;
	private String addTime3;
	private String addTime4;
	private String addTime5;
	private String addNum;
	private Integer teaId = null;
	
	@Resource(name="adminService")
	private AdminService adminService;
	
	public void validate(){
		if(addTeacherNo.length()<=0 || addTeacherNo.length()>5)
			this.addFieldError("addTeacherNo", "请输入正确的教师工号");
		else if(addCourseId==null)
			this.addFieldError("addCourseId", "请输入课程id号");
		else if(addLocation.length()<=0 || addLocation.length()>50)
			this.addFieldError("addLocation", "请输入上课地点，且地点长度不超过50");
		else if(Integer.parseInt(addTime1)>Integer.parseInt(addTime2))
			this.addFieldError("addTime1", "请确认上课时间的周数是否按时间顺序填写");
		else if(Integer.parseInt(addTime4)>Integer.parseInt(addTime5))
			this.addFieldError("addTime1", "请确认上课时间的节数是否按时间顺序填写");
		else if(myUtil.isNumeric(addNum)==false)
			this.addFieldError("addNum", "开课班容量请填写整数");
		else{
			//接下来判断是否含有该课程
			if(adminService.admin_findCourseById(addCourseId)==false)
				this.addFieldError("addCourseId", "不存在该课程，请重新确认课程id");
			//接下来安顿是否含有该教师
			teaId = adminService.admin_findTeacherByNo(addTeacherNo);
			if(teaId==null)
				this.addFieldError("addTeacherNo", "不存在该教师，请重新确认教师工号");
		}
	}
	
	public String execute() throws Exception{
		//向数据库添加开课班
		addTime="第"+addTime1+"--"+addTime2+"周 "+addTime3+" 第"+addTime4+"--"+addTime5+"节";
		if(adminService.admin_addStartClass(addCourseId, teaId, addLocation, addTime, Integer.parseInt(addNum)))
			return SUCCESS;
		else
			return INPUT;
	}

	public String getAddNum() {
		return addNum;
	}

	public void setAddNum(String addNum) {
		this.addNum = addNum;
	}

	public Integer getAddCourseId() {
		return addCourseId;
	}

	public void setAddCourseId(Integer addCourseId) {
		this.addCourseId = addCourseId;
	}

	public String getAddTeacherNo() {
		return addTeacherNo;
	}

	public void setAddTeacherNo(String addTeacherNo) {
		this.addTeacherNo = addTeacherNo;
	}

	public String getAddLocation() {
		return addLocation;
	}

	public void setAddLocation(String addLocation) {
		this.addLocation = addLocation;
	}

	public String getAddTime() {
		return addTime;
	}

	public void setAddTime(String addTime) {
		this.addTime = addTime;
	}

	public String getAddTime1() {
		return addTime1;
	}

	public void setAddTime1(String addTime1) {
		this.addTime1 = addTime1;
	}

	public String getAddTime2() {
		return addTime2;
	}

	public void setAddTime2(String addTime2) {
		this.addTime2 = addTime2;
	}

	public String getAddTime3() {
		return addTime3;
	}

	public void setAddTime3(String addTime3) {
		this.addTime3 = addTime3;
	}

	public String getAddTime4() {
		return addTime4;
	}

	public void setAddTime4(String addTime4) {
		this.addTime4 = addTime4;
	}

	public String getAddTime5() {
		return addTime5;
	}

	public void setAddTime5(String addTime5) {
		this.addTime5 = addTime5;
	}

	
	
}
