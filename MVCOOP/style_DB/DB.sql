CREATE TABLE T_BILLET (
  BIL_ID INT PRIMARY KEY AUTO_INCREMENT,
  BIL_DATE DATETIME,
  BIL_TITRE VARCHAR(255),
  BIL_CONTENU TEXT
);

CREATE TABLE T_COMMENTAIRE (
  COM_ID INT PRIMARY KEY AUTO_INCREMENT,
  COM_DATE DATETIME,
  COM_AUTEUR VARCHAR(255),
  COM_CONTENU TEXT,
  BIL_ID INT,
  FOREIGN KEY (BIL_ID) REFERENCES T_BILLET(BIL_ID)
);

insert into T_BILLET(BIL_DATE, BIL_TITRE, BIL_CONTENU) values
(NOW(), 'Premier billet', 'Bonjour monde ! Ceci est le premier billet sur mon blog.');
insert into T_BILLET(BIL_DATE, BIL_TITRE, BIL_CONTENU) values
(NOW(), 'Au travail', 'Il faut enrichir ce blog dès maintenant.');

insert into T_COMMENTAIRE(COM_DATE, COM_AUTEUR, COM_CONTENU, BIL_ID) values
(NOW(), 'A. Nonyme', 'Bravo pour ce début', 1);
insert into T_COMMENTAIRE(COM_DATE, COM_AUTEUR, COM_CONTENU, BIL_ID) values
(NOW(), 'Moi', 'Merci ! Je vais continuer sur ma lancée', 1);



