-- Datos insertados a tablas -------------------------------------------------------------------------------

-- Insertar datos en la tabla cliente_empresa
INSERT INTO cliente_empresa (nombre, email, telefono, cuit) VALUES
('Empresa A', 'contacto@empresaA.com', 1234567890, 20304050607),
('Empresa B', 'info@empresaB.com', 2345678901, 30807080910),
('Empresa C', 'ventas@empresaC.com', 3456789012, 40102030405),
('Empresa D', 'soporte@empresaD.com', 4567890123, 50203040506),
('Empresa E', 'consultas@empresaE.com', 5678901234, 60304050607),
('Empresa F', 'contacto@empresaF.com', 6789012345, 70405060708),
('Empresa G', 'info@empresaG.com', 7890123456, 80506070809),
('Empresa H', 'ventas@empresaH.com', 8901234567, 90607080910),
('Empresa I', 'soporte@empresaI.com', 9012345678, 10111213141),
('Empresa J', 'consultas@empresaJ.com', 1234567891, 11213141516),
('Empresa K', 'contacto@empresaK.com', 2345678902, 21314151617),
('Empresa L', 'info@empresaL.com', 3456789013, 31415161718),
('Empresa M', 'ventas@empresaM.com', 4567890124, 41516171819),
('Empresa N', 'soporte@empresaN.com', 5678901235, 51617181920),
('Empresa O', 'consultas@empresaO.com', 6789012346, 61718192021);

-- Insertar datos en la tabla vendedor
INSERT INTO vendedor (id_vendedor, nombre, apellido, documento, email, telefono, cliente) VALUES
(101, 'Juan', 'Pérez', 1122338455, 'juan.perez@empresaA.com', 1234567890, 1),
(102, 'Ana', 'Gómez', 2233445566, 'ana.gomez@empresaB.com', 2345678901, 2),
(103, 'Luis', 'Martínez', 3344556677, 'luis.martinez@empresaC.com', 3456789012, 3),
(104, 'María', 'Rodríguez', 4455667788, 'maria.rodriguez@empresaD.com', 4567890123, 4),
(105, 'Pedro', 'Sánchez', 5566778899, 'pedro.sanchez@empresaE.com', 5678901234, 5),
(106, 'Laura', 'López', 6677889900, 'laura.lopez@empresaF.com', 6789012345, 6),
(107, 'Carlos', 'Torres', 7788990011, 'carlos.torres@empresaG.com', 7890123456, 7),
(108, 'Sofía', 'García', 8899001122, 'sofia.garcia@empresaH.com', 8901234567, 8),
(109, 'Mario', 'Fernández', 9900112233, 'mario.fernandez@empresaI.com', 9012345678, 9),
(110, 'Isabel', 'Mendoza', 1011122233, 'isabel.mendoza@empresaJ.com', 1234567891, 10),
(111, 'Ricardo', 'Jiménez', 1122334456, 'ricardo.jimenez@empresaK.com', 2345678902, 11),
(112, 'Natalia', 'Castro', 2233445567, 'natalia.castro@empresaL.com', 3456789013, 12),
(113, 'Gabriel', 'Ponce', 3344556678, 'gabriel.ponce@empresaM.com', 4567890124, 13),
(114, 'Elena', 'Rivas', 4455667789, 'elena.rivas@empresaN.com', 5678901235, 14),
(115, 'Felipe', 'Vega', 5566778890, 'felipe.vega@empresaO.com', 6789012346, 15);


-- Insertar datos en la tabla facturacion_venta
INSERT INTO facturacion_venta (numero_factura, numero_remito, descuento_mayorista, precio_final) VALUES
(1001, 2001, 10, 1500),
(1002, 2002, 15, 2000),
(1003, 2003, 20, 2500),
(1004, 2004, 25, 3000),
(1005, 2005, 30, 3500),
(1006, 2006, 5, 4000),
(1007, 2007, 10, 4500),
(1008, 2008, 15, 5000),
(1009, 2009, 20, 5500),
(1010, 2010, 25, 6000),
(1011, 2011, 30, 6500),
(1012, 2012, 5, 7000),
(1013, 2013, 10, 7500),
(1014, 2014, 15, 8000),
(1015, 2015, 20, 8500);

-- Insertar datos en la tabla almacen
INSERT INTO almacen (stock_producto, proximo_ingreso) VALUES
(100, '2024-09-15 08:00:00'),
(150, '2024-09-20 08:00:00'),
(200, '2024-09-25 08:00:00'),
(250, '2024-10-01 08:00:00'),
(300, '2024-10-10 08:00:00'),
(350, '2024-10-15 08:00:00'),
(400, '2024-10-20 08:00:00'),
(450, '2024-10-25 08:00:00'),
(500, '2024-11-01 08:00:00'),
(550, '2024-11-10 08:00:00'),
(600, '2024-11-15 08:00:00'),
(650, '2024-11-20 08:00:00'),
(700, '2024-12-01 08:00:00'),
(750, '2024-12-10 08:00:00'),
(800, '2024-12-15 08:00:00');

-- Insertar datos en la tabla empleado_preparacion
INSERT INTO empleado_preparacion (nombre, apellido, documento, categoria, sector, facturacion) VALUES
('Luis', 'García', 1122334455, 1, 'Preparación', 1),
('Ana', 'Martínez', 2233445566, 2, 'Preparación', 2),
('Pedro', 'Hernández', 3344556677, 3, 'Preparación', 3),
('Isabel', 'López', 4455667788, 1, 'Preparación', 4),
('Sergio', 'Romero', 5566778899, 2, 'Preparación', 5),
('María', 'Torres', 6677889900, 3, 'Preparación', 6),
('Carlos', 'Reyes', 7788990011, 1, 'Preparación', 7),
('Laura', 'Vargas', 8899001122, 2, 'Preparación', 8),
('Jorge', 'Paredes', 9900112233, 3, 'Preparación', 9),
('Natalia', 'Gómez', 1011122233, 1, 'Preparación', 10),
('Miguel', 'Castro', 1122334456, 2, 'Preparación', 11),
('Paola', 'Rivas', 2233445567, 3, 'Preparación', 12),
('Fernando', 'Salazar', 3344556678, 1, 'Preparación', 13),
('Carmen', 'Mendoza', 4455667789, 2, 'Preparación', 14),
('Eduardo', 'Figueroa', 5566778890, 3, 'Preparación', 15);

-- Insertar datos en la tabla productos
INSERT INTO productos (id_productos, detalles, tipo, precio_venta, almacen, empl_preparacion) VALUES
(122, 'Producto A - Descripción', 'Tipo A', 100, 1, 1),
(233, 'Producto B - Descripción', 'Tipo B', 150, 2, 2),
(344, 'Producto C - Descripción', 'Tipo C', 200, 3, 3),
(455, 'Producto D - Descripción', 'Tipo D', 250, 4, 4),
(566, 'Producto E - Descripción', 'Tipo E', 300, 5, 5),
(677, 'Producto F - Descripción', 'Tipo F', 350, 6, 6),
(788, 'Producto G - Descripción', 'Tipo G', 400, 7, 7),
(899, 'Producto H - Descripción', 'Tipo H', 450, 8, 8),
(900, 'Producto I - Descripción', 'Tipo I', 500, 9, 9),
(1010, 'Producto J - Descripción', 'Tipo J', 550, 10, 10),
(1111, 'Producto K - Descripción', 'Tipo K', 600, 11, 11),
(1212, 'Producto L - Descripción', 'Tipo L', 650, 12, 12),
(1313, 'Producto M - Descripción', 'Tipo M', 700, 13, 13),
(1414, 'Producto N - Descripción', 'Tipo N', 750, 14, 14),
(1515, 'Producto O - Descripción', 'Tipo O', 800, 15, 15);

-- Insertar datos en la tabla empleado_almacen
INSERT INTO empleado_almacen (nombre, apellido, documento, categoria, sector_almacen) VALUES
('Fernando', 'Méndez', 1122334455, 1, 1),
('Claudia', 'García', 2233445566, 2, 2),
('Oscar', 'López', 3344556677, 1, 3),
('Marta', 'Hernández', 4455667788, 2, 4),
('Ricardo', 'Pérez', 5566778899, 1, 5),
('Patricia', 'Romero', 6677889900, 2, 6),
('Alejandro', 'Mendoza', 7788990011, 1, 7),
('Gabriela', 'Vargas', 8899001122, 2, 8),
('Julio', 'Salazar', 9900112233, 1, 9),
('Carolina', 'Reyes', 1011122233, 2, 10),
('José', 'Rivas', 1122334456, 1, 11),
('Lucía', 'Torres', 2233445567, 2, 12),
('Javier', 'Castro', 3344556678, 1, 13),
('Rosa', 'Paredes', 4455667789, 2, 14),
('Héctor', 'Gómez', 5566778890, 1, 15);

-- Insertar datos en la tabla venta
INSERT INTO venta (id_productos, tipo, precio_venta, id_vendedor, empl_almacen, fecha_venta) VALUES
(122, 'Venta A', 1000, 101, 1, '2023-01-10 10:00:00'),
(233, 'Venta B', 1500, 102, 2, '2023-01-12 11:00:00'),
(344,'Venta C', 2000, 103, 3, '2023-01-15 14:00:00'),
(455, 'Venta D', 2500, 104, 4, '2023-01-20 09:30:00'),
(566, 'Venta E', 3000, 105, 5, '2023-01-25 16:45:00'),
(677, 'Venta F', 3500, 101, 6, '2023-02-01 13:15:00'),
(788, 'Venta G', 4000, 106, 7, '2023-02-05 08:00:00'),
(899, 'Venta H', 4500, 103, 8, '2023-02-10 10:30:00'),
(900, 'Venta I', 5000, 101, 9, '2023-02-15 15:00:00'),
(1010, 'Venta J', 5500, 106, 10, '2023-02-20 12:00:00'),
(1111, 'Venta K', 6000, 105, 11, '2023-02-25 17:00:00'),
(1212, 'Venta L', 6500, 111, 12, '2023-03-01 09:00:00'),
(1313, 'Venta M', 7000, 115, 13, '2023-03-05 11:30:00'),
(1414, 'Venta N', 7500, 112, 14, '2023-03-10 14:15:00'),
(1515, 'Venta O', 8000, 112, 15, '2023-03-15 13:45:00');

-- Insertar datos en la tabla envio
INSERT INTO envio (facturacion, cantidad_bultos, peso_envio, valor_declarado, fecha_envio) VALUES
(1, 10, 100, 1500, '2023-01-11 09:00:00'),
(2, 15, 150, 2000, '2023-01-13 10:30:00'),
(3, 20, 200, 2500, '2023-01-16 11:00:00'),
(4, 25, 250, 3000, '2023-01-21 12:00:00'),
(5, 30, 300, 3500, '2023-01-26 08:30:00'),
(6, 35, 350, 4000, '2023-02-02 14:00:00'),
(7, 40, 400, 4500, '2023-02-06 15:30:00'),
(8, 45, 450, 5000, '2023-02-11 10:15:00'),
(9, 50, 500, 5500, '2023-02-16 12:45:00'),
(10, 55, 550, 6000, '2023-02-21 11:00:00'),
(11, 60, 600, 6500, '2023-02-26 09:45:00'),
(12, 65, 650, 7000, '2023-03-02 13:30:00'),
(13, 70, 700, 7500, '2023-03-06 16:00:00'),
(14, 75, 750, 8000, '2023-03-11 14:15:00'),
(15, 80, 800, 8500, '2023-03-16 11:30:00');

-- Insertar datos en la tabla proveedores_fabricantes
INSERT INTO proveedores_fabricantes (nombre, email, telefono, cuit) VALUES
('Proveedor A', 'proveedorA@domain.com', 1234567890, 20123456789),
('Proveedor B', 'proveedorB@domain.com', 2345678901, 30234567890),
('Proveedor C', 'proveedorC@domain.com', 3456789012, 40345678901),
('Proveedor D', 'proveedorD@domain.com', 4567890123, 50456789012),
('Proveedor E', 'proveedorE@domain.com', 5678901234, 60567890123),
('Proveedor F', 'proveedorF@domain.com', 6789012345, 70678901234),
('Proveedor G', 'proveedorG@domain.com', 7890123456, 80789012345),
('Proveedor H', 'proveedorH@domain.com', 8901234567, 90890123456),
('Proveedor I', 'proveedorI@domain.com', 9012345678, 10901234567),
('Proveedor J', 'proveedorJ@domain.com', 1234567891, 21012345678),
('Proveedor K', 'proveedorK@domain.com', 2345678902, 32123456789),
('Proveedor L', 'proveedorL@domain.com', 3456789013, 43234567890),
('Proveedor M', 'proveedorM@domain.com', 4567890124, 54345678901),
('Proveedor N', 'proveedorN@domain.com', 5678901235, 65456789012),
('Proveedor O', 'proveedorO@domain.com', 6789012346, 76567890123);

-- Insertar datos en la tabla compras_a_proveedor
INSERT INTO compras_a_proveedor (id_envio, sector_almacen, cantidad_bultos, peso_envio, valor_declarado, fecha_compra, id_producto) VALUES
(1, 1, 10, 100, 1500, '2023-01-11 09:00:00', 122),
(2, 2, 15, 150, 2000, '2023-01-13 10:30:00', 233),
(3, 3, 20, 200, 2500, '2023-01-16 11:00:00', 344),
(4, 4, 25, 250, 3000, '2023-01-21 12:00:00', 455),
(5, 5, 30, 300, 3500, '2023-01-26 08:30:00', 566),
(6, 6, 35, 350, 4000, '2023-02-02 14:00:00', 677),
(7, 7, 40, 400, 4500, '2023-02-06 15:30:00', 788),
(8, 8, 45, 450, 5000, '2023-02-11 10:15:00', 899),
(9, 9, 50, 500, 5500, '2023-02-16 12:45:00', 900),
(10, 10, 55, 550, 6000, '2023-02-21 11:00:00', 1010),
(11, 11, 60, 600, 6500, '2023-02-26 09:45:00', 1111),
(12, 12, 65, 650, 7000, '2023-03-02 13:30:00', 1212),
(13, 13, 70, 700, 7500, '2023-03-06 16:00:00', 1313),
(14, 14, 75, 750, 8000, '2023-03-11 14:15:00', 1414),
(15, 15, 80, 800, 8500, '2023-03-16 11:30:00', 1515);

-- Insertar datos en la tabla factura_proveedor
INSERT INTO factura_proveedor (proveedor, numero_factura, numero_remito, descuento_mayorista, precio_final, cantidad_bultos, peso_envio, valor_declarado, id_producto) VALUES
(1, 1001, 2001, 10, 1500, 10, 100, 1500, 122),
(2, 1002, 2002, 15, 2000, 15, 150, 2000, 233),
(3, 1003, 2003, 20, 2500, 20, 200, 2500, 344),
(4, 1004, 2004, 25, 3000, 25, 250, 3000, 455),
(5, 1005, 2005, 30, 3500, 30, 300, 3500, 566),
(6, 1006, 2006, 5, 4000, 35, 350, 4000, 677),
(7, 1007, 2007, 10, 4500, 40, 400, 4500, 788),
(8, 1008, 2008, 15, 5000, 45, 450, 5000, 899),
(9, 1009, 2009, 20, 5500, 50, 500, 5500, 900),
(10, 1010, 2010, 25, 6000, 55, 550, 6000, 1010),
(11, 1011, 2011, 30, 6500, 60, 600, 6500, 1111),
(12, 1012, 2012, 5, 7000, 65, 650, 7000, 1212),
(13, 1013, 2013, 10, 7500, 70, 700, 7500, 1313),
(14, 1014, 2014, 15, 8000, 75, 750, 8000, 1414),
(15, 1015, 2015, 20, 8500, 80, 800, 8500, 1515);

-- Insertar datos en la tabla transporte_terrestre
INSERT INTO transporte_terrestre (id_envio, peso_envio, valor_declarado, cliente, fecha_envio_tt) VALUES
(1, 100, 1500, 1, '2023-01-11 09:00:00'),
(2, 150, 2000, 2, '2023-01-13 10:30:00'),
(3, 200, 2500, 1, '2023-01-16 11:00:00'),
(4, 250, 3000, 2, '2023-01-21 12:00:00'),
(5, 300, 3500, 1, '2023-01-26 08:30:00'),
(6, 350, 4000, 6, '2023-02-02 14:00:00'),
(7, 400, 4500, 3, '2023-02-06 15:30:00'),
(8, 450, 5000, 1, '2023-02-11 10:15:00'),
(9, 500, 5500, 3, '2023-02-16 12:45:00'),
(10, 550, 6000, 3, '2023-02-21 11:00:00'),
(11, 600, 6500, 3, '2023-02-26 09:45:00'),
(12, 650, 7000, 5, '2023-03-02 13:30:00'),
(13, 700, 7500, 6, '2023-03-06 16:00:00'),
(14, 750, 8000, 4, '2023-03-11 14:15:00'),
(15, 800, 8500, 4, '2023-03-16 11:30:00');

-- Insertar datos en la tabla transporte_aereo
INSERT INTO transporte_aereo (peso_envio, valor_declarado, id_envio, facturacion, fecha_envio_ta) VALUES
(100, 1500, 1, 1, '2023-01-10 10:00:00'),
(150, 2000, 2, 2, '2023-01-12 11:00:00'),
(200, 2500, 3, 3, '2023-01-15 14:00:00'),
(250, 3000, 4, 4, '2023-01-20 09:30:00'),
(300, 3500, 5, 5, '2023-01-25 16:45:00'),
(350, 4000, 6, 6, '2023-02-01 13:15:00'),
(400, 4500, 7, 7, '2023-02-05 08:00:00'),
(450, 5000, 8, 8, '2023-02-10 10:30:00'),
(500, 5500, 9, 9, '2023-02-15 15:00:00'),
(550, 6000, 10, 10, '2023-02-20 12:00:00'),
(600, 6500, 11, 11, '2023-02-25 17:00:00'),
(650, 7000, 12, 12, '2023-03-01 09:00:00'),
(700, 7500, 13, 13, '2023-03-05 11:30:00'),
(750, 8000, 14, 14, '2023-03-10 14:15:00'),
(800, 8500, 15, 15, '2023-03-15 13:45:00');

-- Insertar datos en la tabla transporte_maritimo
INSERT INTO transporte_maritimo (peso_envio, valor_declarado, id_envio, facturacion, fecha_envio_tm) VALUES
(100, 1500, 1, 1, '2023-01-10 10:00:00'),
(150, 2000, 2, 2, '2023-01-12 11:00:00'),
(200, 2500, 3, 3, '2023-01-15 14:00:00'),
(250, 3000, 4, 4, '2023-01-20 09:30:00'),
(300, 3500, 5, 5, '2023-01-25 16:45:00'),
(350, 4000, 6, 6, '2023-02-01 13:15:00'),
(400, 4500, 7, 7, '2023-02-05 08:00:00'),
(450, 5000, 8, 8, '2023-02-10 10:30:00'),
(500, 5500, 9, 9, '2023-02-15 15:00:00'),
(550, 6000, 10, 10, '2023-02-20 12:00:00'),
(600, 6500, 11, 11, '2023-02-25 17:00:00'),
(650, 7000, 12, 12, '2023-03-01 09:00:00'),
(700, 7500, 13, 13, '2023-03-05 11:30:00'),
(750, 8000, 14, 14, '2023-03-10 14:15:00'),
(800, 8500, 15, 15, '2023-03-15 13:45:00');
