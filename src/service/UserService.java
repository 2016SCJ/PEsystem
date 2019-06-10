package service;

public interface UserService {  //User�ӿ�
	
	/**
	 * ���û�������˺š����������֤
	 * @author �����
	 * @param loginName �û���
	 * @param loginPassword ����
	 * @param type �û�����
	 * @return �û����������Ƿ���ȷ
	 */
	public boolean checkLogin(String loginName, String loginPassword, String type);  //�û���½��֤
	
	/**
	 * ѧ������ʦ �����ֻ�����
	 * @author ����
	 * @param userNo �û��˺�
	 * @param newPhone �µ��ֻ�����
	 * @param type �û����ͣ�1Ϊѧ�� 2λ��ʦ
	 * @return �ֻ���������Ƿ�ɹ�
	 */
	public boolean changePhone(String userNo, String newPhone, String type);  //sutdent or teacher���µ绰����
	
	/**
	 * ѧ������ʦ ��������ǰ�Ծ����������֤
	 * @author ����
	 * @param userNo �û��˺�
	 * @param oldPwd ������
	 * @param type �û�����
	 * @return ��������֤�Ƿ�ͨ��
	 */
	public boolean checkPwd(String userNo, String oldPwd, String type);  //sutdent or teacher�޸�����ǰ����֤
	
	/**
	 * ѧ������ʦ ��������
	 * @author ����
	 * @param userNo �û��˺�
	 * @param newPwd ������
	 * @param type �û�����
	 * @return ���������Ƿ�ɹ�
	 */
	public boolean changePwd(String userNo, String newPwd, String type);  //sutdent or teacher���µ�½����
}
