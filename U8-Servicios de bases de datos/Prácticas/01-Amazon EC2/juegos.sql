USE juegos;

-- Crear la tabla de Consolas
CREATE TABLE consolas (
    id_consola INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fabricante VARCHAR(100),
    anio_lanzamiento INT
);

-- Crear la tabla de juegos
CREATE TABLE juegos (
    id_juego INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    genero VARCHAR(50),
    desarrollador VARCHAR(100),
    anio_lanzamiento INT
);

-- Crear la tabla intermedia consola_Juego
CREATE TABLE consola_juego (
    id_consola INT,
    id_juego INT,
    PRIMARY KEY (id_consola, id_juego),
    FOREIGN KEY (id_consola) REFERENCES consolas(id_consola) ON DELETE CASCADE,
    FOREIGN KEY (id_juego) REFERENCES juegos(id_juego) ON DELETE CASCADE
);

-- Datos de ejemplo para consolas
INSERT INTO consolas (nombre, fabricante, anio_lanzamiento)
VALUES 
('PlayStation 5', 'Sony', 2020),
('Xbox Series X', 'Microsoft', 2020),
('Nintendo Switch', 'Nintendo', 2017);

-- Datos de ejemplo para juegos
INSERT INTO juegos (titulo, genero, desarrollador, anio_lanzamiento)
VALUES 
('The Last of Us Part II', 'Acción-Aventura', 'Naughty Dog', 2020),
('Halo Infinite', 'FPS', '343 Industries', 2021),
('The Legend of Zelda: Breath of the Wild', 'Aventura', 'Nintendo', 2017);

-- Datos de ejemplo para Consola_Juego (relación muchos a muchos)
INSERT INTO consola_juego (id_consola, id_juego)
VALUES 
(1, 1), -- The Last of Us Part II para PlayStation 5
(2, 2), -- Halo Infinite para Xbox Series X
(3, 3); -- Breath of the Wild para Nintendo Switch

