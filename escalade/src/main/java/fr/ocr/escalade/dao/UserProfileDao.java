package fr.ocr.escalade.dao;

import java.util.List;

import fr.ocr.escalade.model.UserProfile;


public interface UserProfileDao {

	List<UserProfile> findAll();
	
	UserProfile findByType(String type);
	
	UserProfile findById(int id);
}
