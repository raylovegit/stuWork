package stu.login;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import stu.message.Message;
import stu.message.MessageDao;
import stu.news.Navigation;
import stu.news.News;
import stu.news.NewsDao;

import common.util.PageAction;

public class IndexAction extends PageAction{
	
	private News news;
	private NewsDao newsDao;
	private List<News> nlist=new ArrayList<News>();
	private List<List<News>> list = new ArrayList<List<News>>();
	private String type;
	private String flag;
	private String navigator;
	private String mark;
	private String keyword;
	private Long id;
	private Message message;
	private MessageDao messageDao;
	private List<Message> mlist=new ArrayList<Message>();
	private OnlineDao onlineDao;
	private Long count;	//网站总访问量
	private String rand1=null;//验证码
	
	//首页操作新闻的方法
	public  String  selectAll(){
		//取出1到9的9种状态的新闻，显示在前台
		for(int i=1;i<10;i++){
			//首页右侧的导航，只显示4条
			if(i>4&&i<8){
				nlist=newsDao.listByType(""+i, 4);
				list.add(nlist);
			}else{
				nlist=newsDao.listByType(""+i, 8);
				list.add(nlist);
			}
		}
		try {
			count=onlineDao.getAll();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "indexList";
	}
	
	public String list(){
			allCount=newsDao.allCount(type,flag,keyword);
			allPages();
			nlist=newsDao.listByTF(type, flag, keyword, pageNow, maxCount);
			Navigation navigation = new Navigation();
			navigator = navigation.getNavigator(type, flag);
			return "list";
	}
	
	public String read(){
		news=newsDao.read(id);
		news.setNewsHit(news.getNewsHit()+1);
		nlist.add(news);
		//读出上一条下一条新闻放入list中
		news=newsDao.pre(id, type, flag);
		nlist.add(news);
		news=newsDao.next(id, type, flag);
		nlist.add(news);
		Navigation navigation = new Navigation();
		navigator = navigation.getNavigator(type, flag);
		mark = navigation.mark(type);
		return "read";
	}
	
	
	//首页操作留言版的方法
	public String megList(){
		allCount=messageDao.verifyedCount();
		allPages();
		mlist=messageDao.queryList("1", pageNow, maxCount);
		return "meglist";
	}
	
	public String createMeg(){
		System.out.println("rand1---"+rand1+session.get("rand"));
		if((rand1!=null)&&(session.get("rand").equals(rand1))){
				Date date=new Date();
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
				message.setMegTime(sdf.format(date));
				message.setFlag("0");
				messageDao.create(message);
				return "createmeg";
		}
		else
			return megList();
		
	}
	
	
	public News getNews() {
		return news;
	}
	public void setNews(News news) {
		this.news = news;
	}
	
	public NewsDao getNewsDao() {
		return newsDao;
	}

	public void setNewsDao(NewsDao newsDao) {
		this.newsDao = newsDao;
	}


	public List<News> getNlist() {
		return nlist;
	}
	public void setNlist(List<News> nlist) {
		this.nlist = nlist;
	}

	public List<List<News>> getList() {
		return list;
	}

	public void setList(List<List<News>> list) {
		this.list = list;
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

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Message getMessage() {
		return message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}

	public MessageDao getMessageDao() {
		return messageDao;
	}

	public void setMessageDao(MessageDao messageDao) {
		this.messageDao = messageDao;
	}

	public List<Message> getMlist() {
		return mlist;
	}

	public void setMlist(List<Message> mlist) {
		this.mlist = mlist;
	}

	public OnlineDao getOnlineDao() {
		return onlineDao;
	}

	public void setOnlineDao(OnlineDao onlineDao) {
		this.onlineDao = onlineDao;
	}

	public Long getCount() {
		return count;
	}

	public void setCount(Long count) {
		this.count = count;
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

	/**
	 * @return the navigator
	 */
	public String getNavigator() {
		return navigator;
	}

	/**
	 * @param navigator the navigator to set
	 */
	public void setNavigator(String navigator) {
		this.navigator = navigator;
	}

	public String getMark() {
		return mark;
	}

	public void setMark(String mark) {
		this.mark = mark;
	}

	public String getRand1() {
		return rand1;
	}

	public void setRand1(String rand1) {
		this.rand1 = rand1;
	}
	
	
}
