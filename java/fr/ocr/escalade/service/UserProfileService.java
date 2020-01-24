package fr.ocr.escalade.service;

import java.util.List;

import fr.ocr.escalade.model.UserProfile;


public interface UserProfileService {

	UserProfile findById(int id);

	UserProfile findByType(String type);
	
	List<UserProfile> findAll();
	
}
