package service;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import dao.imp.MvDaoImp;
import dao.imp.RecommendDaoImp;
import entity.Mv;
import entity.Recommend;
import service.imp.MvServiceImp;
import service.imp.RecommendServiceImp;

@Service
@Transactional
public class RecommendService implements RecommendServiceImp {

	@Resource
	private RecommendDaoImp recommendDao;
	@Resource
	private MvDaoImp mvDao;
	public boolean saveRecommend(Recommend recommend) {
		// TODO Auto-generated method stub
		return recommendDao.saveRecommend(recommend);
	}

	public boolean updateRecommend(Recommend recommend) {
		// TODO Auto-generated method stub
		return recommendDao.updateRecommend(recommend);
	}

	public List<Mv> queryMvByName(String name) {
		// TODO Auto-generated method stub
		return mvDao.queryMvByName(name);
	}

	public List<Recommend> queryRecommendByPeriods(String periods, int page) {
		// TODO Auto-generated method stub
		return recommendDao.queryRecommendByPeriods(periods, page);
	}

	public List<Recommend> queryRecommendByDate() {
		// TODO Auto-generated method stub
		return recommendDao.queryRecommendByDate();
	}

	public boolean deleteRecommend(int id) {
		// TODO Auto-generated method stub
		return recommendDao.deleteRecommend(id);
	}

}
