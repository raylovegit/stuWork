package stu.college;

import java.util.ArrayList;
import java.util.List;

import stu.news.News;
import stu.news.NewsDao;

import common.util.UtilDao;

public class CollegeDao  extends UtilDao<College>{
	
	private NewsDao newsDao;
	private News news;
	
	public void updateFlag(String flag,Object []ids){
		String hql="update College c set c.colFlag="+flag+" where "+getId(entityClass)+" in "+converter(ids);
		query=sessionFactory.getCurrentSession().createQuery(hql);
		query.executeUpdate();
	}

	public List<College> listByUser(String userClass, int pageNow,int maxCount,String keyword){
		String hql="from College c where c.colType='"+userClass+"'";
		if(!"".equals(keyword)&&keyword!=null){
			hql += " and c.colTitle like '%"+keyword+"%'";
		}
		hql+=" order by c.colId desc";
		query=sessionFactory.getCurrentSession().createQuery(hql);
		query.setFirstResult((pageNow-1)*maxCount);
		query.setMaxResults(maxCount);		//��෵�ض�����
		return query.list();
	}
	
	public long allCount(String userClass,String keyword){
		String hql="select count(*) from College c where c.colType='"+userClass+"'";
		if(!"".equals(keyword)&&keyword!=null){
			hql += " and c.colTitle like '%"+keyword+"%'";
		}
		long allCount=(Long)sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
		return allCount;
	}
	//按flag查找列表
	public List<College> submitedList(String flag, int pageNow,int maxCount,String keyword){
		String hql="from College c where c.colFlag='"+flag+"'";
		if(!"".equals(keyword)&&keyword!=null){
			hql += " and c.colTitle like '%"+keyword+"%'";
		}
		hql+= " order by c.colId desc";
		query=sessionFactory.getCurrentSession().createQuery(hql);
		query.setFirstResult((pageNow-1)*maxCount);
		query.setMaxResults(maxCount);		//��෵�ض�����
		return query.list();
	}
	
	//所有已提交新闻的总记录数
	public long allCountByFlag(String keyword){
		String hql="select count(*) from College c where c.colFlag='1'";
		if(!"".equals(keyword)&&keyword!=null){
			hql += " and c.colTitle like '%"+keyword+"%'";
		}
		long allCount=(Long)sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
		return allCount;
	}
	
	//批量添加,传入college的ids,然后把对应的college数据放入news数据库中
	public void putIntoNews(Object []ids){
		String hql="from "+entityClass.getSimpleName()+" where "+getId(entityClass)+" in "+converter(ids);
		List<College> temp=new ArrayList<College>();
		temp=sessionFactory.getCurrentSession().createQuery(hql).list();
		System.out.println("temp---"+temp.size());
		for(College c:temp){
			news=new News();
			news.setNewsAuthor(c.getColAuthor());
			news.setNewsContent(c.getColContent());
			news.setNewsDate(c.getColDate());
			news.setNewsFlag("1");
			news.setNewsType("9");
			news.setNewsTitle(c.getColTitle());
			news.setNewsHit(0);
			news.setNewsImage(c.getColImage());
			news.setNewsSource(c.getColSource());
			newsDao.create(news);
		}
	}

	public NewsDao getNewsDao() {
		return newsDao;
	}

	public void setNewsDao(NewsDao newsDao) {
		this.newsDao = newsDao;
	}	
}
