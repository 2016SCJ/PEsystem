package service;

import java.util.List;

import domain.Score;
import domain.StartClass;
import domain.Teacher;

public interface TeacherService {
	
	/**
	 * 查询教师的个人信息
	 * @author 陈志斌
	 * @param teaNo 教师账号
	 * @return 教师的个人信息
	 */
	public List<Teacher> teacher_info(String teaNo);  //教师个人信息
	
	/**
	 * 教师查看自己所有的授课班级
	 * @author 陈志斌
	 * @param teaNo 教师账户
	 * @return 授课班级信息
	 */
	public List<StartClass> allClassInfo(String teaNo);  //教师登陆查看授课班级信息
	
	/**
	 * 教师查看指定开课班里的所有学生信息
	 * @author 陈志斌
	 * @param classId 开课班ID
	 * @return 某一指定开课班ID中的所有学生信息
	 */
	public List<Score> classDetail(Integer classId);  //查看某个班级里的所有学生
	
	/**
	 * 查看开课班中指定学生的课程成绩信息
	 * @author 陈志斌
	 * @param stuNo 学生学号
	 * @return 该学生在该开课班的成绩信息
	 */
	public Score thisStudent(String stuNo);  //找到指定学生的成绩
	
	/**
	 * 对某一学生进行成绩录入
	 * @author 陈志斌
	 * @param stuNo 学号
	 * @param startClassNo 开课班ID
	 * @param score1 成绩1
	 * @param score2 成绩2
	 * @param score3 成绩3
	 * @return 成绩是否更新成功
	 */
	public boolean refreshScore(String stuNo, Integer startClassNo, Integer score1, Integer score2, Integer score3);  //给指定学生添加成绩
}
