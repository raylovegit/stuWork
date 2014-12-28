package stu.news;

import java.util.List;

import common.util.UtilDao;

/**
 * @���ŵ���ݿ������
 * @author wt
 * @date 2010-07-27
 * */
public class NewsDao extends UtilDao<News>{

	//按类别type和标志flag查询新闻
	public List<News> listByTF(String type,String flag,String keyword, int pageNow,int maxCount){
		String hql="from News n where n.newsType='"+type+"' and n.newsFlag='"+flag+"'";
		if(!"".equals(keyword)&&keyword!=null){
			hql += " and n.newsTitle like '%"+keyword+"%'";
		}
		hql += " order by n.newsId desc";
		query=sessionFactory.getCurrentSession().createQuery(hql);
		query.setFirstResult((pageNow-1)*maxCount);
		query.setMaxResults(maxCount);		
		return query.list();
	}
	
	//按type和flag查询新闻总记录数
	public long allCount(String type,String flag,String keyword){
		String hql="select count(*) from News n where n.newsType='"+type+"' and n.newsFlag='"+flag+"'";
		if(!"".equals(keyword)&&keyword!=null){
			hql += " and n.newsTitle like '%"+keyword+"%'";
		}
		long allCount=(Long)sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
		return allCount;
	}
	
	//查询出所有的新闻，按newsType分类
	public List<News> listByType(String type,int maxList){
		String hql="from News n where n.newsType=? order by n.newsId desc";
		query=sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, type);
		query.setFirstResult(0);
		query.setMaxResults(maxList);	
		return query.list();
	}
	
	public List<News> queryByKeyword(String type, String keyword){
		String hql = "from News n where n.newsType";
		
		return query.list();
	}
	
	//新闻的上一篇
	public News pre(Long newsId,String type,String flag){
		String hql="from News n where n.newsId<? and n.newsType=? and n.newsFlag=? order by n.newsId desc";
		query=sessionFactory.getCurrentSession().createQuery(hql);
		query.setLong(0, newsId);
		query.setString(1, type);
		query.setString(2, flag);
		query.setFirstResult(0);
		query.setMaxResults(1);
		return (News)query.uniqueResult();
	}
	
	//新闻的下一篇
	public News next(Long newsId,String type,String flag){
		String hql="from News n where n.newsId>? and n.newsType=? and n.newsFlag=?";
		query=sessionFactory.getCurrentSession().createQuery(hql);
		query.setLong(0, newsId);
		query.setString(1, type);
		query.setString(2, flag);
		query.setFirstResult(0);
		query.setMaxResults(1);
		return (News)query.uniqueResult();
	}
}
