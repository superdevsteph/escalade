
DROP DATABASE IF EXISTS escalade;
CREATE DATABASE escalade;
USE escalade;
show DATABASES;




/*All User's gets stored in APP_USER table*/
create table APP_USER (
   id BIGINT NOT NULL AUTO_INCREMENT,
   sso_id VARCHAR(30) NOT NULL,
   password VARCHAR(100) NOT NULL,
   first_name VARCHAR(30) NOT NULL,
   last_name  VARCHAR(30) NOT NULL,
   email VARCHAR(30) NOT NULL,
   PRIMARY KEY (id),
   UNIQUE (sso_id)
);
   
/* USER_PROFILE table contains all possible roles */ 
create table USER_PROFILE(
   id BIGINT NOT NULL AUTO_INCREMENT,
   type VARCHAR(30) NOT NULL,
   PRIMARY KEY (id),
   UNIQUE (type)
);
   
/* JOIN TABLE for MANY-TO-MANY relationship*/  
CREATE TABLE APP_USER_USER_PROFILE (
    user_id BIGINT NOT NULL,
    user_profile_id BIGINT NOT NULL DEFAULT '1',
    PRIMARY KEY (user_id, user_profile_id),
    CONSTRAINT FK_APP_USER FOREIGN KEY (user_id) REFERENCES APP_USER (id),
    CONSTRAINT FK_USER_PROFILE FOREIGN KEY (user_profile_id) REFERENCES USER_PROFILE (id)
);
  
/* Populate USER_PROFILE Table */
INSERT INTO USER_PROFILE(type)
VALUES ('USER');
  
INSERT INTO USER_PROFILE(type)
VALUES ('ADMIN');
  
INSERT INTO USER_PROFILE(type)
VALUES ('DBA');
  
  
/* Populate one Admin User which will further create other users for the application using GUI */
INSERT INTO APP_USER(sso_id, password, first_name, last_name, email)
VALUES 
('sam','$2a$10$4eqIF5s/ewJwHK1p8lqlFOEm2QIA0S8g6./Lok.pQxqcxaBZYChRm', 'Sam','Smith','samy@xyz.com'),
('steph','$2a$10$BFUbBCYU3xfLiIZTz82pD.HrNl0LuDru1qnAJr5aEAgjkH90Sh7Li','Stéphanie','Mehraik','stephanie.mehraik@gmail.com'),
('batman','$2a$10$eX9miVROYxSqzGOgzisic.Cfnlp1Du.2AigNR.c6uVFfYNNXr/bBK','Bruce','Wayne','bruce.wayne@gmail.com'),
('superman','$2a$10$XL3zOSWzALa5nAyLbZt6GupyDuqvNkKC/rvhZt0qnU9Qmq6Qj5YnC','Clark','Kent','clark.kent@gmail.com'),
('arrow','$2a$10$66eYbaohf2iH2xkliVMFDuKDGH.Tw9W8iuYs/sMimnZ1PeD.66jWK','Oliver','Queen','oliver.queen@gmail.com');


  
  
/* Populate JOIN Table */
INSERT INTO APP_USER_USER_PROFILE (user_id, user_profile_id)
  SELECT user.id, profile.id FROM app_user user, user_profile profile
  where user.sso_id='sam' and profile.type='ADMIN';
 
/* Create persistent_logins Table used to store rememberme related stuff*/
CREATE TABLE persistent_logins (
    username VARCHAR(64) NOT NULL,
    series VARCHAR(64) NOT NULL,
    token VARCHAR(64) NOT NULL,
    last_used TIMESTAMP NOT NULL,
    PRIMARY KEY (series)
);

CREATE TABLE tb_topo (
  topo_id INT(4) PRIMARY KEY AUTO_INCREMENT,
  toponame VARCHAR(15),
	lieu VARCHAR(30),
	disponible BOOLEAN,
	description TEXT,
	topo_user_fk_id INTEGER,
	topo_image VARCHAR(100),
	topo_dateCreation TIMESTAMP,
	topo_lastUpdate TIMESTAMP,
	datePublication DATETIME
) ENGINE = InnoDB DEFAULT CHARSET=utf8;

INSERT INTO tb_topo (topo_id, toponame, lieu, disponible, description, topo_user_fk_id) VALUES ('1', 'Topo1', 'bla', '0', 'premier topo', '1');
INSERT INTO tb_topo (`topo_id`, `toponame`, `lieu`, `disponible`, `description`, `topo_user_fk_id`) VALUES ('2', 'Topo2', 'bla','0', 'deuxieme topo', '2');


CREATE TABLE t_site (
  site_id INT(4) PRIMARY KEY AUTO_INCREMENT,
  site_name VARCHAR(15),
  site_region VARCHAR(30),
  nb_secteurs INTEGER,
  nb_voies INTEGER,
  site_longueur INTEGER,
  site_publication boolean,
  site_dateCreation TIMESTAMP,
  site_lastUpdate TIMESTAMP
	
) ENGINE = InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE t_commentaire (
	com_id  SERIAL PRIMARY KEY,
	com_dateCreation TIMESTAMP,
	com_commentaire CHARACTER VARYING(2000),
	com_utilisateur_fk_id INTEGER,
	com_table_fk_id INTEGER,
	com_target_table CHARACTER VARYING(20)
);

CREATE TABLE t_site_secteur_asso (
	site_secteur_asso_id SERIAL PRIMARY KEY,
	site_fk_id INTEGER,
	secteur_fk_id INTEGER
);

CREATE TABLE t_secteur_voie_asso (
	secteur_voie_asso_id SERIAL PRIMARY KEY,
	secteur_fk_id INTEGER,
	voie_fk_id INTEGER
);


CREATE TABLE t_location_topo(
	loc_id SERIAL PRIMARY KEY,
	loc_dateDebut TIMESTAMP,
	loc_dateFin TIMESTAMP,
	loc_topoProprioUser_fk_id INTEGER,
	loc_topoLoueurUser_fk_id INTEGER,
	loc_topo_fk_id INTEGER,
	loc_status CHARACTER VARYING(15)
);

CREATE TABLE t_secteur (
	secteur_id SERIAL PRIMARY KEY,
	secteur_nom CHARACTER VARYING(20) NOT NULL,
	secteur_description CHARACTER VARYING(500),
	secteur_utilisateur_fk_id INTEGER,
	secteur_dateCreation TIMESTAMP,
	secteur_lastUpdate TIMESTAMP,
	secteur_publication boolean,
	secteur_image CHARACTER VARYING(100),
	secteur_departement CHARACTER VARYING(50)
);
   
CREATE TABLE t_voie (
	voie_id SERIAL PRIMARY KEY,
	voie_nom CHARACTER VARYING(20) NOT NULL,
	voie_description CHARACTER VARYING(500),
	voie_utilisateur_fk_id INTEGER,
	voie_dateCreation TIMESTAMP,
	voie_lastUpdate TIMESTAMP,
	voie_publication boolean,
	voie_image CHARACTER VARYING(100),
	voie_hauteurVoie NUMERIC(10,1),
	voie_cotation CHARACTER VARYING(15),
	voie_nbPoints INTEGER,
	voie_equipee BOOLEAN
);

CREATE TABLE t_longueur (
	longueur_id SERIAL PRIMARY KEY,
	longueur_nom CHARACTER VARYING(20) NOT NULL,
	longueur_description CHARACTER VARYING(500),
	longueur_utilisateur_fk_id INTEGER,
	longueur_dateCreation TIMESTAMP,
	longueur_lastUpdate TIMESTAMP,
	longueur_publication boolean,
	longueur_image CHARACTER VARYING(100),
	longueur_relai NUMERIC(10,1),
	longueur_voie_fk_id INTEGER,
	longueur_cotation CHARACTER VARYING(15)
);

INSERT INTO t_secteur(secteur_id, secteur_nom, secteur_description,secteur_utilisateur_fk_id,secteur_dateCreation, secteur_lastUpdate,secteur_publication, secteur_image,secteur_departement)
VALUES ('1','Secteur N°1',
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!',
        '1', '2018-01-05', '2018-02-07', '0', '../../ressources/images/etiquette1.jpg', 'Loiret');
INSERT INTO t_secteur(secteur_id, secteur_nom, secteur_description,secteur_utilisateur_fk_id,secteur_dateCreation, secteur_lastUpdate,secteur_publication, secteur_image,secteur_departement)
VALUES ('2','Secteur N°2',
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!',
        '2', '2018-01-05', '2018-02-07', '0', '../../ressources/images/etiquette2.jpg', 'Loiret');
INSERT INTO t_secteur(secteur_id, secteur_nom, secteur_description,secteur_utilisateur_fk_id,secteur_dateCreation, secteur_lastUpdate,secteur_publication, secteur_image,secteur_departement)
VALUES ('3','Secteur N°3',
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!',
        '3', '2018-01-05', '2018-02-07', '0', '../../ressources/images/etiquette3.jpg', 'Loiret');
INSERT INTO t_secteur(secteur_id, secteur_nom, secteur_description,secteur_utilisateur_fk_id,secteur_dateCreation, secteur_lastUpdate,secteur_publication, secteur_image,secteur_departement)
VALUES ('4','Secteur N°4',
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!',
        '1', '2018-01-05', '2018-02-07', '0', '../../ressources/images/etiquette1.jpg', 'Loiret');
INSERT INTO t_secteur(secteur_id, secteur_nom, secteur_description,secteur_utilisateur_fk_id,secteur_dateCreation, secteur_lastUpdate,secteur_publication, secteur_image,secteur_departement)
VALUES ('5','Secteur N°5',
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!',
        '2', '2018-01-05', '2018-02-07', '0', '../../ressources/images/etiquette2.jpg', 'Loiret');
INSERT INTO t_secteur(secteur_id, secteur_nom, secteur_description,secteur_utilisateur_fk_id,secteur_dateCreation, secteur_lastUpdate,secteur_publication, secteur_image,secteur_departement)
VALUES ('6','Secteur N°6',
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!',
        '3', '2018-01-05', '2018-02-07', '0', '../../ressources/images/etiquette3.jpg', 'Loiret');


INSERT INTO t_voie(voie_id, voie_nom, voie_description,voie_utilisateur_fk_id,voie_dateCreation, voie_lastUpdate,voie_publication, voie_image,voie_hauteurVoie,voie_cotation,voie_nbPoints,voie_equipee)
VALUES ('1','Voie N°1',
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!',
            '1', '2018-01-05', '2018-02-07', '0', '../../ressources/images/etiquette1.jpg', '5.2','5b','3','1');
INSERT INTO t_voie(voie_id, voie_nom, voie_description,voie_utilisateur_fk_id,voie_dateCreation, voie_lastUpdate,voie_publication, voie_image,voie_hauteurVoie,voie_cotation,voie_nbPoints,voie_equipee)
VALUES ('2','Voie N°2',
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!',
            '2', '2018-01-05', '2018-02-07', '1', '../../ressources/images/etiquette2.jpg', '5.2','5b','3','1');
INSERT INTO t_voie(voie_id, voie_nom, voie_description,voie_utilisateur_fk_id,voie_dateCreation, voie_lastUpdate,voie_publication, voie_image,voie_hauteurVoie,voie_cotation,voie_nbPoints,voie_equipee)
VALUES ('3','Voie N°3',
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!',
            '3', '2018-01-05', '2018-02-07', '1', '../../ressources/images/etiquette3.jpg', '5.2','5b','3','1');
INSERT INTO t_voie(voie_id, voie_nom, voie_description,voie_utilisateur_fk_id,voie_dateCreation, voie_lastUpdate,voie_publication, voie_image,voie_hauteurVoie,voie_cotation,voie_nbPoints,voie_equipee)
VALUES ('4','Voie N°4',
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!',
            '1', '2018-01-05', '2018-02-07', '1', '../../ressources/images/etiquette1.jpg', '5.2','5b','3','1');
INSERT INTO t_voie(voie_id, voie_nom, voie_description,voie_utilisateur_fk_id,voie_dateCreation, voie_lastUpdate,voie_publication, voie_image,voie_hauteurVoie,voie_cotation,voie_nbPoints,voie_equipee)
VALUES ('5','Voie N°5',
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!',
            '2', '2018-01-05', '2018-02-07', '1', '../../ressources/images/etiquette2.jpg', '5.2','5b','3','1');
INSERT INTO t_voie(voie_id, voie_nom, voie_description,voie_utilisateur_fk_id,voie_dateCreation, voie_lastUpdate,voie_publication, voie_image,voie_hauteurVoie,voie_cotation,voie_nbPoints,voie_equipee)
VALUES ('6','Voie N°6',
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!',
            '3', '2018-01-05', '2018-02-07', '1', '../../ressources/images/etiquette3.jpg', '5.2','5b','3','1');


INSERT INTO t_longueur(longueur_id, longueur_nom, longueur_description,longueur_utilisateur_fk_id,longueur_dateCreation, longueur_lastUpdate,longueur_publication, longueur_image,longueur_relai,longueur_voie_fk_id,longueur_cotation)
VALUES ('1','Longueur N°1',
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!',
            '1', '2018-01-05', '2018-02-07', '0', '../../ressources/images/etiquette1.jpg', '3.1','1','3c');
INSERT INTO t_longueur(longueur_id, longueur_nom, longueur_description,longueur_utilisateur_fk_id,longueur_dateCreation, longueur_lastUpdate,longueur_publication, longueur_image,longueur_relai,longueur_voie_fk_id,longueur_cotation)
VALUES ('2','Longueur N°2',
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!',
            '2', '2018-01-05', '2018-02-07', '1', '../../ressources/images/etiquette1.jpg', '3.1','1','3c');
INSERT INTO t_longueur(longueur_id, longueur_nom, longueur_description,longueur_utilisateur_fk_id,longueur_dateCreation, longueur_lastUpdate,longueur_publication, longueur_image,longueur_relai,longueur_voie_fk_id,longueur_cotation)
VALUES ('3','Longueur N°3',
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!',
            '3', '2018-01-05', '2018-02-07', '1', '../../ressources/images/etiquette1.jpg', '3.1','2','3c');
INSERT INTO t_longueur(longueur_id, longueur_nom, longueur_description,longueur_utilisateur_fk_id,longueur_dateCreation, longueur_lastUpdate,longueur_publication, longueur_image,longueur_relai,longueur_voie_fk_id,longueur_cotation)
VALUES ('4','Longueur N°4',
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!',
            '1', '2018-01-05', '2018-02-07', '1', '../../ressources/images/etiquette1.jpg', '3.1','2','3c');
INSERT INTO t_longueur(longueur_id, longueur_nom, longueur_description,longueur_utilisateur_fk_id,longueur_dateCreation, longueur_lastUpdate,longueur_publication, longueur_image,longueur_relai,longueur_voie_fk_id,longueur_cotation)
VALUES ('5','Longueur N°5',
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!',
            '2', '2018-01-05', '2018-02-07', '1', '../../ressources/images/etiquette1.jpg', '3.1','3','3c');
INSERT INTO t_longueur(longueur_id, longueur_nom, longueur_description,longueur_utilisateur_fk_id,longueur_dateCreation, longueur_lastUpdate,longueur_publication, longueur_image,longueur_relai,longueur_voie_fk_id,longueur_cotation)
VALUES ('6','Longueur N°6',
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!',
            '3', '2018-01-05', '2018-02-07', '1', '../../ressources/images/etiquette1.jpg', '3.1','3','3c');

INSERT INTO t_site_secteur_asso(site_fk_id, secteur_fk_id)	VALUES (1, 1);
INSERT INTO t_site_secteur_asso(site_fk_id, secteur_fk_id)	VALUES (1, 2);
INSERT INTO t_site_secteur_asso(site_fk_id, secteur_fk_id)	VALUES (1, 3);
INSERT INTO t_site_secteur_asso(site_fk_id, secteur_fk_id)	VALUES (2, 1);
INSERT INTO t_site_secteur_asso(site_fk_id, secteur_fk_id)	VALUES (2, 2);
INSERT INTO t_site_secteur_asso(site_fk_id, secteur_fk_id)	VALUES (2, 3);
INSERT INTO t_site_secteur_asso(site_fk_id, secteur_fk_id)	VALUES (3, 1);
INSERT INTO t_site_secteur_asso(site_fk_id, secteur_fk_id)	VALUES (3, 2);
INSERT INTO t_site_secteur_asso(site_fk_id, secteur_fk_id)	VALUES (3, 3);

INSERT INTO t_secteur_voie_asso(secteur_fk_id, voie_fk_id)	VALUES (1, 1);
INSERT INTO t_secteur_voie_asso(secteur_fk_id, voie_fk_id)	VALUES (1, 2);
INSERT INTO t_secteur_voie_asso(secteur_fk_id, voie_fk_id)	VALUES (1, 3);
INSERT INTO t_secteur_voie_asso(secteur_fk_id, voie_fk_id)	VALUES (2, 1);
INSERT INTO t_secteur_voie_asso(secteur_fk_id, voie_fk_id)	VALUES (2, 2);
INSERT INTO t_secteur_voie_asso(secteur_fk_id, voie_fk_id)	VALUES (2, 3);
INSERT INTO t_secteur_voie_asso(secteur_fk_id, voie_fk_id)	VALUES (3, 1);
INSERT INTO t_secteur_voie_asso(secteur_fk_id, voie_fk_id)	VALUES (3, 2);
INSERT INTO t_secteur_voie_asso(secteur_fk_id, voie_fk_id)	VALUES (3, 3);

INSERT INTO t_commentaire(com_id, com_datecreation, com_commentaire, com_utilisateur_fk_id, com_table_fk_id, com_target_table)
VALUES (1,'2018-05-09 15:08:59', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!', '1', '1', 'SITE');
INSERT INTO t_commentaire(com_id, com_datecreation, com_commentaire, com_utilisateur_fk_id, com_table_fk_id, com_target_table)
VALUES (2,'2018-02-09 09:42:10', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!', '2', '2', 'SITE');
INSERT INTO t_commentaire(com_id, com_datecreation, com_commentaire, com_utilisateur_fk_id, com_table_fk_id, com_target_table)
VALUES (3,'2018-01-05 17:23:45', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!', '3', '3', 'SITE');

