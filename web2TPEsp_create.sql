-- Created by Redgate Data Modeler (https://datamodeler.redgate-platform.com)
-- Last modification date: 2026-05-01 22:47:08.728

-- tables
-- Table: CATEGORIA_PRODUCTO
CREATE TABLE CATEGORIA_PRODUCTO (
    id_categoria int  NOT NULL,
    nombre varchar(60)  NOT NULL,
    descripcion varchar(200)  NOT NULL,
    normativa varchar(40)  NOT NULL,
    CONSTRAINT PK_CARACTERISTICAS_PRODUCTO PRIMARY KEY (id_categoria)
);

-- Table: PRODUCTO
CREATE TABLE PRODUCTO (
    id_prod int  NOT NULL,
    id_categoria int  NOT NULL,
    nombre varchar(60)  NOT NULL,
    marca varchar(40)  NOT NULL,
    modelo varchar(60)  NOT NULL,
    precio money  NOT NULL,
    stock int  NOT NULL,
    CONSTRAINT PK_PRODUCTO PRIMARY KEY (id_prod)
);

-- foreign keys
-- Reference: FK_PRODUCTO_CATEGORIA_PRODUCTO (table: PRODUCTO)
ALTER TABLE PRODUCTO ADD CONSTRAINT FK_PRODUCTO_CATEGORIA_PRODUCTO
    FOREIGN KEY (id_categoria)
    REFERENCES CATEGORIA_PRODUCTO (id_categoria)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

