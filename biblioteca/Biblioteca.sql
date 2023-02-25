CREATE TABLE persoana
(id_pers INTEGER(3),
 nume VARCHAR(20) NOT NULL,
 telefon VARCHAR(15) NOT NULL,
 adresa VARCHAR(40)
);

CREATE TABLE carte
(id_carte INTEGER(3),
 titlu VARCHAR(30) NOT NULL,
 nr_pagini INTEGER(4)NOT NULL,
 nr_exemplare INTEGER(3)NOT NULL, 
 gen VARCHAR(20) NOT NULL
);

CREATE TABLE imprumut
(id_carte INTEGER(3) NOT NULL,
 id_imp INTEGER(3) NOT NULL,
 datai DATE NOT NULL,
 datar DATE DEFAULT NULL,
 nr_zile INTEGER(3) NOT NULL
);

CREATE TABLE autor
(id_carte INTEGER(3) NOT NULL,
 id_aut INTEGER(3) NOT NULL       
);

INSERT INTO persoana (id_pers, nume, telefon, adresa) VALUES (1, 'Ana Blandiana', '+440722838383', 'Bucuresti, Str. 1 Decembrie, nr. 10');
INSERT INTO persoana (id_pers, nume, telefon, adresa) VALUES (2, 'Nichita Stanescu', '+440722832343', 'Bucuresti, Str. 24 Ianuarie, nr. 4'); 
INSERT INTO persoana (id_pers, nume, telefon, adresa) VALUES (3, 'Elena Farago', '+430712838383', 'Bucuresti, Str. 1 Decembrie, nr. 29'); 
INSERT INTO persoana (id_pers, nume, telefon, adresa) VALUES (4, 'Ion Creanga', '0237838383', 'Iasi, Str. Tei, nr. 12'); 
INSERT INTO persoana (id_pers, nume, telefon, adresa) VALUES (5, 'Mihai Eminescu', '024522768383', 'Iasi, Str. Tei, nr. 14'); 
INSERT INTO persoana (id_pers, nume, telefon, adresa) VALUES (6, 'Mircea Eliade', '+440722838383', 'Paris, Str. Elise, nr. 24'); 
INSERT INTO persoana (id_pers, nume, telefon, adresa) VALUES (7, 'Cassandra Clare', '+132490391234', 'Los Angeles, Str. Sea, nr. 2'); 
INSERT INTO persoana (id_pers, nume, telefon, adresa) VALUES (8, 'Thomas Cormen', '+132322838383', 'Londra, Str. Rain, nr. 95'); 
INSERT INTO persoana (id_pers, nume, telefon, adresa) VALUES (9, 'Ronald Rivest', '+132322248383', 'Londra, Str. Rain, nr. 97'); 
INSERT INTO persoana (id_pers, nume, telefon, adresa) VALUES (10, 'Niculina Badiu', '+440722838383', 'Focsani, Str. Unirii, nr. 34'); 
INSERT INTO persoana (id_pers, nume, telefon, adresa) VALUES (11, 'John Doe', '+111422838383', 'New York, Str. Street, nr. 34'); 

INSERT INTO carte (id_carte, titlu, nr_pagini, nr_exemplare, gen) VALUES (1, 'Daca ne-am ucide unul pe altul', 3, 40, 'Fantastic');
INSERT INTO carte (id_carte, titlu, nr_pagini, nr_exemplare, gen) VALUES (2, 'Pe langa plopii fara sot', 2, 46, 'Copii');
INSERT INTO carte (id_carte, titlu, nr_pagini, nr_exemplare, gen) VALUES (3, 'Amintiri din copilarie', 134, 100, 'Autobiografic');
INSERT INTO carte (id_carte, titlu, nr_pagini, nr_exemplare, gen) VALUES (4, 'Introducere in algoritmi', 900, 300, 'Tehnic');
INSERT INTO carte (id_carte, titlu, nr_pagini, nr_exemplare, gen) VALUES (5, 'Tanu', 4, 56, 'Copii');
INSERT INTO carte (id_carte, titlu, nr_pagini, nr_exemplare, gen) VALUES (6, 'Maitreyi', 126, 123, 'Autobiografic');
INSERT INTO carte (id_carte, titlu, nr_pagini, nr_exemplare, gen) VALUES (7, 'Biologie vegetala si animala', 400, 20, 'Tehnic');
INSERT INTO carte (id_carte, titlu, nr_pagini, nr_exemplare, gen) VALUES (8, 'Romanul adolescentului miop', 110, 39, 'Autobiografic');
INSERT INTO carte (id_carte, titlu, nr_pagini, nr_exemplare, gen) VALUES (9, 'Instrumente mortale', 600, 10, 'Fantastic');
INSERT INTO carte (id_carte, titlu, nr_pagini, nr_exemplare, gen) VALUES (10, 'Gandacelul', 5, 42, 'Copii');
INSERT INTO carte (id_carte, titlu, nr_pagini, nr_exemplare, gen) VALUES (11, 'India in care am trait', 136, 56, 'Autobiografic');
INSERT INTO carte (id_carte, titlu, nr_pagini, nr_exemplare, gen) VALUES (12, 'Povesti din India', 125, 35, 'Copii');

INSERT INTO imprumut(id_carte, id_imp, datai, datar, nr_zile) VALUES(1, 2, '2021-05-24', '2021-05-27', 14);
INSERT INTO imprumut(id_carte, id_imp, datai, datar, nr_zile) VALUES(6, 2, '2021-05-24', NULL, 12);
INSERT INTO imprumut(id_carte, id_imp, datai, datar, nr_zile) VALUES(6, 1, '2021-01-20', NULL, 12);
INSERT INTO imprumut(id_carte, id_imp, datai, datar, nr_zile) VALUES(7, 4, '2021-07-27', '2021-08-27', 7);
INSERT INTO imprumut(id_carte, id_imp, datai, datar, nr_zile) VALUES(3, 5, '2021-05-27', NULL, 10);
INSERT INTO imprumut(id_carte, id_imp, datai, datar, nr_zile) VALUES(3, 8, '2021-04-04', '2021-05-04', 8);
INSERT INTO imprumut(id_carte, id_imp, datai, datar, nr_zile) VALUES(2, 10, '2021-08-24', NULL, 12);
INSERT INTO imprumut(id_carte, id_imp, datai, datar, nr_zile) VALUES(9, 3, '2020-12-14', '2020-12-19', 20);
INSERT INTO imprumut(id_carte, id_imp, datai, datar, nr_zile) VALUES(4, 6, '2021-01-20', NULL, 16);
INSERT INTO imprumut(id_carte, id_imp, datai, datar, nr_zile) VALUES(9, 6, '2021-05-11', NULL, 12);

INSERT INTO autor (id_carte, id_aut) VALUES (1, 1);
INSERT INTO autor (id_carte, id_aut) VALUES (2, 5);
INSERT INTO autor (id_carte, id_aut) VALUES (3, 4);
INSERT INTO autor (id_carte, id_aut) VALUES (4, 8);
INSERT INTO autor (id_carte, id_aut) VALUES (4, 9);
INSERT INTO autor (id_carte, id_aut) VALUES (5, 3);
INSERT INTO autor (id_carte, id_aut) VALUES (6, 6);
INSERT INTO autor (id_carte, id_aut) VALUES (7, 10);
INSERT INTO autor (id_carte, id_aut) VALUES (8, 6);
INSERT INTO autor (id_carte, id_aut) VALUES (9, 7);
INSERT INTO autor (id_carte, id_aut) VALUES (10, 3);
INSERT INTO autor (id_carte, id_aut) VALUES (11, 2);
INSERT INTO autor (id_carte, id_aut) VALUES (12, 2);


ALTER TABLE persoana ADD CONSTRAINT PK_persoana PRIMARY KEY (id_pers);
ALTER TABLE carte ADD CONSTRAINT PK_carte PRIMARY KEY (id_carte);
ALTER TABLE imprumut ADD CONSTRAINT PK_imprumut PRIMARY KEY (id_carte, id_imp, datai);
ALTER TABLE autor ADD CONSTRAINT PK_autor PRIMARY KEY (id_carte, id_aut);

ALTER TABLE imprumut ADD CONSTRAINT FK_imprumut_persoana FOREIGN KEY(id_imp) REFERENCES persoana(id_pers) ON DELETE CASCADE;
ALTER TABLE imprumut ADD CONSTRAINT FK_Imprumut_carte FOREIGN KEY(id_carte) REFERENCES carte(id_carte) ON DELETE CASCADE;

ALTER TABLE autor ADD CONSTRAINT FK_autor_persoana FOREIGN KEY(id_aut) REFERENCES persoana(id_pers) ON DELETE CASCADE;
ALTER TABLE autor ADD CONSTRAINT FK_autor_carte FOREIGN KEY(id_carte) REFERENCES carte(id_carte) ON DELETE CASCADE;
