package fr.ocr.escalade.service;

import java.util.List;

import fr.ocr.escalade.model.Site;



public interface SiteService {
    
	public void saveSite(Site site);
    
    public List<Site> listSiteInfos();


    
    
	public Site findSite(int id);
	
	
	public void deleteSite(int id);

	Site findSite1(int id);

	
    
    
}
