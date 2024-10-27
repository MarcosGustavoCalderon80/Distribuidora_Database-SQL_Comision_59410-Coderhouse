DROP DATABASE IF EXISTS distribuidora;

CREATE DATABASE distribuidora;
USE distribuidora;

CREATE TABLE cliente_empresa (
    id_cliente INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50),
    email VARCHAR(80),
    telefono BIGINT NOT NULL,
    cuit BIGINT NOT NULL,
    PRIMARY KEY (id_cliente)
);

CREATE TABLE vendedor (
    id_vendedor INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    documento BIGINT,
    email VARCHAR(80) UNIQUE,
    telefono BIGINT NOT NULL,
    cliente INT NOT NULL,
    FOREIGN KEY (cliente) REFERENCES cliente_empresa(id_cliente),
    PRIMARY KEY (id_vendedor)
);

CREATE TABLE facturacion_venta (
    id_facturacion INT NOT NULL AUTO_INCREMENT,
    numero_factura INT NOT NULL,
    numero_remito INT NOT NULL,
    descuento_mayorista INT NOT NULL,
    precio_final INT NOT NULL,
    PRIMARY KEY (id_facturacion)
);

CREATE TABLE almacen (
    id_almacen INT NOT NULL AUTO_INCREMENT,
    stock_producto INT NOT NULL,
    proximo_ingreso DATETIME,
    PRIMARY KEY (id_almacen)
);

CREATE TABLE empleado_preparacion (
    id_emp_prepa INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    documento BIGINT,
    categoria INT,
    sector VARCHAR(50),
    facturacion INT NOT NULL,
    FOREIGN KEY (facturacion) REFERENCES facturacion_venta(id_facturacion),
    PRIMARY KEY (id_emp_prepa)
);

CREATE TABLE productos (
    id_productos INT NOT NULL AUTO_INCREMENT,
    detalles VARCHAR(200) NOT NULL,
    tipo VARCHAR(50),
    precio_venta INT NOT NULL,
    almacen INT NOT NULL,
    FOREIGN KEY (almacen) REFERENCES almacen(id_almacen),
    empl_preparacion INT NOT NULL,
    FOREIGN KEY (empl_preparacion) REFERENCES empleado_preparacion(id_emp_prepa),
    PRIMARY KEY (id_productos)
);

CREATE TABLE empleado_almacen (
    id_emp_almacen INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    documento BIGINT,
    categoria INT,
    sector_almacen INT NOT NULL,
    FOREIGN KEY (sector_almacen) REFERENCES almacen(id_almacen),
    PRIMARY KEY (id_emp_almacen)
);

CREATE TABLE venta (
    id_venta INT NOT NULL AUTO_INCREMENT,
    id_productos INT NOT NULL,
    fecha_venta DATETIME,
    tipo VARCHAR(50),
    precio_venta INT NOT NULL,
    id_vendedor INT NOT NULL,
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor),
    empl_almacen INT NOT NULL,
    FOREIGN KEY (empl_almacen) REFERENCES empleado_almacen(id_emp_almacen),
    FOREIGN KEY (id_productos) REFERENCES productos (id_productos),
    PRIMARY KEY (id_venta)
);

CREATE TABLE envio (
    envio_id INT NOT NULL AUTO_INCREMENT,
    facturacion INT NOT NULL,
    fecha_envio DATETIME,
    FOREIGN KEY (facturacion) REFERENCES facturacion_venta(id_facturacion),
    cantidad_bultos INT NOT NULL,
    peso_envio INT NOT NULL,
    valor_declarado INT NOT NULL,
    PRIMARY KEY (envio_id)
);

CREATE TABLE proveedores_fabricantes (
    id_proveedores_f INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50),
    email VARCHAR(80) NOT NULL,
    telefono BIGINT NOT NULL,
    cuit BIGINT NOT NULL,
    PRIMARY KEY (id_proveedores_f)
);

CREATE TABLE compras_a_proveedor (
    id_compra_proveedor INT NOT NULL AUTO_INCREMENT,
    id_envio INT NOT NULL,
    id_producto INT NOT NULL,
    fecha_compra DATETIME,
    FOREIGN KEY (id_envio) REFERENCES envio (envio_id),
    sector_almacen INT,
    FOREIGN KEY (sector_almacen) REFERENCES almacen(id_almacen),
    cantidad_bultos INT NOT NULL,
    peso_envio INT NOT NULL,
    valor_declarado INT,
    PRIMARY KEY (id_compra_proveedor)
);

CREATE TABLE factura_proveedor (
    id_facturacion_proveedor INT NOT NULL AUTO_INCREMENT,
    proveedor INT NOT NULL,
    FOREIGN KEY (proveedor) REFERENCES proveedores_fabricantes(id_proveedores_f),
    numero_factura INT NOT NULL UNIQUE,
    numero_remito INT NOT NULL UNIQUE,
    id_producto INT NOT NULL,
    descuento_mayorista INT NOT NULL,
    precio_final INT NOT NULL,
    cantidad_bultos INT NOT NULL,
    peso_envio INT NOT NULL,
    valor_declarado INT NOT NULL,
    PRIMARY KEY (id_facturacion_proveedor)
);

CREATE TABLE venta_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_vendedor INT NOT NULL,
    id_producto INT,
    tipo VARCHAR(255),
    precio_venta INT NOT NULL,
    fecha_venta DATETIME,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_producto) REFERENCES productos(id_productos)
);

CREATE TABLE historial_precios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_producto INT,
    precio_anterior INT NOT NULL,
    precio_nuevo INT NOT NULL,
    fecha_cambio DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_producto) REFERENCES productos(id_productos)
);

CREATE TABLE transporte_terrestre (
    id_trans_terrestre INT NOT NULL AUTO_INCREMENT,
    id_envio INT NOT NULL,
    fecha_envio_tt DATETIME,
    FOREIGN KEY (id_envio) REFERENCES envio(envio_id),
    peso_envio INT,
    valor_declarado INT,
    cliente INT NOT NULL,
    FOREIGN KEY (cliente) REFERENCES cliente_empresa(id_cliente),
    PRIMARY KEY (id_trans_terrestre)
);

CREATE TABLE transporte_aereo (
    id_trans_aereo INT NOT NULL AUTO_INCREMENT,
    peso_envio INT,
    fecha_envio_ta DATETIME,
    valor_declarado INT,
    id_envio INT NOT NULL,
    FOREIGN KEY (id_envio) REFERENCES envio(envio_id),
    facturacion INT NOT NULL,
    FOREIGN KEY (facturacion) REFERENCES factura_proveedor(id_facturacion_proveedor),
    PRIMARY KEY (id_trans_aereo)
);

CREATE TABLE transporte_maritimo (
    id_trans_maritimo INT NOT NULL AUTO_INCREMENT,
    peso_envio INT,
    fecha_envio_tm DATETIME,
    valor_declarado INT,
    id_envio INT NOT NULL,
    FOREIGN KEY (id_envio) REFERENCES envio(envio_id),
    facturacion INT NOT NULL,
    FOREIGN KEY (facturacion) REFERENCES factura_proveedor(id_facturacion_proveedor),
    PRIMARY KEY (id_trans_maritimo)
);


