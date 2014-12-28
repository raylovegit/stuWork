package stu.user;

/**
 * News entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 8100307895978613178L;
	private Long userId;	//用户ID
	private String userType;	//	用户类型
	private String userClass;	//用户系别
	private String userName;	//用户名
	private String userPassword;	//密码
	

	// Constructors

	/** default constructor */
	public User() {
	}


	public Long getUserId() {
		return userId;
	}


	public void setUserId(Long userId) {
		this.userId = userId;
	}


	public String getUserType() {
		return userType;
	}


	public void setUserType(String userType) {
		this.userType = userType;
	}


	public String getUserClass() {
		return userClass;
	}


	public void setUserClass(String userClass) {
		this.userClass = userClass;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getUserPassword() {
		return userPassword;
	}


	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

}