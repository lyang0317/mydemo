package service;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.imp.AdministratorDaoImp;
import dao.imp.SingerDaoImp;
import entity.Singer;
import service.imp.SingerServiceImp;
import utils.Common;
import utils.Support;

@Service
@Transactional
public class SingerService implements SingerServiceImp {
	@Resource
	private SingerDaoImp singerDaoImp;

	// 新增 歌手
	public void addSinger(Singer singer) {
		singerDaoImp.saveSinger(singer);
	}

	// 分页查询歌手
//	public Support querySingerByPage(int nowpage) {
//		long totalRecord = singerDaoImp.count();
//		List<Singer> singers = singerDaoImp.querySingerByPage((nowpage - 1)
//				* Common.PageSize, Common.PageSize);
//		Support spt = new Support();
//		spt.setTotalRecord(totalRecord);
//		spt.setDada(singers);
//		return spt;
//	}

	// 查询所有歌手
	public List<Singer> allSingers() {
		return singerDaoImp.allSinger();
	}

	// 删除歌手
	public void deleteSinger(int singerId) {
		singerDaoImp.deleteSinger(singerId);
	}

	// 通过地区查找歌手
	public List<Singer> querySingerByArea(int page, String area) {

		return singerDaoImp.querySingerByArea(page, area);
	}

	// 通过歌手ID查询歌手
	public Singer querySingerById(int id) {
		return singerDaoImp.querySingerById(id);
	}

	// 通过姓名查找歌手
	public List<Singer> querySingerByName(String name) {
		return singerDaoImp.querySingerByName(name);
	}
	//通过姓名，分页查询歌手
	public List<Singer> querySingerByNameAndPage(int nowpage, String name) {
		return singerDaoImp.querySingerByNameAndPage(nowpage, name);
	}
    //查询歌手总记录数
	public long findTotalPage(String name) {
		return singerDaoImp.count(name);
	}
   //更新歌手
	public void upDateSinger(Singer singer) {
		singerDaoImp.upDateSinger(singer);
	}

	public List<Singer> querySingerByAreaAndName(int nowpage, String name,
			String area) {
		// TODO Auto-generated method stub
		return singerDaoImp.querySingerByAreaAndName(nowpage, name, area);
	}

}
