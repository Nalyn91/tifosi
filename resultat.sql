-- ============================================
-- Liste des noms des focaccias par ordre alphabétique
-- ============================================
SELECT nom_focaccia FROM focaccia ORDER BY nom_focaccia ASC;

-- Résultat attendu :
-- Américaine, Emmentalaccia, Gorgonzollaccia, Hawaienne, Mozzacia, Paysanne, Raclaccia, Tradizione

-- Résultat obtenu :  Américaine, Emmentalaccia , Gorgonzollaccia , Hawaienne, Mozaccia , Paysanne , Raclaccia , tradizione

-- ============================================
-- Nombre total d'ingrédients
-- ============================================
SELECT COUNT(*) AS total_ingredients FROM ingredient;

-- Résultat attendu : 29

-- Résultat obtenu : 25

-- Commentaire :
-- Le résultat obtenu est correct

-- ============================================
-- Prix moyen des focaccias
-- ============================================
SELECT ROUND(AVG(prix), 2) AS prix_moyen FROM focaccia;

-- Résultat attendu : 11.38
-- Résultat obtenu : 10,37

-- Commentaire :
-- Résultat proche.

-- ============================================
-- Liste des boissons triées par nom
-- ============================================
SELECT nom_boisson, prix FROM boissons ORDER BY nom_boisson ASC;

-- Résultat attendu :
-- Coca-Cola, Cristalline, Lipton Ice Tea, Monster, Pepsi

-- Résultat obtenu : 
Coca-cola zéro
Coca-cola original
Fanta citron
Fanta orange
Capri-sun
Eau de source 
nom_boisson
Monster energy ultra gold
Monster energy ultra blue
Pepsi Max Zéro
Lipton zéro citron
Lipton Peach
Pepsi


-- Commentaire :
-- Le résultat obtenu liste toutes les boissons différentes

-- ============================================
-- Ingrédients de la focaccia "Raclaccia"
-- ============================================
SELECT i.nom_ingredient
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
JOIN ingredient i ON fi.id_ingredient = i.id_ingredient
WHERE f.nom_focaccia = 'Raclaccia';

-- Résultat attendu :
-- Base tomate, Raclette, Cresson, Ail, Champignon, Persil

-- Résultat obtenu : 
-- Base tomate, Raclette, Cresson, Ail, Champignon, Mozzarella


-- ============================================
-- Nombre d'ingrédients par focaccia
-- ============================================
SELECT f.nom_focaccia, COUNT(fi.id_ingredient) AS nb_ingredients
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
GROUP BY f.nom_focaccia;

-- Résultat attendu :
Américaine
5
Emmentalaccia
5
Gorgonzollaccia
5
Hawaienne
6
Mozaccia
5
Paysanne
5
Raclaccia
6
Tradizione
5

-- Résultat obtenu :
Américaine
5
Emmentalaccia
5
Gorgonzollaccia
5
Hawaienne
6
Mozaccia
5
Paysanne
5
Raclaccia
6
Tradizione
5

-- ============================================
-- Focaccia avec le plus d'ingrédients
-- ============================================
SELECT f.nom_focaccia
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
GROUP BY f.nom_focaccia
ORDER BY COUNT(fi.id_ingredient) DESC
LIMIT 1;

-- Résultat attendu : Raclaccia
-- Résultat obtenu : Hawaïenne

-- Commentaire :


-- ============================================
-- Focaccias contenant de l’ail
-- ============================================
SELECT DISTINCT f.nom_focaccia
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
JOIN ingredient i ON fi.id_ingredient = i.id_ingredient
WHERE i.nom_ingredient = 'Ail';

-- Résultat attendu :
Mozaccia
Gorgonzollaccia
Raclaccia

-- Résultat obtenu : 
Mozaccia
Gorgonzollaccia
Raclaccia


-- ============================================
-- Ingrédients inutilisés
-- ============================================
SELECT i.nom_ingredient
FROM ingredient i
LEFT JOIN focaccia_ingredient fi ON i.id_ingredient = fi.id_ingredient
WHERE fi.id_focaccia IS NULL;

-- Résultat attendu :
-- Tous les ingrédients non utilisés dans les focaccias 

-- Résultat obtenu : 
Artichaut
Oeuf
Oignon
Olive noire
Olive verte
Poivre
Salami
Tomate cerise


-- ============================================
-- Focaccias sans champignons
-- ============================================
SELECT f.nom_focaccia
FROM focaccia f
WHERE f.id_focaccia NOT IN (
    SELECT fi.id_focaccia
    FROM focaccia_ingredient fi
    JOIN ingredient i ON fi.id_ingredient = i.id_ingredient
    WHERE i.nom_ingredient = 'Champignon'
);

-- Résultat attendu : Hawaienne, Américaine, Paysanne , tradizionne , Emmentalaccia , Raclaccia , Mozaccia , Gorgonzollaccia

-- Résultat obtenu : Hawaienne, Américaine, Paysanne , tradizionne , Emmentalaccia , Raclaccia , Mozaccia , Gorgonzollaccia


