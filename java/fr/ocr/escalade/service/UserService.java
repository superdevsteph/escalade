package fr.ocr.escalade.service;

import java.util.List;

import fr.ocr.escalade.model.User;


public interface UserService {
	
	User findById(int id);
	
	User findBySSO(String ssoId);
	
	void saveUser(User user);
	
	void updateUser(User user);
	void updateUser2(User user);
	
	void deleteUserBySSO(String ssoId);

	List<User> findAllUsers(); 
	
	boolean isUserSSOUnique(Integer id, String ssoId);

	void inscription(User user);

	List<User> listUserInfos();

}