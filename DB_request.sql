USE sae51;

SELECT * FROM Ordinateur WHERE Marque = 'HP';

-- --------------------------------------------------------------------

SELECT * FROM Ordinateur WHERE Date_achat BETWEEN '2022-01-01' AND '2022-04-30';

-- --------------------------------------------------------------------

SELECT * FROM Ordinateur WHERE Marque = 'HP' AND Date_achat BETWEEN '2022-01-01' AND '2022-04-30';

-- --------------------------------------------------------------------

SELECT COUNT(*) FROM Ordinateur WHERE Marque = 'HP';

-- --------------------------------------------------------------------

SELECT * FROM Ordinateur WHERE RAM BETWEEN  16 AND 32;

-- --------------------------------------------------------------------

SELECT * FROM Ordinateur
JOIN Maintenance ON Ordinateur.ID_machine = Maintenance.ID_machine
WHERE Maintenance.Nom_technicien = 'John Doe';
