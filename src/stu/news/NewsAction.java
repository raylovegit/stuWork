package stu.news;

import java.util.List;

import common.util.PageAction;

public class NewsAction extends PageAction{

	/**
	 * 
	 * @author wt
	 * @date 2010-07-27
	 */
	private static final long serialVersionUID = 8456844136309406451L;
	
	private News news;
	private NewsDao newsDao;
	private List<News> nlist;
	private Long[] ids;
	private String type = "";
	private String flag = "";
	private String navigator = "";
	private String keyword = "";
	
	public String preIndex(){
		
		return "index";
	}
	
	public String list(){
		allCount=newsDao.allCount(type, flag, keyword);
		allPages();
		nlist=newsDao.listByTF(type, flag, keyword, pageNow, maxCount);
		Navigation navigation = new Navigation();
		navigator = navigation.getNavigator(type, flag);
		
		return "list";
	}
	
	public String preCreate(){
		Navigation navigation = new Navigation();
		navigator = navigation.getNavigator(type, flag);
		
		return "create";
	}

	public String create(){
		news.setNewsHit(0);
		newsDao.create(news);
		
		return list();
	}
	
	public String delete(){
		newsDao.delete(news, news.getNewsId());
		return "deleteok";
	}
	
	public String bentchDelete(){
		newsDao.bentchDelete(ids);
		
		return list();
	}
	
	public String preUpdate(){
		news=newsDao.read(ids[0]);
		Navigation navigation = new Navigation();
		navigator = navigation.getNavigator(news.getNewsType(), news.getNewsFlag());
		return "update";
	}
	public String update(){
		newsDao.update(news);
		Navigation navigation = new Navigation();
		navigator = navigation.getNavigator(news.getNewsType(), news.getNewsFlag());
		return "updateok";
	}
	
	public String preRead(){
		news=newsDao.read(ids[0]);
		Navigation navigation = new Navigation();
		navigator = navigation.getNavigator(news.getNewsType(), news.getNewsFlag());
		return "read";
	}
	
	public String read(){
		return list();
	}
	
	public String query(){
		
		
		return "query";
	}

	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	public List<News> getNlist() {
		return nlist;
	}

	public void setNlist(List<News> nlist) {
		this.nlist = nlist;
	}

	public NewsDao getNewsDao() {
		return newsDao;
	}

	public void setNewsDao(NewsDao newsDao) {
		this.newsDao = newsDao;
	}

	public Long[] getIds() {
		return ids;
	}

	public void setIds(Long[] ids) {
		this.ids = ids;
	}

	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getNavigator() {
		return navigator;
	}

	public void setNavigator(String navigator) {
		this.navigator = navigator;
	}

	/**
	 * @return the keyword
	 */
	public String getKeyword() {
		return keyword;
	}

	/**
	 * @param keyword the keyword to set
	 */
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	
	
}
