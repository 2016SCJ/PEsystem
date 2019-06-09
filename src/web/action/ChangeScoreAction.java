package web.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import domain.refreshScore;
import other.myUtil;
import service.TeacherService;


public class ChangeScoreAction extends ActionSupport implements ModelDriven<refreshScore>{
	
	@Resource(name="teacherService")
	private TeacherService teacherService;
	
	private refreshScore rs = new refreshScore();
	
	@Override
	public refreshScore getModel() {
		return rs;
	} 
	
	public void validate(){
		if(myUtil.isNumeric(rs.getScore1())==false || myUtil.isNumeric(rs.getScore2())==false || myUtil.isNumeric(rs.getScore3())==false)
			this.addFieldError("score1", "��������������");
		else if(rs.getScore1().length()<=0 || rs.getScore1().length()>3)
			this.addFieldError("score1", "������ƽʱ�ɼ������ҷ���Ϊ0-100��");
		else if(rs.getScore2().length()<=0 || rs.getScore2().length()>3)
			this.addFieldError("score2", "���������۳ɼ������ҷ���Ϊ0-100��");
		else if(rs.getScore3().length()<=0 || rs.getScore3().length()>3)
			this.addFieldError("score3", "��������ĩ���˳ɼ������ҷ���Ϊ0-100��");
		else if(rs.getScore1().length()==3 && !rs.getScore1().equals("100"))
			this.addFieldError("score1", "�������ܳ���100��");
		else if(rs.getScore2().length()==3 && !rs.getScore2().equals("100"))
			this.addFieldError("score2", "�������ܳ���100��");
		else if(rs.getScore3().length()==3 && !rs.getScore3().equals("100"))
			this.addFieldError("score3", "�������ܳ���100��");
		else{}
	}
	
	public String execute() throws Exception{
//		System.out.println(rs.getScore1()+" "+rs.getScore2()+" "+rs.getScore3());
		HttpSession mySession = ServletActionContext.getRequest().getSession(); 
//        Integer scoreId = (Integer) mySession.getAttribute("SCORE_ID");
		String stuNo = (String) mySession.getAttribute("STU_NO");
		String startClassNo =  (String) mySession.getAttribute("STARTCLASSS_ID");
//        System.out.println("ChangeScoreAction:"+scoreId);
        if(teacherService.refreshScore(stuNo, Integer.valueOf(startClassNo), Integer.valueOf(rs.getScore1()), Integer.valueOf(rs.getScore2()),Integer.valueOf(rs.getScore3())))
        	return SUCCESS;
        else
        	return INPUT;
	}
	
}
