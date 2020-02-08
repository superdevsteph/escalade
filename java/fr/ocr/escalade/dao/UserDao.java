package fr.ocr.escalade.dao;

import java.util.List;

import fr.ocr.escalade.model.User;


public interface UserDao {

	User findById(int id);
	
	User findBySSO(String ssoId);
	
	void save(User user);
	
	void deleteBySSO(String ssoId);
	
	List<User> findAllUsers();

	List<User> listUserInfos();

}

