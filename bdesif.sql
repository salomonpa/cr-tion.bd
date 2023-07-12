create database bd_esiftechnologie;

CREATE TABLE Clients(
    clientid Int primary key not null auto_increment,
    nom VARCHAR(200),
    prenom VARCHAR(200),
    adresse VARCHAR(200),
    email VARCHAR(200),
    téléphone Int(25)
);


insert into Clients (nom, prenom, adresse, email,  téléphone)
values('Bemssé', 'sisline', 'pattedoie', 'ftoungai@gmail.com',56498921),
      ('Feidanga', 'larissa', 'ouaga2000','larios@gmail.com', 75513513),
      ('Touangai',' marie_ange', 'ouaga200', 'ange@gmail.com', 75539971),
      ( 'Kabore', 'antoine', 'cissin', 'kb@gmail.com',70202581),
       ('Zongo', 'aboubacar', 'goughin', 'zbou@gmail.com', 6060333)
 

 CREATE TABLE Categorie (
 Categorieid INT PRIMARY KEY NOT NULL,
    Nom VARCHAR(50),  
);
INSERT INTO Categorie (CategorieID, Nom)
VALUES (1,'electromenager');

CREATE TABLE articles (
    articleid INT PRIMARY KEY AUTO INCREMENT NOT NULL,
    nom VARCHAR(200),
    quantite INT(10),
    prix INT (10,),
    categoid int,
    FOREIGN KEY (categoid) REFERENCES Categorie (Categorieid)
);

INSERT INTO articles ( nom, quantite, prix )
VALUES ('FOUR', 10, 55000 ),
       ('congélateur', 10, 10000 ),
       ('télé.plasma', 10, 80000 );



CREATE TABLE Fournisseur (
    fournisseurid INT PRIMARY KEY AUTO INCREMENT NOT NULL,
    Nom VARCHAR(100),
    Contact INT(50),
    Email VARCHAR(50)

);

INSERT INTO Fournisseur(nom, contact, Email)
VALUES ('job', 25253640, 'jobt@gmail.com')
        (albert,70405563, 'alb@gmail.com')
        (jonathan, 50553312, 'jt@gmail.com')
        (jules, 74502020, 'jul@gmail.com')



CREATE TABLE Achat (
    achatid INT PRIMARY KEY AUTO_INCREMENT,NOT NULL
    articleid INT
    fournisseurid INT,
    Quantite (10),
    DateAchat DATE,
    FOREIGN KEY (fournisseurid) REFERENCES Fournisseur(fournisseurid)


); 

INSERT INTO Achat (ArticleID, Quantite, DateAchat)
VALUES (1, 10, '12-07-2023');


CREATE TABLE Ventes (
    VenteID INT PRIMARY KEY, NOT NULL
    articleid INT,
    Quantite INT(5),
    DateVente DATE,
    clientid int,
    FOREIGN KEY (clientid) REFERENCES Clients(clientid)
    FOREIGN KEY(articleid) REFERENCES articles(articleid)
); 

INSERT INTO Ventes (VenteID, ArticleID, Quantite, DateVente, clientid)
VALUES (1, 1, 5, '11-07-2023', 1);



 

