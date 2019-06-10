package service;

import java.util.List;

import domain.Score;

public interface StudentService {
	
	/**
	 * ��ȡѧ���ĸ�����Ϣ
	 * @author ����
	 * @return ѧ���ĸ�����Ϣ
	 */
	public List<Object[]> studentInfo();  //student��ʾѧ��������Ϣ
	
	/**
	 * չʾ���еĿ��ΰ࣬�ṩ��ѧ��ѡ�ε���Ϣ
	 * @author ����
	 * @return ���п��ΰ����ϸ��Ϣ
	 */
	public List<Object[]> queryAllStartClass();  //��ʾ���п��ΰ���ѡ��
	
	/**
	 * undo ...
	 */
	public List<Object[]> queryAllStartClassByPage(int pageNo,int pageSize);  //ѡ����Ϣ��ҳ
	
	/**
	 * ѧ��ѡ��һ�ſ��ΰ�
	 * @author ����
	 * @param stuNo ѧ��
	 * @param startClassId ���ΰ�ID
	 * @return ѡ���Ƿ�ɹ�
	 */
	public boolean chooseClass(String stuNo, Integer startClassId);  //ѧ�����ѡ��ĳһ�ſ��ΰ�
	
	/**
	 * ѧ���鿴�Լ���ѡ����Ϣ�Լ�ѡ�γɼ�
	 * @author ����
	 * @param stuNo ѧ��
	 * @return ѧ���Լ���ѡ����Ϣ���ɼ�
	 */
	public List<Score> student_scoreInfo(String stuNo);  //ѧ��������ѡ����Ϣ���ɼ�
}
