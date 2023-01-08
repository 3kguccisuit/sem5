--Classroom inputs
INSERT INTO classroom (room_id, description)
VALUES
  (1,'scelerisque mollis.'),
  (2,'tellus non'),
  (3,'Mauris blandit'),
  (4,'neque tellus,'),
  (5,'quis massa.'),
  (6,'ligula. Nullam'),
  (7,'facilisis facilisis,'),
  (8,'turpis. In'),
  (9,'mauris. Morbi'),
  (10,'eu tempor'),
  (11,'mauris erat'),
  (12,'lobortis, nisi'),
  (13,'quam, elementum'),
  (14,'sapien. Aenean'),
  (15,'sit amet'),
  (16,'et ultrices'),
  (17,'Nunc mauris.'),
  (18,'auctor ullamcorper'),
  (19,'sem, consequat'),
  (20,'gravida nunc');


--Instructor inputs
INSERT INTO instructor (instructor_id,personal_number,name,teach_ensembles,adress,city,zip,phone_number,email)
VALUES
  (1,155213026013,'Gray Branch','true','Ap #656-6316 Nisl Rd.','Placilla','85263','285-6753733','ullamcorper.magna@icloud.com'),
  (2,101702418024,'Destiny Sharpe','true','Ap #610-7738 Nibh Road','Bắc Kạn','33640','215-4653813','eu@outlook.org'),
  (3,53666041357,'Kristen Johnson','true','1282 Cubilia Ave','Słupsk','96819','814-6681675','nec.enim@hotmail.com'),
  (4,49162269682,'Rama Gibson','false','Ap #706-6677 Metus. Road','Hofors','62213','253-4428917','praesent@icloud.com'),
  (5,181195396249,'Signe Bernard','false','379 Nec Rd.','Tarma','37828','523-5265877','a@hotmail.com'),
  (6,65290495970,'Cassidy Salas','true','372-4581 Risus, St.','Cauayan','22441','832-3673451','a@outlook.org'),
  (7,162632422020,'Odessa Middleton','true','Ap #746-2714 Integer Ave','Maiduguri','28945','626-5114692','nonummy@yahoo.net'),
  (8,137714876878,'Ronan Phillips','false','Ap #487-4749 Aliquam Av.','Pereira','53302','853-6987028','neque@outlook.net'),
  (9,177665495835,'Maile Hampton','true','5588 Mollis Rd.','Dunedin','17423','039-4791615','accumsan.convallis@yahoo.com'),
  (10,201091657128,'Christian Potter','true','977-7773 Consectetuer Road','Serang','71161','847-6033612','ipsum@yahoo.org'),
  (11,164537742746,'Ivan Sparks','true','Ap #592-3470 Mus. Av.','Daman','74560','733-2604787','lacinia.at@google.net'),
  (12,146218178112,'Xavier Schroeder','true','8410 Ac St.','Horten','21382','138-0824229','donec.at@yahoo.net'),
  (13,163172342714,'Zachery Ward','true','P.O. Box 351, 1975 Aliquet St.','Ełk','00638','916-5122948','cras.dolor@icloud.net');

  --Instrument inputs
INSERT INTO instrument (id,type)
VALUES
  (1,'Ukulele'),
  (2,'Xylophone'),
  (3,'Violin'),
  (4,'Drum'),
  (5,'Guitar'),
  (6,'Piano'),
  (7,'Keyboard'),
  (8,'Saxophone'),
  (9,'Trombone'),
  (10,'Trumpet'),
  (11,'Clarinet'),
  (12,'Flute'),
  (13,'Accordion');

-- teacher_instrument input
INSERT INTO teacher_instrument (instructor_id, id)
VALUES
  (1, 1),
  (2, 1),
  (3, 2),
  (4, 2),
  (5, 3),
  (6, 3),
  (7, 4),
  (8, 4),
  (9, 5),
  (10, 5),
  (11, 6),
  (12, 6),
  (13, 7),
  (1, 7),
  (2, 8),
  (3, 8),
  (4, 9),
  (5, 9),
  (6, 10),
  (7, 10),
  (8, 11),
  (9, 11),
  (10, 12),
  (11, 12),
  (12, 13),
  (13, 13);

--instruments input
INSERT INTO instruments (instrument_id,type,brand,)
VALUES
  (1,'Piano','Ludwig'),
  (2,'Xylophone','Ludwig'),
  (3,'Piano','Yamaha'),
  (4,'Guitar','Yamaha'),
  (5,'Saxophone','Fender'),
  (6,'Saxophone','Yamaha'),
  (7,'Trombone','Yamaha'),
  (8,'Piano','Fender'),
  (9,'Ukulele','Yamaha'),
  (10,'Saxophone','Kala'),
  (11,'Piano','Kala'),
  (12,'Keyboard','Yamaha'),
  (13,'Trumpet','Fender'),
  (14,'Trombone','Kala'),
  (15,'Keyboard','Yamaha'),
  (16,'Accordion','Fender'),
  (17,'Trombone','Kala'),
  (18,'Clarinet','Fender'),
  (19,'Ukulele','Yamaha'),
  (20,'Flute','Kala'),
  (21,'Keyboard','Fender'),
  (22,'Drum','Kala'),
  (23,'Clarinet','Fender'),
  (24,'Piano','Ludwig'),
  (25,'Guitar','Fender'),
  (26,'Flute','Yamaha'),
  (27,'Ukulele','Kala'),
  (28,'Accordion','Yamaha'),
  (29,'Xylophone','Kala'),
  (30,'Saxophone','Kala'),
  (31,'Violin','Ludwig'),
  (32,'Trumpet','Yamaha'),
  (33,'Keyboard','Ludwig'),
  (34,'Drum','Yamaha'),
  (35,'Saxophone','Kala'),
  (36,'Flute','Kala'),
  (37,'Saxophone','Yamaha'),
  (38,'Ukulele','Fender'),
  (39,'Drum','Ludwig'),
  (40,'Flute','Fender');

--price_type inputs
INSERT INTO price_type (price_type_id, skill_level, lesson_type, salary, discount, type) 
VALUES 
  (1,  0, 200, 20, 10, 'Beginner individual'),
  (2, 25, 200, 20, 10, 'Intermediate individual'), 
  (3, 50, 200, 20, 10, 'Advanced individual'),
  (4,  0, 150, 20, 10, 'Beginner group'),
  (5, 25, 150, 20, 10, 'Intermediate group'),
  (6, 50, 150, 20, 10, 'Advanced group'),
  (7,  0, 100, 20, 10, 'Ensemble');

--student input
INSERT INTO student (student_id,personal_number,name,adress,city,zip)
VALUES
  (1,154693585620,'Alyssa Valenzuela','5421 Litora Rd.','Gwalior','66245'),
  (2,146984019658,'Daryl Anthony','288-8711 Id, Avenue','Cao Bằng','13552'),
  (3,190403466914,'Ignacia Slater','P.O. Box 432, 2981 Odio. Road','Liberia','67644'),
  (4,78044298298,'Imani Dunn','155-3920 Auctor, Street','Baracaldo','74735'),
  (5,196384845519,'Britanney Schwartz','Ap #395-3111 Ligula. Rd.','Paarl','29328'),
  (6,74326288011,'Barry Vaughn','Ap #293-5641 Arcu. Street','Zaanstad','28262'),
  (7,147403200642,'Lisandra Cabrera','Ap #105-4715 Et Road','Canberra','85740'),
  (8,120477826086,'Jayme Mcdonald','243-5641 Ac St.','Hondelange','01089'),
  (9,116783705545,'Carter Serrano','468-4572 Et, Road','Horten','38482'),
  (10,43202255482,'Philip Mathis','P.O. Box 890, 9847 Diam Street','Caxias','07748'),
  (11,108924989662,'Yeo Gillespie','960-2034 In St.','Lower Hutt','61644'),
  (12,77606939053,'Baker Rodriquez','786-541 Dis Av.','Chungju','98100'),
  (13,161286706501,'Larissa Singleton','294-4986 Enim Road','Hartford','58917'),
  (14,72949559628,'Yuri Sullivan','Ap #202-6891 Tempor, Street','Rhisnes','78601'),
  (15,160181073053,'Kareem Short','P.O. Box 799, 3060 Vel St.','Recife','75310'),
  (16,175791917609,'Ruby Ingram','3529 Neque Rd.','Sungai Penuh','70057'),
  (17,47606869075,'Daphne Peterson','Ap #201-9782 Dolor, Av.','Itapipoca','62581'),
  (18,45726951335,'Hyatt Hudson','385-8619 Ultrices. Avenue','Puri','16476'),
  (19,55191721942,'Kenyon Delacruz','971-8233 Nulla St.','Guadalupe','55248'),
  (20,48083935072,'Meredith Odonnell','Ap #599-9635 Ante. Road','Kallang','27678'),
  (21,35980056306,'Sylvia Rollins','720-2561 Lacus Rd.','Simpang','37451'),
  (22,143573445388,'Martha Schroeder','Ap #505-1136 Auctor, Rd.','Badajoz','79808'),
  (23,110893634417,'Abra Brady','1651 Posuere Avenue','Huế','41376'),
  (24,53482097427,'Tanner Johnson','P.O. Box 992, 5247 Donec Street','Saint-Urbain','38441'),
  (25,196291016949,'Rashad Hickman','863-4882 Vitae Street','Lithgow','29388'),
  (26,38633555531,'Alden England','P.O. Box 173, 1730 Justo Street','Rotorua','39322'),
  (27,57535055831,'Autumn Estes','Ap #796-8986 Purus, Av.','Santo Stefano del Sole','24240'),
  (28,189006935220,'Gail Lowe','P.O. Box 702, 1073 Nonummy Rd.','Lalbahadur Nagar','20804'),
  (29,181458910992,'Tanner Whitfield','P.O. Box 751, 9371 Adipiscing Street','San Rafael','64165'),
  (30,56208572784,'Clayton Carroll','426-6871 Varius Ave','Ghizer','13318'),  
  (31,78879883697,'Ulysses Craft','420-2816 Integer Rd.','Pangnirtung','62468'),
  (32,51313306321,'Hadley Horton','8731 Eu Rd.','Mount Isa','16372'),
  (33,26685656140,'Paul Griffin','450-5969 Egestas St.','Chimbote','18153'),
  (34,63770801950,'James Jennings','Ap #933-8229 Lectus, Street','Bislig','73595'),
  (35,56853403882,'Burton Franks','Ap #319-4991 Urna. Ave','Sabanalarga','73321'),
  (36,134101476878,'Gillian Navarro','468-2653 Non, Av.','Gorzów Wielkopolski','58878'),
  (37,86010689584,'Freya Bush','P.O. Box 191, 2336 Est Av.','Adelaide','51568'),
  (38,105577752243,'Drew Kirby','Ap #541-129 Lorem, Avenue','Moncton','89225'),
  (39,165101081304,'Sandra Hood','238-1134 At, Rd.','Seogwipo','37579'),
  (40,192605182165,'Laurel Bates','Ap #193-7308 Nec, St.','Serangoon','51732');

--lesson input
INSERT INTO lesson (lesson_id,instructor_id,room_id,price_type_id,skill_level,lesson_type,instrument_type,genre,max_students,min_students,time)
VALUES
  --ensemble lesson
  (1,13,15,7,NULL,'ensemble','Clarinet','soul',25,10,'2022-02-20'),
  (2,12,2,7,NULL,'ensemble','Clarinet','disco',25,10,'2022-11-06'),
  (3,11,7,7,NULL,'ensemble','Keyboard','hiphop',25,10,'2022-01-16'),
  (4,10,4,7,NULL,'ensemble','Trumpet','disco',25,10,'2022-01-08'),
  (5,9,4,7,NULL,'ensemble','Saxophone','pop',25,10,'2022-06-07'),
  (6,8,16,7,NULL,'ensemble','Guitar','rock',25,10,'2022-11-14'),
  (7,7,12,7,NULL,'ensemble','Violin','classic',25,10,'2022-01-19'),
  (8,6,12,7,NULL,'ensemble','Saxophone','jazz',25,10,'2022-12-24'),
  (9,5,7,7,NULL,'ensemble','Guitar','hiphop',25,10,'2022-02-09'),
  (10,4,20,7,NULL,'ensemble','Violin','rock',25,10,'2022-08-05'),
  (11,3,11,7,NULL,'ensemble','Xylophone','classic',25,10,'2022-01-25'),
  (12,2,19,7,NULL,'ensemble','Xylophone','country',25,10,'2022-10-12'),
  (13,1,15,7,NULL,'ensemble','Piano','soul',25,10,'2022-07-15'),
  (14,13,2,7,NULL,'ensemble','Violin','disco',25,10,'2022-02-15'),
  (15,12,14,7,NULL,'ensemble','Trumpet','hiphop',25,10,'2022-05-03'),
  (46,11,7,7,NULL,'ensemble','Keyboard','soul',25,10,'2022-01-13'),
  (47,11,7,7,NULL,'ensemble','Keyboard','disco',25,10,'2022-01-14'),
  (48,11,7,7,NULL,'ensemble','Keyboard','hiphop',25,10,'2022-01-15'),
  --induvidual lessons
  (16,11,15,2,'intermediate','individual','Piano',NULL,1,1,'2022-09-08'),
  (17,10,12,2,'intermediate','individual','Saxophone',NULL,1,1,'2022-09-05'),
  (18,9,18,1,'beginner','individual','Saxophone',NULL,1,1,'2022-09-22'),
  (19,8,20,1,'beginner','individual','Trumpet',NULL,1,1,'2022-10-31'),
  (20,7,13,6,'advanced','individual','Piano',NULL,1,1,'2022-09-11'),
  (21,6,6,2,'intermediate','individual','Drum',NULL,1,1,'2022-07-18'),
  (22,5,13,2,'intermediate','individual','Drum',NULL,1,1,'2022-01-07'),
  (23,4,8,1,'beginner','individual','Drum',NULL,1,1,'2022-03-13'),
  (24,3,4,2,'intermediate','individual','Piano',NULL,1,1,'2022-05-08'),
  (25,2,8,3,'advanced','individual','Saxophone',NULL,1,1,'2022-02-08'),
  (26,1,20,2,'intermediate','individual','Ukulele',NULL,1,1,'2022-05-23'),
  (27,1,6,3,'advanced','individual','Trumpet',NULL,1,1,'2022-09-11'),
  (28,2,5,1,'beginner','individual','Trumpet',NULL,1,1,'2022-02-01'),
  (29,3,12,3,'advanced','individual','Violin',NULL,1,1,'2022-10-16'),
  (30,4,15,1,'beginner','individual','Saxophone',NULL,1,1,'2022-07-29'),
  --group lessons
  (31,5,8,6,'advanced','group','Clarinet',NULL,25,5,'2022-01-19'),
  (32,6,17,6,'advanced','group','Drum',NULL,25,5,'2022-05-24'),
  (33,7,6,6,'advanced','group','Trombone',NULL,25,5,'2022-11-19'),
  (34,8,13,5,'intermediate','group','Xylophone',NULL,25,5,'2022-02-16'),
  (35,9,1,4,'beginner','group','Piano',NULL,25,5,'2022-04-15'),
  (36,10,15,5,'intermediate','group','Xylophone',NULL,25,5,'2022-03-10'),
  (37,11,17,4,'beginner','group','Keyboard',NULL,25,5,'2022-08-19'),
  (38,12,20,5,'intermediate','group','Clarinet',NULL,25,5,'2022-02-11'),
  (39,13,7,4,'beginner','group','Flute',NULL,25,5,'2022-03-02'),
  (40,13,19,6,'advanced','group','Xylophone',NULL,25,5,'2022-05-12'),
  (41,12,4,4,'beginner','group','Violin',NULL,25,5,'2022-07-12'),
  (42,10,2,6,'advanced','group','Trombone',NULL,25,5,'2022-11-29'),
  (43,8,11,4,'beginner','group','Keyboard',NULL,25,5,'2022-04-24'),
  (44,6,16,4,'beginner','group','Violin',NULL,25,5,'2022-09-05'),
  (45,3,11,4,'beginner','group','Violin',NULL,25,5,'2022-01-22');


INSERT INTO renting_instruments (rental_id,instrument_id,student_id,rental_time,price)
VALUES
  (1,7,20,'2022-03-09',93),
  (2,6,20,'2022-08-23',81),
  (3,13,3,'2022-12-22',88),
  (4,5,32,'2022-03-25',98),
  (5,7,29,'2022-02-23',83),
  (6,3,7,'2022-06-05',95),
  (7,6,19,'2022-03-19',96),
  (8,3,23,'2022-05-22',93),
  (9,11,6,'2022-10-07',86),
  (10,6,8,'2022-10-24',82),
  (11,11,23,'2022-08-28',97),
  (12,11,30,'2022-03-10',92),
  (13,2,32,'2022-10-18',96),
  (14,7,12,'2022-05-31',90),
  (15,5,25,'2022-09-12',94),
  (16,2,29,'2022-10-16',98),
  (17,9,27,'2022-10-14',88),
  (18,4,33,'2022-09-29',88),
  (19,2,18,'2022-05-04',88),
  (20,11,34,'2022-05-09',89),
  (21,10,21,'2022-03-29',96),
  (22,10,11,'2022-11-19',91),
  (23,2,12,'2022-11-17',90),
  (24,4,36,'2022-01-21',96),
  (25,7,32,'2022-04-27',88),
  (26,1,20,'2022-11-12',89),
  (27,11,36,'2022-06-16'87),
  (28,11,38,'2022-08-17'82),
  (29,2,18,'2022-10-07',87),
  (30,11,13,'2022-05-19',80),
  (31,6,7,'2022-11-22',84),
  (32,5,6,'2022-02-13',82),
  (33,4,34,'2022-09-13',80),
  (34,3,33,'2022-12-16',84),
  (35,13,14,'2022-01-19',98),
  (36,9,1,'2022-12-02',98),
  (37,3,27,'2022-09-09',84),
  (38,9,5,'2022-01-08',98),
  (39,3,37,'2022-10-17',94),
  (40,10,34,'2022-06-03',83),
  (41,2,10,'2022-01-13',99),
  (42,4,34,'2022-01-26',90),
  (43,3,23,'2022-04-22',82),
  (44,6,15,'2022-04-21',79),
  (45,8,33,'2022-06-18',89),
  (46,8,30,'2022-09-24',96),
  (47,9,31,'2022-08-20',99),
  (48,1,39,'2022-05-23',92),
  (49,5,18,'2022-02-27',90),
  (50,2,30,'2022-06-25',88);


INSERT INTO sibling (student_id1, student_id2)
VALUES
  (1,5),
  (1,14),
  (5,14),
  (3,4),
  (12,18);

--student_lesson
INSERT INTO student_lesson (lesson_id, student_id)
VALUES
--endast ensemble 1-5 används, 6-15 är oanvända. 
--induvidual lessons
  (16,1),
  (17,3),
  (18,4),
  (19,6),
  (20,8),
  (21,10),
  (22,12),
  (23,15),
  (24,17),
  (25,22),
  (26,25),
  (27,27),
  (28,29),
  (29,31),
  (30,33),
  --group lessons
  (31,1),
  (31,2),
  (31,3),
  (31,4),
  (32,5),
  (32,6),
  (33,7),
  (33,8),
  (33,9),
  (34,10),
  (34,11),
  (35,12),
  (35,13),
  (35,14),
  (35,15),
  (35,16),
  (36,17),
  (36,18),
  (37,19),
  (37,20),
  (37,21),
  (37,22),
  (38,23),
  (38,24),
  (38,25),
  (39,26),
  (39,27),
  (40,28),
  (40,29),
  (40,30),
  (41,31),
  (41,32),
  (42,33),
  (42,34),
  (42,35),
  (42,36),
  (43,37),
  (43,38),
  (44,39),
  (44,40),
  (44,1),
  (45,2),
  (45,3),
  --ensemble1 13
  (1,5),
  (1,31),
  (1,23),
  (1,28),
  (1,26),
  (1,38),
  (1,13),
  (1,27),
  (1,8),
  (1,37),
  (1,21),
  (1,22),
  (1,9),
  --ensemble2 18
  (2,22),
  (2,38),
  (2,36),
  (2,21),
  (2,14),
  (2,6),
  (2,39),
  (2,24),
  (2,1),
  (2,34),
  (2,2),
  (2,33),
  (2,16),
  (2,20),
  (2,25),
  (2,37),
  (2,9),
  (2,11),
  --ensemble3 25
  (3,34),
  (3,24),
  (3,2),
  (3,19),
  (3,33),
  (3,13),
  (3,37),
  (3,38),
  (3,9),
  (3,32),
  (3,16),
  (3,36),
  (3,6),
  (3,7),
  (3,30),
  (3,29),
  (3,14),
  (3,10),
  (3,40),
  (3,28),
  (3,27),
  (3,25),
  (3,15),
  (3,8),
  (3,17),
  --ensemble4 15
  (4,15),
  (4,4),
  (4,5),
  (4,2),
  (4,22),
  (4,34),
  (4,27),
  (4,31),
  (4,7),
  (4,39),
  (4,30),
  (4,8),
  (4,13),
  (4,11),
  (4,18),
  --ensemble5 21
  (5,2),
  (5,17),
  (5,6),
  (5,13),
  (5,28),
  (5,35),
  (5,14),
  (5,3),
  (5,4),
  (5,1),
  (5,15),
  (5,38),
  (5,16),
  (5,31),
  (5,26),
  (5,30),
  (5,9),
  (5,18),
  (5,25),
  (5,24),
  (5,40);