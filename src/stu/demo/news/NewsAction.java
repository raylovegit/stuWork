package stu.demo.news;

import java.util.List;

import common.util.PageAction;

public class NewsAction extends PageAction {
	private News news;
	private NewsDao newsDao;
	private List<News> nlist;
	private Long ids[];
	
	public String list(){
		allCount=newsDao.allCount();
		allPages();
		nlist=newsDao.queryList(pageNow, maxCount);
		return "list";
	}
	
	public String preCreate(){
		return "create";
	}

	public String create(){
		newsDao.create(news);
		return "createok";
	}
	
	public String delete(){
		newsDao.delete(news, news.getId());
		return "deleteok";
	}
	
	public String bentchDelete(){
		newsDao.bentchDelete(ids);
		return "bentchDelete";
	}
	
	public String preUpdate(){
		news=newsDao.read(ids[0]);
		return "update";
	}
	public String update(){
		newsDao.update(news);
		return "updateok";
	}
	
	public String read(){
		news=newsDao.read(news.getId());
		return "readok";
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
}
