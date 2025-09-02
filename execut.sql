-- ============================================
-- Bloc 1 : Focaccias
-- ============================================

-- 1. Afficher la liste des noms des focaccias par ordre alphabétique 
SELECT nom_focaccia
FROM focaccia
ORDER BY nom_focaccia ASC;

-- 3. Afficher le prix moyen des focaccias
SELECT AVG(prix) AS prix_moyen
FROM focaccia;

-- 6. Afficher le nom et le nombre d'ingrédients pour chaque focaccia
SELECT f.nom_focaccia, COUNT(fi.id_ingredient) AS nb_ingredients
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
GROUP BY f.nom_focaccia;

-- 7. Afficher le nom de la focaccia qui a le plus d'ingrédients
SELECT f.nom_focaccia
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
GROUP BY f.nom_focaccia
ORDER BY COUNT(fi.id_ingredient) DESC
LIMIT 1;

-- 8. Afficher la liste des focaccias qui contiennent de l'ail
SELECT DISTINCT f.nom_focaccia
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
JOIN ingredient i ON fi.id_ingredient = i.id_ingredient
WHERE i.nom_ingredient = 'ail';

-- 10. Afficher la liste des focaccias qui n'ont pas de champignons
SELECT f.nom_focaccia
FROM focaccia f
WHERE f.id_focaccia NOT IN (
    SELECT fi.id_focaccia
    FROM focaccia_ingredient fi
    JOIN ingredient i ON fi.id_ingredient = i.id_ingredient
    WHERE i.nom_ingredient = 'champignons'
);

-- ============================================
-- Bloc 2 : Ingrédients
-- ============================================

-- 2. Afficher le nombre total d'ingrédients
SELECT COUNT(*) AS total_ingredients
FROM ingredient;

-- 5. Afficher la liste des ingrédients Raclaccia
SELECT i.nom_ingredient
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
JOIN ingredient i ON fi.id_ingredient = i.id_ingredient
WHERE f.nom_focaccia = 'Raclaccia';

-- 9. Afficher la liste des ingrédients inutilisés 
SELECT i.nom_ingredient
FROM ingredient i
LEFT JOIN focaccia_ingredient fi ON i.id_ingredient = fi.id_ingredient
WHERE fi.id_focaccia IS NULL;

-- ============================================
-- Bloc 3 : Boissons
-- ============================================

-- 4. Afficher la liste des boissons avec leur marque, triée par nom de boisson
SELECT nom_boissons
FROM boissons
ORDER BY marque ASC;
