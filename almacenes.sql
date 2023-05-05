-- Crear la base de datos Almacenes
CREATE DATABASE almacenes;
USE almacenes;

-- Crear la tabla Almacenes
CREATE TABLE Almacenes (
    Codigo INT PRIMARY KEY,
    Lugar VARCHAR(255),
    Capacidad INT
);

-- Crear la tabla Cajas
CREATE TABLE Cajas (
    NumReferencia CHAR(5) PRIMARY KEY,
    Contenido VARCHAR(255),
    Valor INT,
    Almacen INT,
    FOREIGN KEY (Almacen) REFERENCES Almacenes(Codigo)
);

-- Insertar 10 registros en la tabla Almacenes
INSERT INTO Almacenes (Codigo, Lugar, Capacidad) VALUES
(101, 'Sevilla', 180),
(102, 'Bilbao', 210),
(103, 'Málaga', 170),
(104, 'Granada', 150),
(105, 'Zaragoza', 230),
(106, 'Oviedo', 190),
(107, 'Santander', 160),
(108, 'Córdoba', 220),
(109, 'Vigo', 180),
(110, 'Alicante', 240);

-- Insertar 10 registros en la tabla Cajas
INSERT INTO Cajas (NumReferencia, Contenido, Valor, Almacen) VALUES
('A0101', 'Libros', 2500, 101),
('A0102', 'Herramientas', 3500, 102),
('A0103', 'Electrodomésticos', 6000, 103),
('A0104', 'Muebles', 8000, 104),
('A0105', 'Cosméticos', 2000, 105),
('A0106', 'Deportes', 4500, 106),
('A0107', 'Bicicletas', 5000, 107),
('A0108', 'Instrumentos', 3000, 108),
('A0109', 'Accesorios', 1500, 109),
('A0110', 'Comida', 4000, 110);