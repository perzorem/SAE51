USE sae51;
SET foreign_key_checks = 0;

LOAD DATA INFILE '/etc/data_ordinateur.cvs' INTO TABLE Ordinateur FIELDS TERMINATED BY ',' IGNORE 1 ROWS (ID_machine,Marque,Data_achat,RAM) ;

LOAD DATA INFILE '/etc/data_maintenance.cvs' INTO TABLE  Maintenance FIELDS TERMINATED BY ',' IGNORE 1 ROWS (ID_maintenance,ID_machine,Nom_technicien,Type_intervention,Date) ;

LOAD DATA INFILE '/etc/data_logiciel.cvs' INTO TABLE Logiciel FIELDS TERMINATED BY ',' IGNORE 1 ROWS (ID_logiciel,Nom,VErsion,License,OS) ;

LOAD DATA INFILE '/etc/data_utilisateur.cvs' INTO TABLE Utilisateur FIELDS TERMINATED BY ',' IGNORE 1 ROWS (ID_utilisateur,Nom,Mail);

LOAD DATA INFILE '/etc/data_affectation.cvs' INTO TABLE Affectation FIELDS TERMINATED BY ',' IGNORE 1 ROWS (ID_affectation,ID_machine,ID_utilisateur,Date_affectation) ;
