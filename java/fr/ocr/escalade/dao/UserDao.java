package fr.ocr.escalade.dao;

import java.util.List;

import fr.ocr.escalade.model.User;


public interface UserDao {

	User findById(int id);
	
	User findBySSO(String sso);
	
	void save(User user);
	
	void deleteBySSO(String sso);
	
	List<User> findAllUsers();

	List<User> listUserInfos();

}

