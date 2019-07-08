-- SQL - Partie 8 : Les jointures
-- Exercice 1 : Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework l'afficher aussi.
SELECT frameworks.name AS 'Nom framework', languages.name AS 'Nom langage'
FROM languages
LEFT JOIN frameworks ON frameworks.languagesId = languages.id;
-- Exercice 2 : Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher.
SELECT frameworks.name AS 'Nom framework', languages.name AS 'Nom langage'
FROM frameworks
INNER JOIN languages ON frameworks.languagesId = languages.id
WHERE frameworks.name IS NOT NULL;
-- MARCHE AUSSI AVEC
SELECT frameworks.name AS 'Nom framework', languages.name AS 'Nom langage'
FROM languages
INNER JOIN frameworks ON frameworks.languagesId = languages.id;
-- Exercice 3 : Afficher le nombre de framework qu'a un langage.
SELECT COUNT(frameworks.name) AS 'Nombre de framework possedant un langage :'
FROM languages
INNER JOIN frameworks ON frameworks.languagesId = languages.id;
-- Exercice 4 : Afficher les langages ayant plus de 3 frameworks.
SELECT languages.name, COUNT(frameworks.name)
FROM languages
INNER JOIN frameworks ON frameworks.languagesId = languages.id
GROUP BY languages.name
HAVING COUNT(frameworks.name) > 3;
