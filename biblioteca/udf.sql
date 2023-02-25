DELIMITER $$
CREATE OR REPLACE PROCEDURE Cerinta3a()
BEGIN
	SELECT * 
	FROM Persoana 
	WHERE telefon LIKE '+44%' 
	ORDER BY adresa;
END $$
DELIMITER ;
-- nu o mai folosim

DELIMITER $$
CREATE OR REPLACE PROCEDURE Cerinta3b()
BEGIN
	SELECT * 
	FROM imprumut 
	WHERE COALESCE(datar, SYSDATE()) - datai > nr_zile 
	ORDER BY nr_zile DESC, datai;
END $$
DELIMITER ;

DELIMITER $$
CREATE OR REPLACE PROCEDURE Cerinta4a()
BEGIN
	SELECT p.nume, p.adresa, p.telefon 
	FROM persoana p JOIN imprumut i ON p.id_pers = i.id_imp 
	WHERE SYSDATE()-i.datai > (nr_zile + 7) AND datar IS NULL OR (i.datar-i.datai) > (nr_zile + 7) AND datar IS NOT NULL;
END $$
DELIMITER ;

DELIMITER $$
CREATE OR REPLACE PROCEDURE Cerinta4b()
BEGIN
	SELECT DISTINCT CONCAT(a1.id_aut, CONCAT(' ', a2.id_aut)) AS "perechi"
    FROM autor a1 JOIN carte c1 ON (a1.id_carte = c1.id_carte), autor a2 JOIN carte c2 ON (a2.id_carte = c2.id_carte)
    WHERE c1.gen = c2.gen AND a1.id_aut <> a2.id_aut AND a1.id_aut < a2.id_aut;
END $$
DELIMITER ;
-- nu o mai folosim

DELIMITER $$
CREATE OR REPLACE PROCEDURE Cerinta5a()
BEGIN
	SELECT *
	FROM carte c1
	WHERE c1.gen IN (SELECT c2.gen FROM carte c2 WHERE c2.titlu LIKE '%India%') AND c1.titlu NOT LIKE '%India%';
END $$
DELIMITER ;

DELIMITER $$
CREATE OR REPLACE PROCEDURE Cerinta5b()
BEGIN
	SELECT p.nume, c.titlu
	FROM persoana p JOIN autor a ON a.id_aut = p.id_pers JOIN carte c ON c.id_carte = a.id_carte
	WHERE a.id_carte IN (SELECT a1.id_carte FROM autor a1 JOIN autor a2 ON a1.id_carte = a2.id_carte WHERE a1.id_carte = a2.id_carte AND a1.id_aut <> a2.id_aut);
END $$
DELIMITER ;

DELIMITER $$
CREATE OR REPLACE PROCEDURE Cerinta6a()
BEGIN
	SELECT p.nume, TRUNCATE(DATEDIFF(COALESCE(i.datar, SYSDATE()), i.datai) - i.nr_zile, 0) AS "Zile_int"
    FROM persoana p INNER JOIN imprumut i ON (p.id_pers = i.id_imp) 
    WHERE DATEDIFF(COALESCE(datar, SYSDATE()), datai) - nr_zile = (SELECT MAX(DATEDIFF(COALESCE(datar, SYSDATE()), datai) - nr_zile) FROM imprumut);
END $$
DELIMITER ;

DELIMITER $$
CREATE OR REPLACE PROCEDURE Cerinta6b()
BEGIN
	SELECT MIN(nr_pagini) AS "MINIM", AVG(nr_pagini) AS "MEDIE", MAX(nr_pagini) AS "MAXIM", gen
    FROM carte
    GROUP BY gen;
END $$
DELIMITER ;
-- nu o mai folosim