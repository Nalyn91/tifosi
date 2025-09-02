-- ============================================
-- Table : ingredient
-- ============================================
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES
(1, 'Ail'),
(2, 'Ananas'),
(3, 'Artichaut'),
(4, 'Bacon'),
(5, 'Base tomate'),
(6, 'Base crème'),
(7, 'Champignon'),
(8, 'Chèvre'),
(9, 'Cresson'),
(10, 'Mozarella'),
(11, 'Gorgonzola'),
(12, 'Jambon cuit'),
(13, 'Jambon fumé'),
(14, 'Oeuf'),
(15, 'Oignon'),
(16, 'Olive noire'),
(17, 'Olive verte'),
(18, 'Parmesan'),
(19, 'Piment'),
(20, 'Poivre'),
(21, 'Pomme de terre'),
(22, 'Raclette'),
(23, 'Salami'),
(24, 'Tomate cerise'),
(25, 'Persil'),
(26, 'Thon'),
(27, 'Saumon fumé'),
(28, 'Poivrons'),
(29, 'Gruyère');

-- ============================================
-- Table : focaccia
-- ============================================
INSERT INTO focaccia (id_focaccia, nom_focaccia, prix, ingredients) VALUES
(1, 'Mozzacia', 8, 'Base tomate, Mozarella, Cresson, Jambon fumé, Ail'),
(2, 'Gorgonzollaccia', 10, 'Base tomate, Gorgonzola, Cresson, Ail, Champignon'),
(3, 'Raclaccia', 12, 'Base tomate, Raclette, Cresson, Ail, Champignon, Persil'),
(4, 'Emmentalaccia', 11, 'Base crème, Emmental, Cresson, Champignon, Parmesan'),
(5, 'Tradizione', 10, 'Base tomate, Mozarella, Cresson, Jambon cuit, Champignon'),
(6, 'Hawaienne', 12, 'Base tomate, Mozarella, Cresson, Bacon, Ananas, Piment'),
(7, 'Américaine', 11, 'Base tomate, Mozarella, Cresson, Bacon, Pomme de terre'),
(8, 'Paysanne', 13, 'Base crème, Chèvre, Cresson, Pomme de terre, Jambon cuit');

-- ============================================
-- Table : boissons
-- ============================================
INSERT INTO boissons (id, nom_boisson, prix, ingrédients) VALUES
(1, 'Coca-Cola', 2.50, 'Eau, Sucre, Arômes, Caféine'),
(2, 'Pepsi', 2.40, 'Eau, Sucre, Arômes, Caféine'),
(3, 'Cristalline', 1.00, 'Eau minérale'),
(4, 'Lipton Ice Tea', 2.20, 'Eau, Thé, Sucre, Arômes'),
(5, 'Monster', 3.00, 'Eau, Caféine, Taurine, Sucre');

-- ============================================
-- Table : focaccia_ingredient
-- ============================================
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES
-- Mozzacia
(1, 5), (1, 10), (1, 9), (1, 13), (1, 1),
-- Gorgonzollaccia
(2, 5), (2, 11), (2, 9), (2, 1), (2, 7),
-- Raclaccia
(3, 5), (3, 22), (3, 9), (3, 1), (3, 7), (3, 25),
-- Emmentalaccia
(4, 6), (4, 10), (4, 9), (4, 7), (4, 18),
-- Tradizione
(5, 5), (5, 10), (5, 9), (5, 12), (5, 7),
-- Hawaienne
(6, 5), (6, 10), (6, 9), (6, 4), (6, 2), (6, 19),
-- Américaine
(7, 5), (7, 10), (7, 9), (7, 4), (7, 21),
-- Paysanne
(8, 6), (8, 8), (8, 9), (8, 21), (8, 12);
