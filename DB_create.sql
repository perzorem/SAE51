CREATE DATABASE sae51;
USE sae51;

CREATE TABLE Ordinateur (
    ID_machine INT AUTO_INCREMENT PRIMARY KEY,
    Marque VARCHAR(255),
    Date_achat DATE,
    RAM INT
);
CREATE TABLE Maintenance (
    ID_maintenance INT AUTO_INCREMENT PRIMARY KEY,
    ID_machine INT,
    Nom_technicien VARCHAR(255),
    Type_intervention VARCHAR(255),
    Date DATE,
    FOREIGN KEY (ID_machine) REFERENCES Ordinateur(ID_machine)
);
CREATE TABLE Logiciel (
    ID_logiciel INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(255),
    Version VARCHAR(50),
    License VARCHAR(255),
    OS VARCHAR(255)
);

CREATE TABLE Utilisateur (
    ID_utilisateur INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(255),
    Mail VARCHAR(255)
);

CREATE TABLE Affectation (
    ID_affectation INT AUTO_INCREMENT PRIMARY KEY,
    ID_machine INT,
    ID_utilisateur INT,
    Date_affectation DATE,
    FOREIGN KEY (ID_machine) REFERENCES Ordinateur(ID_machine),
    FOREIGN KEY (ID_utilisateur) REFERENCES Utilisateur(ID_utilisateur)
);
