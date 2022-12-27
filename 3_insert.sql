-- @Meztinea

INSERT INTO clientes(nombre, apellido_p, apellido_m, telefono)
VALUES  ('Peter','Gene','Hernández','0000222255'),
        ('María Lucía','Sánchez','Benitez','0000111122'),
        ('Llandel','Veguilla','Malavé','0000444455'),
        ('Ángel Agustín','Aguirre','Del Pino','0000333344'),
        ('Joy','Olasunmibo','Ogunmakin','0000666622'),
        ('Piero','Franco','Scigliuzzo','0000888822'),
        ('Natalia','Sánchez','Molina','0000666611'),
        ('Erick','Hawkins','',''),
        ('Juan Luis','Morera','','0000444488'),
        ('Efraín','Finees','Nevares','0000999966'),
        ('David','Rodriguez','Labault','7777888822'),
        ('Elizabeth','Woolridge','Grant','0000777788'),
        ('Veronica','Sáinz','Castro','8888555522'),
        ('Maria da Graca','Xuxa','Meneghel',''),
        ('Michael John','Douglas','',''),
        ('Elton','Hercules','John',''),
        ('Madonna','Louse','Ciccone','6666444455'),
        ('Christina María ','Aguilera','','2222333311'),
        ('Alejandro','Sánchez','Pizarro','4444111122'),
        ('Mariah','Carey','','8888777755'),
        ('Céline Marie','Claudette','Dion','4444999955'),
        ('Craig','Jamieson','Mack','3333777744'),
        ('Alanis Nadine','Morissette','','6666111144'),
        ('Gloria María Milagrosa','Fajardo','Garcia','8888111133'),
        ('Britney','Jean','Spears','7777444499'),
        ('Stephanie Lynn','Nicks','','6666444433');
        

INSERT INTO companias(compania)
VALUES  ('Telcel'),
        ('Movistar'),
        ('AT&T Mexico'),
        ('Unefon'),
        ('AT&T USA'),
        ('Metro PCS'),
        ('T-Mobile'),
        ('Sprint'),
        ('Verizon'),
        ('Cricket');


INSERT INTO marcas(marca)
VALUES  ('Samsung'),
        ('Motorola'),
        ('Huawei'),
        ('Xiaomi'),
        ('Apple'),
        ('Lg'),
        ('Alcatel'),
        ('Sony'),
        ('Hisense'),
        ('Lenovo'),
        ('Zte');


INSERT INTO servicios(servicio, precio)
VALUES  ('Centro de carga','120'),
        ('Centro de carga','200'),
        ('Centro de carga','250'),
        ('Centro de carga','280'),
        ('Centro de carga','380'),
        ('Centro de carga','450'),
        ('Display','950'),
        ('Display','1100'),
        ('Display','1350'),
        ('Display','1700'),
        ('Display0', '2600'),
        ('Desbloqueo','220'),
        ('Desbloqueo','280'),
        ('Desbloqueo','380');


INSERT INTO modelos(modelo, marca_id)
VALUES  ('GRAND PRIME','1'),
        ('A03','1'),
        ('A31','1'),
        ('S6 PLUS','1'),
        ('S22','1'),
        ('NOTE 10','1'),
        ('A23','1'),
        ('S21 FE','1'),
        ('E20','2'),
        ('G82','2'),
        ('G51','2'),
        ('G41','2'),
        ('G8 POWER LITE','2'),
        ('G8 PLUS','2'),
        ('NOVA Y90','3'),
        ('Y9A','3'),
        ('NOVA 9 SE','3'),
        ('REDMI NOTE 11','4'),
        ('IPHONE 11','5'),
        ('PRO LITE','6'),
        ('C5','7'),
        ('Z1 ULTRA','8'),
        ('F23','9'),
        ('K6','10'),
        ('A5','11'),
        ('IPHONE 13 MAX','5'),
        ('9A','4'),
        ('IPHONE 13 PRO MAX','5'),
        ('EDGE 2021','2'),
        ('IPHONE XR','5'),
        ('10C','4'),
        ('G PURE','2');






INSERT INTO equipos(imei, falla, observaciones_de_recepcion, observaciones_de_entrega, compania_id, modelo_id)
VALUES  ('152485785236985','No carga','Sin chip','Garantía 1 mes','1','5'),
        ('','Estrellado','Sin chip, sin memoria','Garantía 1 mes','1','3'),
        ('123456789142536','No carga','Equipo mojado','Garantia NO','1','1'),
        ('','No carga, enciende','Se nota daño en centro de carga','Sin solución','3','2'),
        ('','No enciende, si carga','Se mojo un poco en los botones','Garantia 15 días','2','5'),
        ('123456789526341','Estrellado','Sin chip','Garantía 15 días','3','10'),
        ('789456123741852','Estrellado','Deja chip','Garantía NO','6','11'),
        ('963852741789456','Estrellado','Sin chip, deja funda','Garantía 1 mes','3','9'),
        ('','Estrellado','Sin chip, sin memoria','Garantia NO','4','5'),
        ('','Estrellado','Sin memoria','Garantía 15 días','2','2'),
        ('','Estrellado','Sin memoria, sin chip','Garantía 15 días','2','2'),
        ('351622119965529','No carga','Sin chip, sin memoria','Garantía 15 días','2','13'),
        ('159258478', 'No carga', 'Deja chip, memoria y funda', 'Garantía 1 mes', '10','24'),
        ('','Estrellado', 'No trae la bandeja de sim', 'Garantía 15 días', '8','32'),
        ('', 'No carga', 'Sin chip, sin memoria, equipo mojado', 'Sin solución, muy dañado', '6','30'),
        ('147589623145785', 'No se ve la pantalla', 'Sin chip, deja funda', 'Garantía 1 mes', '8', '27'),
        ('355549111446396','No detecta bien la señal', 'Deja chip, sin memoria', 'Falla en tarjeta', '1','5'),
        ('350164374466191', 'Red bloqueada', 'Sin chip, sin memoria', 'Garantía 15 días', '3', '9'),
        ('', 'Estrellado', 'Sin chip, sin memoria','Garantía 15 días', '1', '15'),
        ('356212332053777', 'Estrellado', 'sin chip', 'Garantia 15 días', '1', '17');

INSERT INTO equipos_servicios(equipo_id, servicio_id)
VALUES  ('1','3'),
        ('2','9'),
        ('3','3'),
        ('4','1'),
        ('5','6'),
        ('6','7'),
        ('7','9'),
        ('8','7'),
        ('9','7'),
        ('10','10'),
        ('11','14'),
        ('11','10'),
        ('12','7'),
        ('13','3'),
        ('14','9'),
        ('15','13'),
        ('16','1'),
        ('17','8'),
        ('17','9'),
        ('18','6'),
        ('19','14'),
        ('20','11');






INSERT INTO folios(total, anticipo, resto_pendiente, fecha_cierre, total_cobrado, cliente_id, equipo_id)
VALUES  (250, 0, 250, '2022-01-01', 250, '1', '7'),
        (380, 0, 380, '2022-02-02', 0, '2', '6'),
        (950, 0, 950, '2022-10-08', 950, '3', '3'),
        (450, 0, 450, '2022-12-06', 450, '5', '4'),
        (1350, 350, 1000, '2022-05-05', 1350, '9', '5'),
        (280, 0, 280, '2022-07-11', 280, '7', '8'),
        (1100, 0, 1100, '2022-09-01', 1100, '10', '9'),
        (1700, 700, 1000, '2022-02-01', 0, '8', '2'),
        (380, 0, 380, '2022-11-07', 380, '2', '10'),
        (950, 150, 800, '2022-12-13', 950, '15', '20'),
        (1100, 0, 380, '2022-07-08', 1100, '1', '1'),
        (280, 0, 280, '2022-10-11', 0, '14', '19'),
        (1700, 0, 1700, '2022-11-25', 1700, '19', '17'),
        (950, 500, 450, '2022-11-19', 950, '16', '14'),
        (950, 0, 950, '2022-11-17', 950, '15', '15'),
        (280, 0, 280, '2022-11-05', 280, '10', '11'),
        (380, 0 , 380, '2022-11-16', 380, '18', '13'),
        (950, 0 , 950, '2022-11-17', 950, '9', '12'),
        (120, 0 , 120, '2022-11-22', 120, '17', '16'),
        (1100, 500, 600, '2022-10-29', 1100, '3', '19'),
        (2600, 1000, 1600, '2022-10-30', 2600, '4', '18');




