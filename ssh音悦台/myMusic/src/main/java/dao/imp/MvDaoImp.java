package dao.imp;

import java.util.List;

import entity.Mv;
import entity.Singer;

public interface MvDaoImp {
	/**
	 * ���MV
	 * @param mv
	 */
	public void save(Mv mv);
	//�޸�MV
	public void update(Mv mv);
	public void delMv(int id);
	public List<Mv> queryMvByName(String name);
	public Mv queryMvById(int id);
	public List<Mv> queryMv();
	public List<Mv> queryMvByAreaAndDate(int page,String area);
	public List<Mv> queryMvByAreaAndClick(int page, String area);
	public List<Mv> queryMvBySinger(Singer singer);
	public List<Mv> queryMvByRandom();
	//��ҳ��ʾ�����ֲ�ѯMv
	public List<Mv> queryMvByName(String name, int page);
	//�����ֺ͵�����ѯMV
	public List<Mv> queryMvByAreaAndSinger(int page, String area,String  Name);
}
