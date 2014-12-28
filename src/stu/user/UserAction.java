package stu.user;

import java.util.List;

import common.util.PageAction;

public class UserAction extends PageAction{

	/**
	 * @用户业务逻辑类
	 * @author wt
	 * @date 2010-07-27
	 */
	private static final long serialVersionUID = 8456844136309406451L;
	
	private UserDao userDao;
	private User user;
	private List<User> ulist;
	private Long ids[];
	
	public String list(){
		allCount=userDao.allCount();
		allPages();
		ulist=userDao.queryList(pageNow, maxCount);
		return "list";
	}
	
	public String preCreate(){
		return "create";
	}

	public String create(){
		userDao.create(user);
		return "createok";
	}
	
	public String delete(){
		userDao.delete(user);
		return "deleteok";
	}
	
	public String bentchDelete(){
		userDao.bentchDelete(ids);
		return "bentchDelete";
	}
	
	public String preUpdate(){
		user=userDao.read(ids[0]);
		return "update";
	}
	public String update(){
		userDao.update(user);
		return "updateok";
	}
	
	public String read(){
		user=userDao.read(user.getUserId());
		return "readok";
	}

	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<User> getUlist() {
		return ulist;
	}
	public void setUlist(List<User> ulist) {
		this.ulist = ulist;
	}
	public Long[] getIds() {
		return ids;
	}
	public void setIds(Long[] ids) {
		this.ids = ids;
	}
	
}
