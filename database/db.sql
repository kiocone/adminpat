--users table
CREATE DATABASE adminpatdb;

USE adminpatdb;

CREATE TABLE users (
	id INT(11) NOT NULL AUTO_INCREMENT,
	username varchar(16) NOT NULL,
	password varchar(60) NOT NULL,
	fullname varchar(100) NOT NULL,
	email varchar(50) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE paciente (
	id INT(11) NOT NULL AUTO_INCREMENT,
	--id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY, --en windows xammp
	t_docu varchar(11) NOT NULL,
	num_docu INT(11) NOT NULL,
	nombre varchar(150) NOT NULL,
	sexo varchar(1) NOT NULL,
	direccion varchar(255) NOT NULL,
	telefono varchar(35),
	email varchar(50) NOT NULL,
	fecha_nacimiento varchar(13) NOT NULL,
	description TEXT,
	user_id INT(11) NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT 'current_timestamp',
	--created_at TIMESTAMP NOT NULL, --en windows xampp
	PRIMARY KEY (id)
);
ALTER TABLE paciente ADD CONSTRAINT paciente_fk0 FOREIGN KEY (user_id) REFERENCES users(id);
--ALTER TABLE paciente ADD COLUMN sexo varchar(1) NOT NULL AFTER nombre;

CREATE TABLE entidad (
	id INT(11) NOT NULL AUTO_INCREMENT,
	nit varchar(12) NOT NULL,
	razon_social varchar(100) NOT NULL,
	direccion varchar(100) NOT NULL,
	telefono varchar(30) NOT NULL,
	email varchar(50) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE origen_factura (
	id INT NOT NULL AUTO_INCREMENT,
	origen varchar(30) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE convenio (
	id INT(11) NOT NULL AUTO_INCREMENT,
	nit varchar(15) NOT NULL,
	razon_social varchar(100) NOT NULL,
	direccion varchar(100) NOT NULL,
	telefono varchar(30) NOT NULL,
	email varchar(50) NOT NULL,
	id_entidad INT NOT NULL,
	id_origen INT NOT NULL,
	PRIMARY KEY (id)
);
--ALTER TABLE convenio ADD CONSTRAINT convenio_fk0 FOREIGN KEY (id_entidad) REFERENCES entidad(id);
--ALTER TABLE convenio ADD CONSTRAINT convenio_fk1 FOREIGN KEY (id_origen) REFERENCES origen_factura(id);

CREATE TABLE estudios (
	id INT(11) NOT NULL AUTO_INCREMENT,
	nombre varchar(255) NOT NULL,
	descripcion varchar(255) NOT NULL,
	t_precio INT(11) NOT NULL,
	PRIMARY KEY (id)
);
ALTER TABLE estudios ADD CONSTRAINT estudios_fk0 FOREIGN KEY (t_precio) REFERENCES origen_factura(id);

CREATE TABLE informe (
	id INT(11) NOT NULL AUTO_INCREMENT,
	informe_cod varchar(11),
	numdoc varchar(13),
	paciente varchar(100),
	telefono varchar(50),
	sexo varchar(1),
	edad varchar(10),
	entidad varchar(100),
	medRemitente varchar(100),
	fec_muestra varchar(10),
	fec_inf varchar(10),
	fec_ingreso varchar(10),
	patologo varchar(100),
	macro TEXT,
	micro TEXT,
	diagnostico TEXT,
	observaciones text,
	PRIMARY KEY (id)
);

CREATE TABLE informec (
	id INT(11) NOT NULL AUTO_INCREMENT,
	informe_cod varchar(11),
	numdoc varchar(13),
	paciente varchar(100),
	telefono varchar(50),
	sexo varchar(1),
	edad varchar(10),
	entidad varchar(100),
	medRemitente varchar(100),
	fec_muestra varchar(10),
	fec_inf varchar(10),
	fec_ingreso varchar(10),
	patologo varchar(100),
	cal_muestra INT(1),
	ins_por varchar(50),
	cat_gen INT(1),
	
	observaciones text,
	PRIMARY KEY (id)
);

--ALTER TABLE informe ADD COLUMN informeCodTipo varchar(1) NOT NULL AFTER id;
--ALTER TABLE informe ADD COLUMN informeCodNum INT(5) NOT NULL AFTER informeCodTipo;
--ALTER TABLE informe CHANGE informeCodNum informe_cod_num varchar(5);
--ALTER TABLE informe ADD COLUMN diagnostico TEXT NOT NULL AFTER micro;

CREATE TABLE secuenciaInforme (
	id INT(11) NOT NULL AUTO_INCREMENT,
	ultQ INT(5) NOT NULL,
	ultC INT(5) NOT NULL,
	ultL INT(5) NOT NULL,
	PRIMARY KEY (id)
);
insert INTO secuenciaInforme (ultQ, ultC, ultL) VALUES (0,0,0);

CREATE TABLE medRemitente (
	id INT(11) NOT NULL AUTO_INCREMENT,
	medRemitente varchar(100) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE patologo (
	id INT(11) NOT NULL AUTO_INCREMENT,
	patologo varchar(100) NOT NULL,
	num_doc varchar(11) NOT NULL,
	reg_med varchar(5) NOT NULL;
	reg_med_ciudad varchar(15) NOT NULL,
	direccion varchar(150) NOT NULL,
	telefono varchar(150) NOT NULL,
	email varchar(50) NOT NULL,
	PRIMARY KEY (id)
);
--ALTER TABLE patologo ADD COLUMN reg_med varchar(5) NOT NULL AFTER num_doc;
--ALTER TABLE patologo ADD COLUMN reg_med_ciudad varchar(15) NOT NULL AFTER reg_med;

CREATE TABLE factura (
	id INT(11) NOT NULL AUTO_INCREMENT,
	cliente varchar(150) NOT NULL,
	direccion varchar(255) NOT NULL,
	telefono varchar(30) NOT NULL,
	email varchar(50) NOT NULL,
	concepto TEXT NOT NULL,
	total DECIMAL(12) NOT NULL,
	PRIMARY KEY (id)
);

ALTER TABLE informe ADD CONSTRAINT informe_fk0 FOREIGN KEY (id_paciente) REFERENCES paciente(id);
ALTER TABLE informe ADD CONSTRAINT informe_fk1 FOREIGN KEY (id_entidad) REFERENCES entidad(id);
ALTER TABLE informe ADD CONSTRAINT informe_fk2 FOREIGN KEY (id_convenio) REFERENCES convenio(id);
ALTER TABLE informe ADD CONSTRAINT informe_fk3 FOREIGN KEY (id_medRemitente) REFERENCES medRemitente(id);
ALTER TABLE informe ADD CONSTRAINT informe_fk4 FOREIGN KEY (id_patologo) REFERENCES patologo(id);
ALTER TABLE informe ADD CONSTRAINT informe_fk5 FOREIGN KEY (id_estudio) REFERENCES estudios(id);









