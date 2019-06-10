package service;

import java.util.List;

import domain.Score;
import domain.StartClass;
import domain.Teacher;

public interface TeacherService {
	
	/**
	 * ��ѯ��ʦ�ĸ�����Ϣ
	 * @author ��־��
	 * @param teaNo ��ʦ�˺�
	 * @return ��ʦ�ĸ�����Ϣ
	 */
	public List<Teacher> teacher_info(String teaNo);  //��ʦ������Ϣ
	
	/**
	 * ��ʦ�鿴�Լ����е��ڿΰ༶
	 * @author ��־��
	 * @param teaNo ��ʦ�˻�
	 * @return �ڿΰ༶��Ϣ
	 */
	public List<StartClass> allClassInfo(String teaNo);  //��ʦ��½�鿴�ڿΰ༶��Ϣ
	
	/**
	 * ��ʦ�鿴ָ�����ΰ��������ѧ����Ϣ
	 * @author ��־��
	 * @param classId ���ΰ�ID
	 * @return ĳһָ�����ΰ�ID�е�����ѧ����Ϣ
	 */
	public List<Score> classDetail(Integer classId);  //�鿴ĳ���༶�������ѧ��
	
	/**
	 * �鿴���ΰ���ָ��ѧ���Ŀγ̳ɼ���Ϣ
	 * @author ��־��
	 * @param stuNo ѧ��ѧ��
	 * @return ��ѧ���ڸÿ��ΰ�ĳɼ���Ϣ
	 */
	public Score thisStudent(String stuNo);  //�ҵ�ָ��ѧ���ĳɼ�
	
	/**
	 * ��ĳһѧ�����гɼ�¼��
	 * @author ��־��
	 * @param stuNo ѧ��
	 * @param startClassNo ���ΰ�ID
	 * @param score1 �ɼ�1
	 * @param score2 �ɼ�2
	 * @param score3 �ɼ�3
	 * @return �ɼ��Ƿ���³ɹ�
	 */
	public boolean refreshScore(String stuNo, Integer startClassNo, Integer score1, Integer score2, Integer score3);  //��ָ��ѧ����ӳɼ�
}
