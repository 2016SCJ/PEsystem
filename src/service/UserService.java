package service;

public interface UserService {  //User接口
	
	/**
	 * 对用户输入的账号、密码进行验证
	 * @author 黄泽彬
	 * @param loginName 用户名
	 * @param loginPassword 密码
	 * @param type 用户类型
	 * @return 用户名、密码是否正确
	 */
	public boolean checkLogin(String loginName, String loginPassword, String type);  //用户登陆验证
	
	/**
	 * 学生、教师 更新手机号码
	 * @author 朱润发
	 * @param userNo 用户账号
	 * @param newPhone 新的手机号码
	 * @param type 用户类型，1为学生 2位教师
	 * @return 手机号码跟新是否成功
	 */
	public boolean changePhone(String userNo, String newPhone, String type);  //sutdent or teacher更新电话号码
	
	/**
	 * 学生、教师 更改密码前对旧密码进行验证
	 * @author 朱润发
	 * @param userNo 用户账号
	 * @param oldPwd 旧密码
	 * @param type 用户类型
	 * @return 旧密码验证是否通过
	 */
	public boolean checkPwd(String userNo, String oldPwd, String type);  //sutdent or teacher修改密码前的验证
	
	/**
	 * 学生、教师 更改密码
	 * @author 朱润发
	 * @param userNo 用户账号
	 * @param newPwd 新密码
	 * @param type 用户类型
	 * @return 更改密码是否成功
	 */
	public boolean changePwd(String userNo, String newPwd, String type);  //sutdent or teacher更新登陆密码
}
