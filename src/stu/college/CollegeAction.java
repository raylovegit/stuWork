package stu.college;

import java.util.List;

import stu.user.User;

import common.util.PageAction;

public class CollegeAction extends PageAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -572223546875878766L;

	private College college;
	private CollegeDao colDao;
	private List<College> clist;
	private Long[] ids;
	private String flag;
	private String userClass;
	private String keyword="";
	
	//院系提交，改变flag的状态，返回院系list
	public String flagUpdate(){
		colDao.updateFlag(flag,ids);
		return "flagupdate";
	}
	
	//学工提交，改变flag的状态，返回学工list
	public String flagUpdate2(){
		colDao.updateFlag(flag,ids);
		if("2".equals(flag)){
			colDao.putIntoNews(ids);
		}
		return "flagupdate2";
	}
	
	public String preCreate(){
		
		return "toCreate";
	}
	
	public String create(){
		colDao.create(college);
		
		return "createok";
	}
	
	public String delete(){
		
		
		return "delete";
	}
	
	//从college表中提出所有状态为已提交的新闻，colFlag=1
	public String verifyList(){
		allCount = colDao.allCountByFlag(keyword);
		allPages();
		clist = colDao.submitedList("1", pageNow, maxCount, keyword);
		return "verifylist";
	}
	
	//所有college的新闻
	public String list(){
		userClass = ((User)session.get("userLogin")).getUserClass();
		allCount = colDao.allCount(userClass,keyword);
		allPages();
		clist = colDao.listByUser(userClass, pageNow, maxCount,keyword);
		return "list";
	}
	
	public String preUpdate(){
		college = colDao.read(ids[0]);
		return "update";
	}
	
	public String update(){
		colDao.update(college);
		return "updateok";
	}
	
	public String preRead(){
		college = colDao.read(ids[0]);
		return "read";
	}
	public String verifyRead(){
		college = colDao.read(ids[0]);
		return "verifyread";
	}
	
	public String read(){
		return list();
	}
	
	public String verifyListRead(){
		return verifyList();
	}
	
	public String bentchDelete(){
		colDao.bentchDelete(ids);
		return "bentchDelete";
	}
	
	
	public College getCollege() {
		return college;
	}
	public void setCollege(College college) {
		this.college = college;
	}
	public CollegeDao getColDao() {
		return colDao;
	}
	public void setColDao(CollegeDao colDao) {
		this.colDao = colDao;
	}
	public List<College> getClist() {
		return clist;
	}
	public void setClist(List<College> clist) {
		this.clist = clist;
	}
	public Long[] getIds() {
		return ids;
	}
	public void setIds(Long[] ids) {
		this.ids = ids;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getUserClass() {
		return userClass;
	}

	public void setUserClass(String userClass) {
		this.userClass = userClass;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	
	
}
