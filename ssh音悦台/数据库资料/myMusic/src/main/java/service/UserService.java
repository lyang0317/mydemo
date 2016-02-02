package service;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.springframework.stereotype.Service;

import service.imp.UserServiceImp;
import utils.Common;
import utils.Support;
import utils.UserTest;
import dao.imp.UserDaoImp;
import entity.Mv;
import entity.Singer;
import entity.User;
@Service
@Transactional
public class UserService implements UserServiceImp {
	@Resource
	private UserDaoImp  userDao;

    
    //�����û�
    public void addUser(User user){
    	userDao.addUser(user);
    }
	public Support PageUser(int nowpage) {
		return null;
	}
	
	
  //��ѯ
	public List<User> queryUser(int page, String name) {
		
		return userDao.queryUser(page, name);
	}
	
	
    //��ҳ
	public List<User> PageUser(String periods, int page){
		
		return userDao.PageUser(periods, page);
		
	}
	
	 //ɾ��
	public void deleteuser(int id) {
		 userDao.deleteuser(id);
	}
	
	//�༭
	public void edituser(User user){
		userDao.edituser(user);
	}
	
	public List<User> queryUserByID(int id ){
		return userDao.queryUserByID(id);
	}
	
	//��¼
	 public User login(String username, String password){
		 return userDao.login(username, password);
	 }
  
	
}
