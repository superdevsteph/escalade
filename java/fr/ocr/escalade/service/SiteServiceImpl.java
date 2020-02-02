package fr.ocr.escalade.service;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fr.ocr.escalade.dao.SiteDao;
import fr.ocr.escalade.model.Site;

@Repository
public class SiteServiceImpl implements SiteService {
	
	@Autowired
	private SessionFactory sessionFactory;
	
  
	
	@Autowired
	private SiteDao dao;
	
    @Override
	public Site findSite(int id) {
		Session session = sessionFactory.getCurrentSession();
		Criteria crit = session.createCriteria(Site.class);
		crit.add(Restrictions.eq("id", id));
		return (Site) crit.uniqueResult();
	}

    
	@Override
	public Site findSite1(int id) {
		Site site = this.findSite(id);
		if (site == null) {
			return null;
		}
		return new Site();
	}

	
	
	
	@SuppressWarnings("unchecked")
	@Transactional
	@Override
	public List<Site> listSiteInfos() {
		String sql = "Select new " + Site.class.getName()//
				+ "(t.id, t.sitename, t.lieu, t.disponible, t.description, t.datePublication) "//
				+ " from " + Site.class.getName() + " t ";
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery(sql);
		return query.list();
	}
	

	
	
	 @Transactional
    @Override
    public void saveSite(Site site) {
       
    	int id = site.getId();
		Site Site = null;
		if (id != 0) {
			Site = this.findSite(id);
		}
		boolean isNew = false;
		if (Site == null) {
			isNew = true;
			Site = new Site();

		}
	
		Site.setNom(Site.getNom());
		Site.setRegion(Site.getRegion());

		Site.setDescription(Site.getDescription());
		
		
		
		if (isNew) {
			Session session = this.sessionFactory.getCurrentSession();
			session.persist(Site);
		}
	}



    @Transactional
	@Override
	public void deleteSite(int id) {
		Site Site = this.findSite(id);
		if (Site != null) {
			this.sessionFactory.getCurrentSession().delete(Site);
		}
	}


 

}
