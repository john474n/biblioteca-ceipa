####### INSERT EN TABLAS #################

INSERT INTO `tipo_direccion` (`ID_TIPODIR`, `DESCRIPCION`) 
VALUES 
(NULL, 'PARTICULAR'), 
(NULL, 'LABORAL'),
(NULL, 'COMERCIAL'),
(NULL, 'POSTAL'),
(NULL, 'SEGUNDA VIVIENDA'),
(NULL, 'SUCURSAL'),
(NULL, 'CASA MATRIZ');

INSERT INTO `tipo_cliente` (`ID_TIPOCLI`, `DESCRIPCION_TIPOCLI`) 
VALUES 
(NULL, 'PARTICULAR'), 
(NULL, 'EMPRESA');

INSERT INTO `sexo` (`ID_SEXO`, `DESCRIPCION_SEXO`) 
VALUES 
(NULL, 'HOMBRE'), 
(NULL, 'MUJER'),
(NULL, 'OTRO');

INSERT INTO `pais` (`ID_PAIS`, `NOMBRE_PAIS`, `NACIONALIDAD_PAIS`) 
VALUES 
(NULL, 'CHILE', 'CHILENO/A'), 
(NULL, 'ARGENTINA', 'ARGENTINO/A'),
(NULL, 'VENEZUELA', 'VENEZOLANO/A');

INSERT INTO `idiomas` (`ID_IDIOMA`, `IDIOMA`) 
VALUES 
(NULL, 'ESPAÑOL'), 
(NULL, 'INGLÉS');

INSERT INTO `forma_pago` (`ID_FORMA_PAGO`, `DESCRIPCION`) 
VALUES 
(NULL, 'EFECTIVO'), 
(NULL, 'DEBITO'),
(NULL, 'CREDITO');

/*ESTADOS CIVILES LEGALES EN CHILE*/
INSERT INTO `estado_civil` (`ID_ECIVIL`, `DESCRIPCION_ECIVIL`) 
VALUES 
(NULL, 'Soltero/a'), 
(NULL, 'Casado/a'),
(NULL, 'Viudo/a'),
(NULL, 'Divorciado/a'),
(NULL, 'Conviviente civil');


/*
CREATE TABLE TIPO_DOCUMENTO(
ID_TIPODOC INT PRIMARY KEY,
DESCRICPION_TIPODOC VARCHAR(100) NOT NULL
)ENGINE=InnoDB;
*/
INSERT INTO `TIPO_DOCUMENTO` (`ID_TIPODOC`, `DESCRICPION_TIPODOC`) 
VALUES 
('30', 'Factura'), 
('32', 'Factura de ventas y servicios no afectos o exentos de IVA'),
('33', 'Factura electrónica'),
('34', 'Factura no afecta o exenta electrónica'),
('35', 'Boleta'),
('38', 'Boleta exenta'),
('39', 'Boleta electrónica'),
('40', 'Liquidación factura'),
('41', 'Boleta exenta electrónica'),
('43', 'Liquidación factura electrónica'),
('45', 'Factura de compra'),
('46', 'Factura de compra electrónica'),
('48', 'Pago electrónico'),
('50', 'Guía de despacho'),
('52', 'Guía de despacho electrónica'),
('55', 'Nota de débito'),
('56', 'Nota de débito electrónica'),
('60', 'Nota de crédito'),
('61', 'Nota de crédito electrónica'),
('103', 'Liquidación'),
('110', 'Factura de exportación electrónica');

### REGION PROVINCIA COMUNA ########

INSERT INTO REGION(ID_REGION, NOMBRE_REG ,NUMERO_REG)
VALUES
(1, 'Tarapacá','I'),
(2, 'Antofagasta','II'),
(3, 'Atacama','III'),
(4, 'Coquimbo','IV'),
(5, 'Valparaíso','V'),
(6, 'Región del Libertador Gral. Bernardo O''Higgins','VI'),
(7, 'Región del Maule','VII'),
(8, 'Región del Biobío','VIII'),
(9, 'Región de la Araucanía','IX'),
(10, 'Región de Los Lagos','X'),
(11, 'Región Aisén del Gral. Carlos Ibáñez del Campo','XI'),
(12, 'Región de Magallanes y de la Antártica Chilena','XII'),
(13, 'Región Metropolitana de Santiago','METROPOLITANA DE SANTIAGO'),
(14, 'Región de Los Ríos','XIV'),
(15, 'Arica y Parinacota','XV'),
(16, 'Región de Ñuble','XVI');

INSERT INTO PROVINCIA(ID_PROVINCIA, NOMBRE_PROV, ID_REGION_FK) 
VALUES 
(11, 'Iquique', 1),
(14, 'Tamarugal', 1),
(21, 'Antofagasta', 2),
(22, 'El Loa', 2),
(23, 'Tocopilla', 2),
(31, 'Copiapó', 3),
(32, 'Chañaral', 3),
(33, 'Huasco', 3),
(41, 'Elqui', 4),
(42, 'Choapa', 4),
(43, 'Limarí', 4),
(51, 'Valparaíso', 5),
(52, 'Isla de Pascua', 5),
(53, 'Los Andes', 5),
(54, 'Petorca', 5),
(55, 'Quillota', 5),
(56, 'San Antonio', 5),
(57, 'San Felipe de Aconcagua', 5),
(58, 'Marga Marga', 5),
(61, 'Cachapoal', 6),
(62, 'Cardenal Caro', 6),
(63, 'Colchagua', 6),
(71, 'Talca', 7),
(72, 'Cauquenes', 7),
(73, 'Curicó', 7),
(74, 'Linares', 7),
(81, 'Concepción', 8),
(82, 'Arauco', 8),
(83, 'Biobío', 8),
(91, 'Cautín', 9),
(92, 'Malleco', 9),
(101, 'Llanquihue', 10),
(102, 'Chiloé', 10),
(103, 'Osorno', 10),
(104, 'Palena', 10),
(111, 'Coihaique', 11),
(112, 'Aisén', 11),
(113, 'Capitán Prat', 11),
(114, 'General Carrera', 11),
(121, 'Magallanes', 12),
(122, 'Antártica Chilena', 12),
(123, 'Tierra del Fuego', 12),
(124, 'Última Esperanza', 12),
(131, 'Santiago', 13),
(132, 'Cordillera', 13),
(133, 'Chacabuco', 13),
(134, 'Maipo', 13),
(135, 'Melipilla', 13),
(136, 'Talagante', 13),
(141, 'Valdivia', 14),
(142, 'Ranco', 14),
(151, 'Arica', 15),
(152, 'Parinacota', 15),
(163, 'Diguillín', 16),
(162, 'Itata', 16),
(161, 'Punilla', 16);

INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (1101, 'Iquique', 11);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (1107, 'Alto Hospicio', 11);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (1401, 'Pozo Almonte', 14);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (1402, 'Camiña', 14);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (1404, 'Huara', 14);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (1403, 'Colchane', 14);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (1405, 'Pica', 14);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (2101, 'Antofagasta', 21);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (2102, 'Mejillones', 21);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (2103, 'Sierra Gorda', 21);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (2104, 'Taltal', 21);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (2201, 'Calama', 22);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (2202, 'Ollagüe', 22);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (2203, 'San Pedro de Atacama', 22);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (2301, 'Tocopilla', 23);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (2302, 'María Elena', 23);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (3101, 'Copiapó', 31);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (3102, 'Caldera', 31);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (3103, 'Tierra Amarilla', 31);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (3201, 'Chañaral', 32);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (3202, 'Diego de Almagro', 32);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (3301, 'Vallenar', 33);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (3302, 'Alto del Carmen', 33);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (3303, 'Freirina', 33);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (3304, 'Huasco', 33);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (4101, 'La Serena', 41);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (4102, 'Coquimbo', 41);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (4103, 'Andacollo', 41);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (4104, 'La Higuera', 41);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (4105, 'Paihuano', 41);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (4106, 'Vicuña', 41);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (4201, 'Illapel', 42);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (4202, 'Canela', 42);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (4203, 'Los Vilos', 42);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (4204, 'Salamanca', 42);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (4301, 'Ovalle', 43);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (4302, 'Combarbalá', 43);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (4303, 'Monte Patria', 43);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (4304, 'Punitaqui', 43);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (4305, 'Río Hurtado', 43);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5101, 'Valparaíso', 51);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5102, 'Casablanca', 51);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5103, 'Concón', 51);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5104, 'Juan Fernández', 51);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5105, 'Puchuncaví', 51);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5107, 'Quintero', 51);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5109, 'Viña del Mar', 51);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5201, 'Isla de Pascua', 52);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5301, 'Los Andes', 53);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5302, 'Calle Larga', 53);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5303, 'Rinconada', 53);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5304, 'San Esteban', 53);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5401, 'La Ligua', 54);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5402, 'Cabildo', 54);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5403, 'Papudo', 54);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5404, 'Petorca', 54);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5405, 'Zapallar', 54);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5501, 'Quillota', 55);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5502, 'La Calera', 55);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5503, 'Hijuelas', 55);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5504, 'La Cruz', 55);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5506, 'Nogales', 55);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5601, 'San Antonio', 56);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5602, 'Algarrobo', 56);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5603, 'Cartagena', 56);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5604, 'El Quisco', 56);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5605, 'El Tabo', 56);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5606, 'Santo Domingo', 56);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5701, 'San Felipe', 57);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5702, 'Catemu', 57);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5703, 'Llay Llay', 57);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5704, 'Panquehue', 57);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5705, 'Putaendo', 57);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5706, 'Santa María', 57);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5801, 'Quilpué', 58);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5802, 'Limache', 58);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5803, 'Olmué', 58);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (5804, 'Villa Alemana', 58);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6101, 'Rancagua', 61);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6102, 'Codegua', 61);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6103, 'Coinco', 61);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6104, 'Coltauco', 61);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6105, 'Doñihue', 61);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6106, 'Graneros', 61);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6107, 'Las Cabras', 61);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6108, 'Machalí', 61);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6109, 'Malloa', 61);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6110, 'Mostazal', 61);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6111, 'Olivar', 61);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6112, 'Peumo', 61);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6113, 'Pichidegua', 61);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6114, 'Quinta de Tilcoco', 61);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6115, 'Rengo', 61);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6116, 'Requínoa', 61);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6117, 'San Vicente', 61);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6201, 'Pichilemu', 62);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6202, 'La Estrella', 62);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6203, 'Litueche', 62);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6204, 'Marchihue', 62);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6205, 'Navidad', 62);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6206, 'Paredones', 62);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6301, 'San Fernando', 63);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6302, 'Chépica', 63);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6303, 'Chimbarongo', 63);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6304, 'Lolol', 63);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6305, 'Nancagua', 63);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6306, 'Palmilla', 63);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6307, 'Peralillo', 63);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6308, 'Placilla', 63);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6309, 'Pumanque', 63);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (6310, 'Santa Cruz', 63);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7101, 'Talca', 71);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7102, 'Constitución', 71);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7103, 'Curepto', 71);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7104, 'Empedrado', 71);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7105, 'Maule', 71);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7106, 'Pelarco', 71);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7107, 'Pencahue', 71);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7108, 'Río Claro', 71);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7109, 'San Clemente', 71);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7110, 'San Rafael', 71);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7201, 'Cauquenes', 72);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7202, 'Chanco', 72);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7203, 'Pelluhue', 72);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7301, 'Curicó', 73);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7302, 'Hualañé', 73);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7303, 'Licantén', 73);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7304, 'Molina', 73);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7305, 'Rauco', 73);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7306, 'Romeral', 73);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7307, 'Sagrada Familia', 73);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7308, 'Teno', 73);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7309, 'Vichuquén', 73);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7401, 'Linares', 74);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7402, 'Colbún', 74);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7403, 'Longaví', 74);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7404, 'Parral', 74);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7405, 'Retiro', 74);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7406, 'San Javier', 74);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7407, 'Villa Alegre', 74);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (7408, 'Yerbas Buenas', 74);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8101, 'Concepción', 81);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8102, 'Coronel', 81);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8103, 'Chiguayante', 81);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8104, 'Florida', 81);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8105, 'Hualqui', 81);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8106, 'Lota', 81);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8107, 'Penco', 81);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8108, 'San Pedro de la Paz', 81);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8109, 'Santa Juana', 81);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8110, 'Talcahuano', 81);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8111, 'Tomé', 81);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8112, 'Hualpén', 81);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8201, 'Lebu', 82);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8202, 'Arauco', 82);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8203, 'Cañete', 82);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8204, 'Contulmo', 82);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8205, 'Curanilahue', 82);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8206, 'Los Álamos', 82);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8207, 'Tirúa', 82);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8301, 'Los Ángeles', 83);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8302, 'Antuco', 83);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8303, 'Cabrero', 83);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8304, 'Laja', 83);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8305, 'Mulchén', 83);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8306, 'Nacimiento', 83);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8307, 'Negrete', 83);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8308, 'Quilaco', 83);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8309, 'Quilleco', 83);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8310, 'San Rosendo', 83);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8311, 'Santa Bárbara', 83);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8312, 'Tucapel', 83);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8313, 'Yumbel', 83);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8314, 'Alto Biobío', 83);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9101, 'Temuco', 91);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9102, 'Carahue', 91);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9103, 'Cunco', 91);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9104, 'Curarrehue', 91);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9105, 'Freire', 91);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9106, 'Galvarino', 91);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9107, 'Gorbea', 91);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9108, 'Lautaro', 91);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9109, 'Loncoche', 91);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9110, 'Melipeuco', 91);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9111, 'Nueva Imperial', 91);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9112, 'Padre las Casas', 91);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9113, 'Perquenco', 91);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9114, 'Pitrufquén', 91);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9115, 'Pucón', 91);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9116, 'Saavedra', 91);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9117, 'Teodoro Schmidt', 91);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9118, 'Toltén', 91);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9119, 'Vilcún', 91);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9120, 'Villarrica', 91);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9121, 'Cholchol', 91);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9201, 'Angol', 92);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9202, 'Collipulli', 92);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9203, 'Curacautín', 92);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9204, 'Ercilla', 92);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9205, 'Lonquimay', 92);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9206, 'Los Sauces', 92);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9207, 'Lumaco', 92);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9208, 'Purén', 92);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9209, 'Renaico', 92);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9210, 'Traiguén', 92);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (9211, 'Victoria', 92);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10101, 'Puerto Montt', 101);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10102, 'Calbuco', 101);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10103, 'Cochamó', 101);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10104, 'Fresia', 101);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10105, 'Frutillar', 101);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10106, 'Los Muermos', 101);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10107, 'Llanquihue', 101);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10108, 'Maullín', 101);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10109, 'Puerto Varas', 101);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10201, 'Castro', 102);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10202, 'Ancud', 102);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10203, 'Chonchi', 102);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10204, 'Curaco de Vélez', 102);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10205, 'Dalcahue', 102);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10206, 'Puqueldón', 102);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10207, 'Queilén', 102);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10208, 'Quellón', 102);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10209, 'Quemchi', 102);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10210, 'Quinchao', 102);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10301, 'Osorno', 103);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10302, 'Puerto Octay', 103);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10303, 'Purranque', 103);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10304, 'Puyehue', 103);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10305, 'Río Negro', 103);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10306, 'San Juan de la Costa', 103);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10307, 'San Pablo', 103);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10401, 'Chaitén', 104);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10402, 'Futaleufú', 104);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10403, 'Hualaihué', 104);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (10404, 'Palena', 104);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (11101, 'Coyhaique', 111);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (11102, 'Lago Verde', 111);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (11201, 'Aysén', 112);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (11202, 'Cisnes', 112);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (11203, 'Guaitecas', 112);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (11301, 'Cochrane', 113);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (11302, 'O''Higgins', 113);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (11303, 'Tortel', 113);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (11401, 'Chile Chico', 114);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (11402, 'Río Ibáñez', 114);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (12101, 'Punta Arenas', 121);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (12102, 'Laguna Blanca', 121);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (12103, 'Río Verde', 121);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (12104, 'San Gregorio', 121);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (12201, 'Cabo de Hornos', 122);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (12202, 'Antártica', 122);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (12301, 'Porvenir', 123);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (12302, 'Primavera', 123);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (12303, 'Timaukel', 123);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (12401, 'Natales', 124);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (12402, 'Torres del Paine', 124);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13101, 'Santiago', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13102, 'Cerrillos', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13103, 'Cerro Navia', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13104, 'Conchalí', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13105, 'El Bosque', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13106, 'Estación Central', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13107, 'Huechuraba', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13108, 'Independencia', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13109, 'La Cisterna', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13110, 'La Florida', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13111, 'La Granja', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13112, 'La Pintana', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13113, 'La Reina', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13114, 'Las Condes', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13115, 'Lo Barnechea', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13116, 'Lo Espejo', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13117, 'Lo Prado', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13118, 'Macul', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13119, 'Maipú', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13120, 'Ñuñoa', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13121, 'Pedro Aguirre Cerda', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13122, 'Peñalolén', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13123, 'Providencia', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13124, 'Pudahuel', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13125, 'Quilicura', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13126, 'Quinta Normal', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13127, 'Recoleta', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13128, 'Renca', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13129, 'San Joaquín', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13130, 'San Miguel', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13131, 'San Ramón', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13132, 'Vitacura', 131);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13201, 'Puente Alto', 132);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13202, 'Pirque', 132);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13203, 'San José de Maipo', 132);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13301, 'Colina', 133);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13302, 'Lampa', 133);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13303, 'Tiltil', 133);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13401, 'San Bernardo', 134);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13402, 'Buin', 134);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13403, 'Calera de Tango', 134);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13404, 'Paine', 134);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13501, 'Melipilla', 135);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13502, 'Alhué', 135);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13503, 'Curacaví', 135);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13504, 'María Pinto', 135);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13505, 'San Pedro', 135);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13601, 'Talagante', 136);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13602, 'El Monte', 136);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13603, 'Isla de Maipo', 136);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13604, 'Padre Hurtado', 136);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (13605, 'Peñaflor', 136);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (14101, 'Valdivia', 141);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (14102, 'Corral', 141);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (14103, 'Lanco', 141);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (14104, 'Los Lagos', 141);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (14105, 'Máfil', 141);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (14106, 'Mariquina', 141);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (14107, 'Paillaco', 141);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (14108, 'Panguipulli', 141);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (14201, 'La Unión', 142);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (14202, 'Futrono', 142);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (14203, 'Lago Ranco', 142);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (14204, 'Río Bueno', 142);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (15101, 'Arica', 151);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (15102, 'Camarones', 151);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (15201, 'Putre', 152);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (15202, 'General Lagos', 152);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8401, 'Chillán', 163);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8402, 'Bulnes', 163);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8406, 'Chillán Viejo', 163);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8407, 'El Carmen', 163);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8410, 'Pemuco', 163);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8411, 'Pinto', 163);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8413, 'Quillón', 163);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8418, 'San Ignacio', 163);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8421, 'Yungay', 163);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8403, 'Cobquecura', 162);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8404, 'Coelemu', 162);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8408, 'Ninhue', 162);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8412, 'Portezuelo', 162);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8414, 'Quirihue', 162);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8415, 'Ránquil', 162);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8420, 'Treguaco', 162);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8405, 'Coihueco', 161);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8409, 'Ñiquén', 161);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8416, 'San Carlos', 161);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8417, 'San Fabián', 161);
INSERT INTO COMUNA(id_comuna, NOMBRE_COMU, id_provincia_fk) VALUES (8419, 'San Nicolás', 161);

INSERT INTO ACTIVIDAD_ECONOMICA (ID_ACTECO,DESCRIPCION_ACT) 
VALUES
(464100,	'VENTA AL POR MAYOR DE PRODUCTOS TEXTILES, PRENDAS DE VESTIR Y CALZADO'),
(464901,	'VENTA AL POR MAYOR DE MUEBLES, EXCEPTO MUEBLES DE OFICINA'),
(464902,	'VENTA AL POR MAYOR DE ARTÍCULOS ELÉCTRICOS Y ELECTRÓNICOS PARA EL HOGAR'),
(464903,	'VENTA AL POR MAYOR DE ARTÍCULOS DE PERFUMERÍA, DE TOCADOR Y COSMÉTICOS	'),
(464904,	'VENTA AL POR MAYOR DE ARTÍCULOS DE PAPELERÍA Y ESCRITORIO'),
(464905,	'VENTA AL POR MAYOR DE LIBROS'),
(464906,	'VENTA AL POR MAYOR DE DIARIOS Y REVISTAS'),
(464907,	'VENTA AL POR MAYOR DE PRODUCTOS FARMACÉUTICOS Y MEDICINALES'),
(464908,	'VENTA AL POR MAYOR DE INSTRUMENTOS CIENTÍFICOS Y QUIRÚRGICOS'),
(464909,	'VENTA AL POR MAYOR DE OTROS ENSERES DOMÉSTICOS N.C.P.'),
(476101,	'VENTA AL POR MENOR DE LIBROS EN COMERCIOS ESPECIALIZADOS'),
(476102,	'VENTA AL POR MENOR DE DIARIOS Y REVISTAS EN COMERCIOS ESPECIALIZADOS'),
(476103,	'VENTA AL POR MENOR DE ARTÍCULOS DE PAPELERÍA Y ESCRITORIO EN COMERCIOS ESPECIALIZADOS'),
(476200,	'VENTA AL POR MENOR DE GRABACIONES DE MÚSICA Y DE VIDEO EN COMERCIOS ESPECIALIZADOS'),
(476301,	'VENTA AL POR MENOR DE ARTÍCULOS DE CAZA Y PESCA EN COMERCIOS ESPECIALIZADOS'),
(476302,	'VENTA AL POR MENOR DE BICICLETAS Y SUS REPUESTOS EN COMERCIOS ESPECIALIZADOS'),
(476309,	'VENTA AL POR MENOR DE OTROS ARTÍCULOS Y EQUIPOS DE DEPORTE N.C.P.'),
(476400,	'VENTA AL POR MENOR DE JUEGOS Y JUGUETES EN COMERCIOS ESPECIALIZADOS'),
(581100,	'EDICIÓN DE LIBROS');

create table roles_usuario(
id_rol int primary key auto_increment,
rol_usuario varchar(50) not null
)ENGINE=InnoDB;

INSERT INTO roles_usuario(rol_usuario) 
VALUES
('admin'),
('vendedor'),
('cliente');

create table usuario(
id_usuario int primary key auto_increment,
rut_usuario varchar(12) not null,
clave varchar(255) not null,
rol int
)ENGINE=InnoDB;
/*
INSERT INTO usuario(rut_usuario,clave,rol) 
VALUES
('1-1','$2y$12$YQeryjtK9q51uPNpXPnCD.vBpsE.aoqLHCkP7buaQXkxLdq4pgzM.',1),
('2-2','$2y$12$YQeryjtK9q51uPNpXPnCD.vBpsE.aoqLHCkP7buaQXkxLdq4pgzM.',2);
*/

ALTER TABLE usuario
ADD constraint FK_usuario_rol
FOREIGN KEY (rol) REFERENCES roles_usuario(id_rol);

### INSERTS PARA PRUEBAS
INSERT INTO `EDITORIAL` (`ID_EDITORIAL`, `NOMBRE_EDIT`, `DIRECCION_EDIT`, `ID_PAIS`, `FONO_EDIT`, `URL_EDIT`, `EMAIL_EDIT`) 
VALUES (NULL, 'Andres Bello', 'Calle anonima 123', 1, '32454556', 'www.editarial.cl', 'contacto@editorial.cl');

INSERT INTO `LIBRO` (`ID_COD_BARRA`, `ISBNACT_LIB`, `ISBNORIG_LIB`, `TITULO_LIB`, `NUMPAG_LIB`, `AÑOPUBLI_LIB`, `EDICION_LIB`, `ID_EDITORIAL`) VALUES ('123123123', '123123123', '1231231', 'MindHunter', '352', '1994', 'PRIMERA', '1')

INSERT INTO `AUTOR` (`ID_AUTOR`, `NOMBRE_AUT`, `PATERNO_AUT`, `MATERNO_AUT`) VALUES (NULL, 'Stephen', 'King', NULL);
INSERT INTO `AUTORES_DE_LIBROS` (`ID_LIBRO`, `ID_AUTOR`) VALUES ('123123', '1');

INSERT INTO `MATERIA` (`ID_MATERIAS`, `DESCRIP_MAT`) VALUES (NULL, 'Ciencia Ficción');
INSERT INTO `SUBMATERIA` (`ID_SUBMAT`, `DESCRIP_MAT`, `ID_MATERIA`) VALUES (NULL, 'Terror Psicológico', '1');
INSERT INTO `CATEGORIAS_DE_LIBROS` (`ID_MATERIAS`, `ID_CODBARRA_LIB`) VALUES ('1', '123123');

INSERT INTO `COPIALIB_TIPO_VENTA` (`ID_COPIALIB_TIPO_VNT`, `DESCRIPCION`) VALUES (NULL, 'VENTA'), (NULL, 'ARRIENDO');


INSERT INTO `CARGOS` (`ID_CARGOTRAB`, `DESCRIPCION_CG`) 
VALUES (NULL, 'BODEGUERO'), (NULL, 'VENDEDOR'), (NULL, 'GERENTE');

INSERT INTO `TRABAJADORES` (`ID_RUTTRA`, `NOM_TRAB`, `PAT_TRAB`, `MAT_TRAB`, `FECNAC_TRAB`, `ID_SEXO_TRAB`, `ID_CARGO_TRAB`, `SEXUALIDAD_TRAB`, `ID_ECIVIL_FK`, `ID_PAIS_TRAB_FK`, `FECHA_CONTRATO`, `FECHA_FINCONT`, `ID_RUTTRA_CREA`, `FECHA_CREACION`, `ID_RUTTRA_MOD`, `FECHA_MODIFICA`, `Estado`) 
VALUES ('18683791', 'jUANIN', 'JUAN', 'JARRIS', '1990', '1', NULL, NULL, '1', '1', '2020-07-01', NULL, '18683791', '2020-07-01 00:00:00', NULL, NULL, '1');

INSERT INTO `CARGO_TRABAJADOR` (`ID_TRABCARG`, `ID_RUTTRA`, `ID_CARGO`, `FECHA_INIC`, `FECHA_FIN`, `MOTIVO_FIN_CONTRATO`, `ESTADO`) 
VALUES (NULL, '18683791', '1', '2020-07-01', NULL, NULL, '1');

INSERT INTO `ANOTACIONES` (`ID_ANOTACIONES`, `FECHA_ANOTA`, `OBSERVACION`, `ID_RUTTRA_CREA`, `FECHA_CREACION`, `ID_RUTTRA_MOD`, `FECHA_MODIFICA`, `Estado`) 
VALUES (NULL, '2020-07-29 00:00:00', 'BUEN TRABAJADOR', '18683791', '2020-07-30 00:00:00', NULL, NULL, '1');

INSERT INTO `CORREOS` (`ID_CORREO`, `DIR_EMAIL`, `ID_RUTTRA_CREA`, `FECHA_CREACION`, `ID_RUTTRA_MOD`, `FECHA_MODIFICA`, `Estado`) 
VALUES (NULL, 'JUANJARRIS@GMAIL.COM', '18683791', '2020-07-30 00:00:00', NULL, NULL, '1');

INSERT INTO `CLIENTES` (`ID_RUTCLI`, `NOM_CLI`, `PATERNO_CLI`, `MATERNO_CLI`, `ID_TIPO_CLI`, `ID_ESTADO_CIVIL`, `RAZONSOCIAL_CLI`, `ID_ACTIV_ECONO`, `NOM_RLEGAL_CLI`, `PAT_RLEGAL_CLI`, `MAT_RLEGAL_CLI`, `ID_RUTTRA_CREA`, `FECHA_CREACION`, `ID_RUTTRA_MOD`, `FECHA_MODIFICA`, `Estado`) 
VALUES (123, 'GABRIEL', 'BAEZ', NULL, 1, 2, NULL, NULL, NULL, NULL, NULL, '18683791', '2020-07-30 00:00:00', NULL, NULL, 1);

INSERT INTO `TELEFONO` (`ID_TELEFONO`, `TELEFONO`, `ID_RUTTRA_CREA`, `FECHA_CREACION`, `ID_RUTTRA_MOD`, `FECHA_MODIFICA`, `Estado`) 
VALUES (NULL, '+56912457856', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `TELEFONO` (`ID_TELEFONO`, `TELEFONO`, `ID_RUTTRA_CREA`, `FECHA_CREACION`, `ID_RUTTRA_MOD`, `FECHA_MODIFICA`, `Estado`) 
VALUES (NULL, '+56978945612', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `TELEFONOS_DE_CLIENTES` (`ID_RUTCLI`, `ID_TELEFONO`) VALUES ('123', '1');

INSERT INTO `TELEFONOS_DE_TRABAJADORES` (`ID_RUTTRA`, `ID_TELEFONO`) VALUES ('18683791', '2');

INSERT INTO `IDIOMAS_DE_LIBROS` (`ID_IDIOMA`, `ID_CODBARRA_LIB`) VALUES ('1', '123123');

INSERT INTO `DIRECCION` (`ID_DIRECCION`, `ID_TIPODIR_FK`, `CALLE`, `NUMERO`, `ID_COMUNA_FK`, `POBLACION`, `BLOCKS`, `DEPARTAMENTO`, `SECTOR`, `CODIGO_POSTAL`, `ID_RUTTRA_CREA`, `FECHA_CREACION`, `ID_RUTTRA_MOD`, `FECHA_MODIFICA`, `Estado`) 
VALUES (NULL, '1', 'anonima', '123', '5804', 'ni idea', NULL, NULL, NULL, '1234567', '18683791', '2020-07-30 00:00:00', NULL, NULL, NULL);

INSERT INTO `DIRECCION` (`ID_DIRECCION`, `ID_TIPODIR_FK`, `CALLE`, `NUMERO`, `ID_COMUNA_FK`, `POBLACION`, `BLOCKS`, `DEPARTAMENTO`, `SECTOR`, `CODIGO_POSTAL`, `ID_RUTTRA_CREA`, `FECHA_CREACION`, `ID_RUTTRA_MOD`, `FECHA_MODIFICA`, `Estado`) 
VALUES (NULL, '1', 'asdasd', '456', '5801', NULL, NULL, NULL, NULL, NULL, '18683791', '2020-07-30 00:00:00', NULL, NULL, '1');

INSERT INTO `DIRECCIONES_DE_CLIENTES` (`ID_RUTCLI`, `ID_DIRECCION`) VALUES ('123', '2');
INSERT INTO `direcciones_de_trabajadores` (`ID_RUTTRA`, `ID_DIRECCION`) VALUES ('18683791', '1');

INSERT INTO `PRECIO_LIBROS` (`ID_PREC_LIB`, `ID_COD_BARRA`, `VAL_ULT_COMP`, `VALOR_PROM_COMP`, `VALOR_ANTECOMP`, `PRECIO_ARRIENDO_DIARIO`, `PRECIOVENTA`) 
VALUES (NULL, '123123', '5000', '8000', '10000', '300', '15000');