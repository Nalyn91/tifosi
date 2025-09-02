-- ============================================
-- Création de la base de données
-- ============================================
CREATE DATABASE IF NOT EXISTS tifosi CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE tifosi;

-- ============================================
-- Table : boissons
-- ============================================
CREATE TABLE boissons (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    prix FLOAT,
    ingrédients TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ============================================
-- Table : focaccia
-- ============================================
CREATE TABLE focaccia (
    id_focaccia INT PRIMARY KEY AUTO_INCREMENT,
    nom_focaccia VARCHAR(100) NOT NULL,
    prix FLOAT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ============================================
-- Table : ingredient
-- ============================================
CREATE TABLE ingredient (
    id_ingredient INT PRIMARY KEY AUTO_INCREMENT,
    nom_ingredient VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ============================================
-- Table : marque
-- ============================================
CREATE TABLE marque (
    id_marque INT PRIMARY KEY AUTO_INCREMENT,
    nom_marque VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ============================================
-- Table de liaison : focaccia_ingredient
-- ============================================
CREATE TABLE focaccia_ingredient (
    id_focaccia INT,
    id_ingredient INT,
    PRIMARY KEY (id_focaccia, id_ingredient),
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia) ON DELETE CASCADE,
    FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
