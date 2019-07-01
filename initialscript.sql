-- Creer la base de données
CREATE DATABASE AnnuaireToutou;
USE AnnuaireToutou;

-- Créer l'utilisateur et lui donner des droits sur la base de données
CREATE USER 'adminToutou'@'localhost' IDENTIFIED BY 'Annu@ireT0ut0u';
GRANT ALL PRIVILEGES ON AnnuaireToutou.* TO 'adminToutou'@'localhost';
FLUSH PRIVILEGES;

-- Créer la table Maitres
CREATE TABLE Maitres(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(200),
    telephone VARCHAR(20)
);

-- Créer la table Chiens
CREATE TABLE Chiens(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255),
    age INT,
    race VARCHAR(200),
    id_maitre INT,
    FOREIGN KEY (id_maitre) REFERENCES Maitres(id)
);