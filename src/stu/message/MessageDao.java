package stu.message;

import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.springframework.transaction.annotation.Transactional;

import common.util.UtilDao;

/**
 * @���ŵ���ݿ������
 * @author wt
 * @date 2010-07-27
 * */
public class MessageDao extends UtilDao<Message>{
	
	//������������˵���ߣ��ܼ�¼��
	public long verifyedCount(){
		String hql="select count(*) from "+entityClass.getSimpleName()+" where flag='1'";
		long allCount=(Long)sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
		return allCount;
	}
	
	public List<Message> queryList(String flag,int pageNow,int maxCount){
		String hql="from Message mes where mes.flag=? order by mes.megId desc";
		query=sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, flag);
		query.setFirstResult((pageNow-1)*maxCount);
		query.setMaxResults(maxCount);		//��෵�ض�����
		return query.list();
	}
	
	public void flagUpdate(Message mes){
		String hql="update Message mes set mes.flag='1' where mes.megId="+mes.getMegId();
		query=sessionFactory.getCurrentSession().createQuery(hql);
		query.executeUpdate();
	}
}
