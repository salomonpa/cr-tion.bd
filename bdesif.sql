CREATE TABLE clients(
    clientid Int primary key not null auto_increment,
    nom VARCHAR(200),
    prenom VARCHAR(200),
    adresse VARCHAR(200),
    email VARCHAR(200),
    telephone Int(25)
);


insert into clients (nom, prenom, adresse, email,  telephone)
values('Bemssé', 'sisline', 'pattedoie', 'ftoungai@gmail.com',56498921),
      ('Feidanga', 'larissa', 'ouaga2000','larios@gmail.com', 75513513),
      ('Touangai',' marie_ange', 'ouaga200', 'ange@gmail.com', 75539971),
      ( 'Kabore', 'antoine', 'cissin', 'kb@gmail.com',70202581),
       ('Zongo', 'aboubacar', 'goughin', 'zbou@gmail.com', 6060333);
 

 CREATE TABLE categories (
 categoriesid INT PRIMARY KEY NOT NULL,
    Nom VARCHAR(50)
);
INSERT INTO categories (categoriesid, nom)
VALUES (1,'electromenager'),
        (2,'electromenager'),
        (3,'electromenager'),
        (4, 'téléphone'),
        (5,'ventilateur');

CREATE TABLE articles (
    articleid INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nom VARCHAR(200),
    quantite INT,
    prix_achat INT,
    prix_vente INT,
    categoriesid INT,
    FOREIGN KEY (categoriesid) REFERENCES categories (categoriesid)
);

INSERT INTO articles ( nom, quantite, prix_achat, prix_vente, categoriesid )
VALUES ('fOUR', 10, 55000, 95000,1),
       ('congélateur', 10, 85000, 140000,1),
       ('télé.plasma', 10, 80000, 130000,1 );


       CREATE TABLE fournisseur(
    fournisseurid INT PRIMARY KEY AUTO_INCREMENT ,
    nom VARCHAR(100),
    contact INT,
    email VARCHAR(50)
);
INSERT INTO fournisseur(nom, contact, Email)
VALUES ('job', 25253640, 'jobt@gmail.com'),
        ('albert',70405563,'alb@gmail.com'),
        ('jonathan', 50553312,'jt@gmail.com'),
        ('jules', 74502020, 'jul@gmail.com');

CREATE TABLE achat (
    achatid INT PRIMARY KEY AUTO_INCREMENT,
    articleid INT,
    fournisseurid INT,
    prix_achat INT,
    quantite Int ,
    dateachat DATE,
    FOREIGN KEY (fournisseurid) REFERENCES fournisseur(fournisseurid),
    FOREIGN KEY (articleid) REFERENCES articles(articleid)
  
    );


INSERT INTO achat (articleid, prix_achat, quantite, fournisseurid, dateachat)
VALUES (1, 80000, 10, 1, '2023-07-17');


CREATE TABLE ventes (
    venteid INT PRIMARY KEY NOT NULL,
    articleid INT,
    quantite INT,
    prix_vente INT,
    datevente DATE,
    clientid INT,
    FOREIGN KEY (clientid) REFERENCES clients(clientid),
    FOREIGN KEY(articleid) REFERENCES articles(articleid)
); 

INSERT INTO ventes (venteid, articleid, quantite, prix_vente, datevente, clientid)
VALUES (1, 1, 5, 15000, '2023-07-11', 1);



 

