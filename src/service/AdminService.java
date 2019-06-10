package service;

import java.util.List;

import domain.Course;
import domain.Profession;
import domain.StartClass;
import domain.Student;
import domain.Teacher;

public interface AdminService {
	
	/**
	 * ��ʾ����ѧ���ĸ�����Ϣ
	 * @author �����
	 * @return ����ѧ������Ϣ
	 */
	public List<Student> allStuInfo();  //admin ��ʾ����ѧ������Ϣ
	
	/**
	 * ɾ��ָ����ѧ����Ϣ
	 * @param stuId ѧ��ID
	 * @return ɾ���Ƿ�ɹ�
	 */
	public boolean admin_deleteThisStu(Integer stuId);  //ɾ��ĳһ��ѧ��
	
	/**
	 * ���ѧ��ǰ�������ݿ��ȡ����רҵ����Ϊ������ѡ��
	 * @author κ�Ӿ�
	 * @return ����רҵ��Ϣ
	 */
	public List<Profession> admin_addStuInit();  //���ѧ��ǰ�����ݳ�ʼ��
	
	/**
	 * ���ѧ����Ϣ
	 * @author κ�Ӿ�
	 * @param student ѧ����
	 * @param stuYear ѧ��ע���ѧ��
	 * @return ѧ����Ϣ�Ƿ���ӳɹ�
	 */
	public boolean admin_addStu(Student student, String stuYear);  //���һ��ѧ��
	
	
	public Integer admin_findProfession(String findGoal);  //�����Ƿ��и�רҵ
	public List<Teacher> admin_allTeacherInfo();  //��ѯ���н�ʦ��Ϣ
	
	/**
	 * ɾ��ָ����ʦ����Ϣ
	 * @author �����
	 * @param teaId ��ʦID
	 * @return ɾ���Ƿ�ɹ�
	 */
	public boolean admin_deleteThisTea(Integer teaId);  //ɾ��ָ����ʦ
	
	/**
	 * ��ӽ�ʦ��Ϣ
	 * @author κ�Ӿ�
	 * @param teacher ��ʦ��
	 * @return ��ʦ��Ϣ�Ƿ���ӳɹ�
	 */
	public boolean admin_addTeacher(Teacher teacher);  //��ӽ�ʦ
	
	/**
	 * ��ѯ���пγ̵���Ϣ
	 * @author �����
	 * @return ��ȡ�γ���Ϣ
	 */
	public List<Course> admin_allCourseInfo();  //��ѯ���пγ���Ϣ
	
	/**
	 * ɾ��ָ���γ���Ϣ
	 * @author �����
	 * @param couId �γ�ID
	 * @return ɾ���Ƿ�ɹ�
	 */
	public boolean admin_deleteThisCourse(Integer couId);  //ɾ��ĳһ�ſγ�
	
	/**
	 * ��ӿγ�ǰȷ�ϸÿγ��Ƿ����
	 * @author �����
	 * @param couName �γ���
	 * @return �Ƿ��Ѵ��ڸÿγ�
	 */
	public boolean admin_existingThisCourse(String couName);  //��ӿγ�ǰ�鿴�Ƿ���ڸ��ſγ�
	
	/**
	 * ��ӿγ�
	 * @author ��ϣ��
	 * @param couName �γ���
	 * @param couHour �γ�ѧʱ
	 * @param couCredit �γ�ѧ��
	 * @return �γ��Ƿ���ӳɹ�
	 */
	public boolean admin_addCourse(String couName, int couHour, int couCredit);  //��ӿγ�
	
	/**
	 * ��ѯ���п��ΰ���Ϣ
	 * @author �����
	 * @return ���п��ΰ����Ϣ
	 */
	public List<StartClass> admin_allStartClassInfo();  //��ѯ���еĿ��ΰ���Ϣ
	
	/**
	 * ɾ��ָ�����ΰ�
	 * @author �����
	 * @param id ���ΰ�ID
	 * @return ɾ���Ƿ�ɹ�
	 */
	public boolean admin_deleteThisStartClassAction(Integer id);  //ɾ��ĳһ�ſ��ΰ�
	
	/**
	 * ����ID���ҿγ�
	 * @author �����
	 * @param couId �γ�ID
	 * @return �����Ƿ�鵽�ÿγ�
	 */
	public boolean admin_findCourseById(Integer couId);  //���ݿγ�id����
	
	/**
	 * ���ݽ�ʦ���Ų��ҽ�ʦ��ID
	 * @author �����
	 * @param teaNo ��ʦ����
	 * @return ���ؽ�ʦ��ID
	 */
	public Integer admin_findTeacherByNo(String teaNo);  //���ݹ��Ų��ҽ�ʦ
	
	/**
	 * ��ӿ��ΰ�
	 * @author ��ϣ��
	 * @param couId �γ�ID
	 * @param teaId ��ʦID
	 * @param claLocation �Ͽεص�
	 * @param claTime �Ͽ�ʱ��
	 * @param addNum �༶����
	 * @return ���ΰ��Ƿ���ӳɹ�
	 */
	public boolean admin_addStartClass(Integer couId, Integer teaId, String claLocation, String claTime, Integer addNum);  //��ӿ��ΰ�
	
}
