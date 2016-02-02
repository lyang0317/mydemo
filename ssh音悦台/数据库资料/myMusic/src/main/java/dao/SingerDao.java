package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.imp.SingerDaoImp;
import entity.Mv;
import entity.Singer;
@Repository
public class SingerDao implements SingerDaoImp {
	@Autowired
	private SessionFactory sessionFactory;
	int pageSize = 3;
//增加歌手
	public void saveSinger(Singer singer) {
		Session session = sessionFactory.getCurrentSession();
		session.save(singer);
	}
	//统计歌手总记录数
	public long count(String name) {		
		Session session = sessionFactory.getCurrentSession();
		String hql = "select count(*) from Singer where name like ?";
		Query q = session.createQuery(hql);
		q.setParameter(0, "%"+name+"%");
		long totalRecord = (Long)q.uniqueResult();
		long totalPage = (totalRecord+pageSize-1)/pageSize;
		return totalPage;
	}
	//分页查询歌手
	public List<Singer> querySingerByPage(int begin,int pageSize) {
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Singer");
		q.setFirstResult(begin);
		q.setMaxResults(pageSize);
        List<Singer> singers = q.list();
		return singers;
	}
	//查询所有歌手
	public List<Singer> allSinger() {
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Singer");
		List<Singer> singers = q.list();
		return singers;
	}
	//删除歌手
	public void deleteSinger(int singerId) {
		Session session = sessionFactory.getCurrentSession();
        session.delete(singerId);		
	}
	//根据姓名查询歌手
	public List<Singer> querySingerByName(String name) {
		Session session=sessionFactory.getCurrentSession();
		String hql=" from Singer where name like ?";
		Query query=session.createQuery(hql);
		query.setParameter(0, "%"+name+"%");
		List<Singer> list=query.list();
		return list;
	}
	//通过地区查询歌手
	public List<Singer> querySingerByArea(int page,String area){
		Session session=sessionFactory.getCurrentSession();
		String hql=" from Singer where area like ?";
		Query query=session.createQuery(hql);
		query.setParameter(0, "%"+area+"%");
		List<Singer> list=query.list();
		return list;
	}
	//通过歌手ID查询歌手 
	public Singer querySingerById(int id) {
		Session session=sessionFactory.getCurrentSession();
		return (Singer) session.get(Singer.class, id);
	}
	//根据姓名分页查询歌手
	public List<Singer> querySingerByNameAndPage(int nowpage,String name) {
		
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Singer where name like ?";
		Query q = session.createQuery(hql);
		q.setParameter(0, "%"+name+"%");
		q.setFirstResult((nowpage-1)*pageSize);
		q.setMaxResults(pageSize);
		List<Singer> singers = q.list();
		return singers;
	}
	public void upDateSinger(Singer singer) {
		Session session = sessionFactory.getCurrentSession();
		session.update(singer);
        
	}
	public List<Singer> querySingerByAreaAndName(int nowpage, String name,
			String area) {

		int pageSize=20;
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Singer where name like ? and area like ?";
		Query q = session.createQuery(hql);
		q.setParameter(0, "%"+name+"%");
		q.setParameter(1, "%"+area+"%");
		q.setFirstResult((nowpage-1)*pageSize);
		q.setMaxResults(pageSize);
		List<Singer> singers = q.list();
		return singers;
	}
	
}
