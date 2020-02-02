package fr.ocr.escalade.dao;

import java.util.List;

import fr.ocr.escalade.model.Site;


public interface SiteDao {
	
	public void saveSite(Site site);
    
    public List<Site> listSiteInfos();

  
	public Site findSite(int id);
	
	
	public void deleteSite(int id);

	Site findSite1(int id);

}

