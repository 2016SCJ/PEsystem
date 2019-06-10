package service;

import java.util.List;

import domain.Score;

public interface StudentService {
	
	/**
	 * 获取学生的个人信息
	 * @author 朱润发
	 * @return 学生的个人信息
	 */
	public List<Object[]> studentInfo();  //student显示学生个人信息
	
	/**
	 * 展示所有的开课班，提供给学生选课的信息
	 * @author 朱润发
	 * @return 所有开课班的详细信息
	 */
	public List<Object[]> queryAllStartClass();  //显示所有开课班来选课
	
	/**
	 * undo ...
	 */
	public List<Object[]> queryAllStartClassByPage(int pageNo,int pageSize);  //选课信息分页
	
	/**
	 * 学生选中一门开课班
	 * @author 朱润发
	 * @param stuNo 学号
	 * @param startClassId 开课班ID
	 * @return 选课是否成功
	 */
	public boolean chooseClass(String stuNo, Integer startClassId);  //学生点击选择某一门开课班
	
	/**
	 * 学生查看自己的选课信息以及选课成绩
	 * @author 朱润发
	 * @param stuNo 学号
	 * @return 学生自己的选课信息及成绩
	 */
	public List<Score> student_scoreInfo(String stuNo);  //学生的所有选课信息及成绩
}
