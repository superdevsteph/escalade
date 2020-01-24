package fr.ocr.escalade.dao;

import java.util.List;

import fr.ocr.escalade.model.Topo;


public interface TopoDao {
	public void saveTopo(Topo topo);
    
    public List<Topo> listTopoInfos();

  
	public Topo findTopo(int id);
	
	
	public void deleteTopo(int id);

	Topo findTopo1(int id);

}

