package service;

import java.util.List;

import domain.Course;
import domain.Profession;
import domain.StartClass;
import domain.Student;
import domain.Teacher;

public interface AdminService {
	
	/**
	 * 显示所有学生的个人信息
	 * @author 黄泽彬
	 * @return 所有学生的信息
	 */
	public List<Student> allStuInfo();  //admin 显示所有学生的信息
	
	/**
	 * 删除指定的学生信息
	 * @param stuId 学生ID
	 * @return 删除是否成功
	 */
	public boolean admin_deleteThisStu(Integer stuId);  //删除某一个学生
	
	/**
	 * 添加学生前，想数据库读取所有专业，作为下拉框选项
	 * @author 魏子敬
	 * @return 所有专业信息
	 */
	public List<Profession> admin_addStuInit();  //添加学生前的数据初始化
	
	/**
	 * 添加学生信息
	 * @author 魏子敬
	 * @param student 学生类
	 * @param stuYear 学生注册的学年
	 * @return 学生信息是否添加成功
	 */
	public boolean admin_addStu(Student student, String stuYear);  //添加一个学生
	
	
	public Integer admin_findProfession(String findGoal);  //查找是否有该专业
	public List<Teacher> admin_allTeacherInfo();  //查询所有教师信息
	
	/**
	 * 删除指定教师的信息
	 * @author 黄泽彬
	 * @param teaId 教师ID
	 * @return 删除是否成功
	 */
	public boolean admin_deleteThisTea(Integer teaId);  //删除指定教师
	
	/**
	 * 添加教师信息
	 * @author 魏子敬
	 * @param teacher 教师类
	 * @return 教师信息是否添加成功
	 */
	public boolean admin_addTeacher(Teacher teacher);  //添加教师
	
	/**
	 * 查询所有课程的信息
	 * @author 黄泽彬
	 * @return 获取课程信息
	 */
	public List<Course> admin_allCourseInfo();  //查询所有课程信息
	
	/**
	 * 删除指定课程信息
	 * @author 黄泽彬
	 * @param couId 课程ID
	 * @return 删除是否成功
	 */
	public boolean admin_deleteThisCourse(Integer couId);  //删除某一门课程
	
	/**
	 * 添加课程前确认该课程是否存在
	 * @author 黄泽彬
	 * @param couName 课程名
	 * @return 是否已存在该课程
	 */
	public boolean admin_existingThisCourse(String couName);  //添加课程前查看是否存在该门课程
	
	/**
	 * 添加课程
	 * @author 杨希凯
	 * @param couName 课程名
	 * @param couHour 课程学时
	 * @param couCredit 课程学分
	 * @return 课程是否添加成功
	 */
	public boolean admin_addCourse(String couName, int couHour, int couCredit);  //添加课程
	
	/**
	 * 查询所有开课班信息
	 * @author 黄泽彬
	 * @return 所有开课班的信息
	 */
	public List<StartClass> admin_allStartClassInfo();  //查询所有的开课班信息
	
	/**
	 * 删除指定开课班
	 * @author 黄泽彬
	 * @param id 开课班ID
	 * @return 删除是否成功
	 */
	public boolean admin_deleteThisStartClassAction(Integer id);  //删除某一门开课班
	
	/**
	 * 根据ID查找课程
	 * @author 黄泽彬
	 * @param couId 课程ID
	 * @return 返回是否查到该课程
	 */
	public boolean admin_findCourseById(Integer couId);  //根据课程id查找
	
	/**
	 * 根据教师工号查找教师的ID
	 * @author 黄泽彬
	 * @param teaNo 教师工号
	 * @return 返回教师的ID
	 */
	public Integer admin_findTeacherByNo(String teaNo);  //根据工号查找教师
	
	/**
	 * 添加开课班
	 * @author 杨希凯
	 * @param couId 课程ID
	 * @param teaId 教师ID
	 * @param claLocation 上课地点
	 * @param claTime 上课时间
	 * @param addNum 班级容量
	 * @return 开课班是否添加成功
	 */
	public boolean admin_addStartClass(Integer couId, Integer teaId, String claLocation, String claTime, Integer addNum);  //添加开课班
	
}
