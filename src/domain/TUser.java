package domain;

/**
 * TUser entity. @author MyEclipse Persistence Tools
 */

public class TUser implements java.io.Serializable {

	// Fields

	private Integer id;
	private String loginName;
	private String loginPassword;

	// Constructors

	/** default constructor */
	public TUser() {
	}

	/** full constructor */
	public TUser(String loginName, String loginPassword) {
		this.loginName = loginName;
		this.loginPassword = loginPassword;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLoginName() {
		return this.loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getLoginPassword() {
		return this.loginPassword;
	}

	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}

}