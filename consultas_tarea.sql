CREATE TABLE empleados(
	id INT NOT NULL ,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario INT,
    PRIMARY KEY(id)
);

INSERT INTO empleados(id, nombre, departamento, salario) VALUES
(1, 'Ana García', 'Recursos Humanos', 32000),
(2, 'Luis Pérez', 'Marketing', 35000),
(3, 'Carlos Díaz', 'Ventas', 27000),
(4, 'María López', 'Contabilidad', 40000),
(5, 'Pedro Martínez', 'Desarrollo', 45000),
(6, 'Julia Fernández', 'Recursos Humanos', 31000),
(7, 'Juan Rodríguez', 'Marketing', 38000),
(8, 'Elena Sánchez', 'Ventas', 26000),
(9, 'David González', 'Contabilidad', 42000),
(10, 'Raquel Pérez', 'Desarrollo', 46000),
(11, 'Fernando García', 'Recursos Humanos', 33000),
(12, 'Isabel Ruiz', 'Marketing', 36000),
(13, 'Sergio Gómez', 'Ventas', 28000),
(14, 'Carmen Romero', 'Contabilidad', 39000),
(15, 'José Torres', 'Desarrollo', 48000);

UPDATE empleados SET salario = 30000 WHERE id = 3;

SELECT * FROM empleados 
WHERE departamento = 'Ventas';

SELECT departamento, AVG(salario) AS salario_promedio
FROM empleados
GROUP BY departamento;

SELECT departamento FROM empleados 
GROUP BY departamento;

SELECT nombre, salario
FROM empleados
ORDER BY salario ASC
LIMIT 2;