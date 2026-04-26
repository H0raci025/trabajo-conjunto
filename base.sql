CREATE DATABASE IF NOT EXISTS gestion_estudiantes;
USE gestion_estudiantes;

CREATE TABLE IF NOT EXISTS estudiantes (
    id_estudiante INT PRIMARY KEY AUTO_INCREMENT,
    nombre        VARCHAR(50)   NOT NULL,
    apellido      VARCHAR(50)   NOT NULL,
    celular       VARCHAR(15)   NOT NULL,
    nota_final    DECIMAL(4,2)  NOT NULL
);
INSERT INTO estudiantes (nombre, apellido, celular, nota_final) VALUES
('Carlos',    'Mamani',     '71234567', 85.50),
('Lucía',     'Quispe',     '72345678', 92.00),
('Andrés',    'Flores',     '73456789', 67.75),
('Valentina', 'Choque',     '74567890', 78.00),
('Diego',     'Torrez',     '75678901', 35.25), 
('Sofía',     'Condori',    '76789012', 88.50),
('Mateo',     'Huanca',     '77890123', 28.00),  
('Isabella',  'Rojas',      '78901234', 90.75),
('Sebastián', 'Mendoza',    '79012345', 15.00),  
('Camila',    'Vargas',     '70123456', 95.50),
('Gabriel',   'Apaza',      '71111222', 82.25),
('Daniela',   'Limachi',    '72222333', 38.00),  
('Fernando',  'Salinas',    '73333444', 69.50),
('Paola',     'Gutierrez',  '74444555', 77.00),
('Ricardo',   'Benavides',  '75555666', 84.75);
SELECT
    id_estudiante                             AS "ID",
    CONCAT(nombre, ' ', apellido)             AS "Nombre Completo",
    celular                                   AS "Celular",
    nota_final                                AS "Nota Final"
FROM estudiantes
WHERE id_estudiante = ?;
    id_estudiante                             AS "ID",
    CONCAT(nombre, ' ', apellido)             AS "Nombre Completo",
    celular                                   AS "Celular",
    nota_final                                AS "Nota Final"
FROM estudiantes
ORDER BY nota_final DESC
LIMIT 5;
SELECT
    id_estudiante                             AS "ID",
    CONCAT(nombre, ' ', apellido)             AS "Nombre Completo",
    celular                                   AS "Celular",
    nota_final                                AS "Nota Final"
FROM estudiantes
WHERE nota_final < 51
ORDER BY nota_final ASC;
UPDATE estudiantes
SET nota_final = ?
WHERE id_estudiante = ?;
UPDATE estudiantes
SET celular = ?
WHERE id_estudiante = ?;
SELECT * FROM estudiantes ORDER BY id_estudiante ASC;