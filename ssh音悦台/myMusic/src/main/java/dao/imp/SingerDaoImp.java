package dao.imp;

import java.util.List;

import entity.Mv;
import entity.Singer;



public interface SingerDaoImp {
	//增加歌手
   public void saveSinger(Singer singer);
   //统计歌手总记录条数
   public long count(String name);
   //分页查询歌手 
   public List<Singer> querySingerByPage(int begin,int pageSize);
   //查询全部歌手
   public List<Singer> allSinger();
   //删除歌手
   public void deleteSinger(int singerId);
	//根据歌手姓名查询
   public List<Singer> querySingerByName(String name);
 //根据地区查询歌手
 	public List<Singer> querySingerByArea(int page,String area);
 	//根据歌手ID查询歌手
 	public Singer querySingerById(int id);
 	//根据姓名分页查询歌手
 	public List<Singer> querySingerByNameAndPage(int nowpage,String name);
 	//根据姓名分页查询歌手
 	public List<Singer> querySingerByAreaAndName(int nowpage,String name,String area);
 	//编辑更新
 	public void upDateSinger(Singer singer);
 	
 	
}
