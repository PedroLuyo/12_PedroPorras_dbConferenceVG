CREATE DATABASE dbConferenceVG;

USE dbConferenceVG;

CREATE TABLE PARTICIPANTE (
    IDEPAR INT AUTO_INCREMENT,
    FECREGPAR DATE NOT NULL,
    NOMPAR VARCHAR(60) NOT NULL,
    APEPAR VARCHAR(80) NOT NULL,
    DNIPAR CHAR(8) NOT NULL,
    TIPPAR CHAR(1) NOT NULL,
    CELPAR CHAR(9) NULL,
    EMAPAR VARCHAR(90) NULL,
    DIRPAR VARCHAR(90) NOT NULL,
    ESTPAR CHAR(1) NOT NULL,
    CONSTRAINT IDERPAR_PK PRIMARY KEY (IDERPAR)
);
    

    
CREATE TABLE PONENTE (
    CODPON CHAR(5) NOT NULL,
    NOMPON VARCHAR(60) NOT NULL,
    APEPON VARCHAR(80) NOT NULL,
    CELPON CHAR(9) NOT NULL,
    DNIPON CHAR(8) NOT NULL,
    EMAPON VARCHAR(90) NOT NULL,
    DIRPON VARCHAR(90) NOT NULL,
    CONSTRAINT CODPON_PK PRIMARY KEY (CODPON)
);
    
CREATE TABLE CONFERENCIA (
    CODCONF CHAR(5) NOT NULL,
    TEMCONF VARCHAR(90) NOT NULL,
    FECCONF DATE,
    PONCONF CHAR(5),
    CONSTRAINT CODCONF_PK PRIMARY KEY (CONDCONF)
);
    
CREATE TABLE REGISTRO (
    CODREG CHAR(5) NOT NULL,
    CODPAR INT NOT NULL,
    FECREG DATE NOT NULL,
    CERTREG CHAR(1) NOT NULL,
    CONSTRAINT CODREG_PK PRIMARY KEY (CODREG)
);
    
CREATE TABLE REGISTRODETALLE (
    IDREGDET INT NOT NULL,
    CODREG CHAR(5) NOT NULL,
    CODCONF CHAR(5) NOT NULL,
    CANTPART INT NOT NULL,
    CONSTRAINT IDREGDET_PK PRIMARY KEY (IDREGDET)
);
    
    
INSERT 
	INTO PARTICIPANTE
    (NOMPAR, APEPAR ,DNIPAR , TIPPAR ,CELPAR ,EMAPAR ,DIRPAR ,ESTPAR)
    VALUES
    ('Juan', ',Campos Perez', '40255133', '1', '986512478', 'juan.campos@vallegrande.edu.pe', 'Av.Miraflores', 'A'),
    ('Sofia', ',Solano Avila', '64978531', '1', '974815258', 'sofia.solano@vallegrande.edu.pe', 'Jr.Huallaga', 'A'),
    ('Maria', 'Rosales Guerra','15925874', '1', '986532147', 'maria.rosales@vallegrande.edu.pe', 'Calle Girasoles', 'A'),
    ('Marcos', 'Alarcon Hermosa', '48781512', '2', '', 'marcos.alarcon@vallegrande.edu.pe', '', 'A'),
    ('Martin', 'Saman Arata', '84152631', '2', '', 'martin.saman@vallegrande.edu.pe', 'Jr.La Union', 'A'),
    ('Jose', 'Quispe Luyo', '48161937', '2', '978415321', 'jose.quispe@vallegrande.edu.pe', 'CalleAbancay', 'A'),
    ('Claudia', 'Barraza Carrasco', '78452596', '3', '', 'cbarraza@gmail.com', 'Jr.Las Gardenias', 'A'),
    ('Jhohana', 'Bendezu Anccasi', '74321564', '3', '', 'jbendezu@yahoo.com', '', 'A'),
    ('Mario', 'Acosta Palomino', '15326499', '3', '931764521', 'mario.acosta@aoutlook.com', 'Av.Miraflores', 'A');
    
INSERT
	INTO PONENTE
    (CODPON, NOMPON, APEPON, CELPON, DNIPON, EMAPON, DIRPON)
    VALUES
    ('P0001', 'Alberto', 'Corrales Lozada', '', '15263798', 'alberto.corrales@yahoo.com', 'Calle Los Portales'),
    ('P0002', 'Juana', 'Sanchez Ortega', '974815258', '13256497', 'juana.sanchez@outlook.com', 'Av. La liberted'),
    ('P0003', 'Javier', 'Nakasone Vila', '995236147', '15953575', 'javier.nakasone@gmail.com', 'Jr.San Martin'),
    ('P0004', 'Sonia', 'Huayta Medina', '', '12657814', 'sonia.huayta@gmail.com', 'Av.Las Gardenias'),
    ('P005', 'Fabiano', 'Carrion Avila', '', '12233647', '', 'Jr.Huancayo');
    
INSERT
	INTO CONFERENCIA
    (CODCONF, TEMCONF, FECCONF, PONCONF)
    VALUES
    ('C0001', 'Gestion de datos con MySQL', '15/7/2022', 'P0001'),
	('C0002', 'Joins paso a paso', '16/7/2022', 'P0002'),
    ('C0003', 'Consultas con parametros', '17/7/2022', 'P0003'),
    ('C0004', 'Administracion base de datos MySQL', '16/7/2022', 'P0002'),
    ('C0005', 'Gestion de backups de Base de Datos', '15/7/2022', 'P0004');
    
INSERT
	INTO REGISTRO
    (CODREG, CODPAR, CERTREG)
    VALUES
    ('R0001', '1', 'S'),
    ('R0002', '3', 'S'),
    ('R0003', '4', 'S'),
    ('R0004', '7', 'S'),
    ('R0005', '2', 'N'),
    ('R0006', '5', 'N'),
    ('R0007', '6', 'N'),
    ('R0008', '9', 'N');
    
INSERT
	INTO REGISTRODETALLE
    (IDREGEDET, CODREG, CODCONF, CANTPART)
    VALUES
    ('1', 'R0001', 'C0001', '2'),
    ('2', 'R0002', 'C0002', '1'),
    ('3', 'R0003', 'C0003', '4'),
    ('4', 'R0004', 'C0004', '1'),
    ('5', 'R0005', 'C0005', '1'),
    ('6', 'R0006', 'C0006', '2'),
    ('7', 'R0007', 'C0007', '3'),
    ('8', 'R0008', 'C0008', '2'),
    ('9', 'R0009', 'C0009', '3'),
    ('10', 'R00010', 'C00010', '4'),
    ('11', 'R00011', 'C00011', '2'),
    ('12', 'R00012', 'C00012', '6'),
    ('13', 'R00013', 'C00013', '1');
    
