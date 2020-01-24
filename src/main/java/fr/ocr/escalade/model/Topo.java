package fr.ocr.escalade.model;


import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "tb_topo")
public class Topo implements Serializable{
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="topo_id", unique=true, nullable=false)
	private int id;
	

	@Column(name="toponame", nullable=false)
	private String toponame;
	
	@Column(name="lieu", nullable=false)
	private String lieu;
    
	@Column(name="disponible", nullable=false)
	private boolean disponible;
    
	@Column(name="description", nullable=false)
	private String description;
    
	@Column(name="datePublication", nullable=false)
	private Date datePublication;
    
	
	public Topo(int id, String toponame, String lieu, boolean disponible, String description,
			Date datePublication) {
		super();
		this.id = id;
		this.toponame = toponame;
		this.lieu = lieu;
		this.disponible = disponible;
		this.description = description;
		this.datePublication = datePublication;
	}
	

	public Topo() {
	
	}

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	   @Column(name = "topo_id", length = 50, nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

	public String getToponame() {
		return toponame;
	}

	public void setToponame(String toponame) {
		this.toponame = toponame;
	}

	public String getLieu() {
		return lieu;
	}

	public void setLieu(String lieu) {
		this.lieu = lieu;
	}


	public boolean isDisponible() {
		return disponible;
	}

	public void setDisponible(boolean disponible) {
		this.disponible = disponible;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getDatePublication() {
		return datePublication;
	}

	public void setDatePublication(Date datePublication) {
		this.datePublication = datePublication;
	}


	@Override
	public String toString() {
		return "Topo [id=" + id + ", toponame=" + toponame + ", lieu=" + lieu
				+ ", disponible=" + disponible + ", description=" + description
				+ "]";
	}


}
