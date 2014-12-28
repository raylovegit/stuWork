package common.util;

import java.io.Serializable;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.metadata.ClassMetadata;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

@Transactional
public class UtilDao<E> {
    @Autowired
    protected SessionFactory sessionFactory;
	protected Class<E> entityClass;
	protected Query query;
	public UtilDao(){
    	//ͨ���ʼ���ķ�ʽ��ʼ��entityClass
    	entityClass = GenericsUtils.getSuperClassGenricType(getClass());
	}
	

	/**
	 * e�Ǵ���Ķ���
	 * ��ѯ
	 */
	public void create(E e){
		 sessionFactory.getCurrentSession().save(e);
	}
	/**
	 * @param e	����Ķ����ֵ
	 * @param id
	 * @return û���ҵ��Ļ�����return null
	 */
	@Transactional(readOnly=true)
	public E read(E e ,Serializable id){
		return (E)sessionFactory.getCurrentSession().get(e.getClass(), id);
	}
	
	/**
	 * @param id
	 * @return ��id��ѯ
	 */
	@Transactional(readOnly=true)
	public E read(Serializable id){
		return (E)sessionFactory.getCurrentSession().get(entityClass, id);
	}
	
	public void update(E e){
		sessionFactory.getCurrentSession().update(e);
	}
	
	/**
	 * @param e
	 * @param id
	 * �ȶs�4һ�������ɾ��������
	 */
	public void delete(E e,Serializable id){
		E temp=read(e,id);
		sessionFactory.getCurrentSession().delete(temp);
	}
	public void delete(Serializable id){
		E temp=read(id);
		sessionFactory.getCurrentSession().delete(temp);
	}
	public void delete(E e){
		sessionFactory.getCurrentSession().delete(e);
	}
	public void update(String hql){
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
	}
	//��jɾ��
	public void bentchDelete(Object []ids){
		String hql="delete from "+entityClass.getSimpleName()+" where "+getId(entityClass)+" in "+converter(ids);
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
	}
	//��ѯ����
	public List<E> query(){
		String hql="from "+entityClass.getSimpleName();
		query=sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}
	//��ҳ��
	public long allCount(){
		String hql="select count(*) from "+entityClass.getSimpleName();
		long allCount=(Long)sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
		return allCount;
	}
	//��÷�ҳ���list
	public List<E> queryList(int pageNow,int maxCount){
		String hql="from "+entityClass.getSimpleName()+" order by "+getId(entityClass)+" desc";
		query=sessionFactory.getCurrentSession().createQuery(hql);
		query.setFirstResult((pageNow-1)*maxCount);
		query.setMaxResults(maxCount);		//��෵�ض�����
		return query.list();
	}
	
	public String converter(Object []ids){
		String temp="(";
		if(ids==null||ids.length==0){
			return "('')";
		}
		for(int i=0;i<ids.length-1;i++){
			temp+="'"+ids[i]+"',";
		}
		temp+="'"+ids[ids.length-1]+"')";
		return temp;
	}
    public String getId(Class<E> clazz) {
    	Assert.notNull(clazz);
    	ClassMetadata meta = sessionFactory.getClassMetadata(clazz);
    	String idName = meta.getIdentifierPropertyName();
    	return idName;
    }
	
}
