show databases;
use assignment;
show tables;
select * from employee;
select * from employee where deptno = 10 and salary > 3000;
drop table if exists students;
CREATE TABLE  students  (
   id  int(11) NOT NULL,
   name  varchar(25) DEFAULT NULL,
   marks  float(6,2) DEFAULT NULL,
   PRIMARY KEY ( id )
);
INSERT INTO  students  VALUES 
(11,'Britney',95.00),(12,'Dyana',55.00),
(13,'Jenny',66.00),(14,'Christene',88.00),
(15,'Meera',24.00),(16,'Priya',76.00),
(17,'Priyanka',77.00),(18,'Paige',74.00),
(19,'Samantha',87.00),(21,'Julia',96.00),
(27,'Evil',79.00),(29,'Jane',64.00),
(31,'Scarlet',80.00),(32,'Kristeen',100.00),
(34,'Fanny',75.00),(37,'Belvet',78.00),
(38,'Danny',75.00),(41,'Salma',81.00),
(51,'Amanda',34.00),(61,'Heraldo',94.00),
(71,'Stuart',99.00),(76,'Amina',89.00),
(81,'Aamina',77.00),(91,'Vivek',84.00),
(96,'Devil',76.00);
select * from students where marks > 40.00 and marks < 50.00;
select * from students where marks > 50.00 and marks < 80.00;
create view view1 as select * from students 
where marks > 50.00 and marks < 80.00;
select * from view1;
select * from students where marks > 80.00 and marks < 100.00;
create view viewdist as select * from students 
where marks > 80.00 and marks < 100.00;
select * from viewdist;
drop table if exists station;
CREATE TABLE `station` (
  `id` int(11) DEFAULT NULL,
  `city` varchar(21) DEFAULT NULL,
  `state` char(4) DEFAULT NULL,
  `lat_n` float(7,2) DEFAULT NULL,
  `long_w` float(7,2) DEFAULT NULL
);
INSERT INTO `station` VALUES 
(794,'Kissee Mills','MO',139.65,73.42),
(824,'Loma Mar','CA',48.70,130.54),
(603,'Sandy Hook','CT',72.34,148.24),
(478,'Tipton','IN',33.55,97.94),
(619,'Arlington','CO',75.18,92.95),
(711,'Turner','AR',50.24,101.46),
(839,'Slidell','LA',85.32,151.87),
(411,'Negreet','LA',98.97,105.34),
(588,'Glencoe','KY',46.39,136.04),
(665,'Chelsea','IA',98.72,59.69),
(342,'Chignik Lagoon','AK',103.20,153.01),
(733,'Pelahatchie','MS',38.58,28.12),
(441,'Hanna City','IL',50.99,136.78),
(811,'Dorrance','KS',102.09,121.56),
(698,'Albany','CA',49.75,80.21),
(325,'Monument','KS',70.52,141.77),
(414,'Manchester','MD',73.52,37.15),
(113,'Prescott','IA',39.93,65.79),
(971,'Graettinger','IA',94.66,150.38),
(266,'Cahone','CO',116.23,127.01),
(617,'Sturgis','MS',36.46,126.17),
(495,'Upperco','MD',114.22,29.63),
(473,'Highwood','IL',27.25,150.92),
(959,'Waipahu','HI',106.45,33.91),
(438,'Bowdon','GA',88.98,78.49),
(571,'Tyler','MN',133.35,58.63),
(92,'Watkins','CO',83.27,96.74),
(399,'Republic','MI',75.42,130.13),
(426,'Millville','CA',32.56,145.74),
(844,'Aguanga','CA',79.89,65.94),
(321,'Bowdon Junction','GA',85.93,33.60),
(606,'Morenci','AZ',104.90,110.20),
(957,'South El Monte','CA',74.05,79.64),
(833,'Hoskinston','KY',65.75,65.68),
(843,'Talbert','KY',39.86,58.85),
(166,'Mccomb','MS',74.04,42.63),
(339,'Kirk','CO',141.10,136.33),
(909,'Carlock','IL',117.32,84.80),
(829,'Seward','IL',72.42,90.21),
(766,'Gustine','CA',111.09,140.83),
(392,'Delano','CA',126.35,91.50),
(555,'Westphalia','MI',32.77,143.81),
(33,'Saint Elmo','AL',27.35,50.58),
(728,'Roy','MT',41.31,51.56),
(656,'Pattonsburg','MO',138.10,32.11),
(394,'Centertown','MO',133.97,93.17),
(366,'Norvell','MI',125.34,93.75),
(96,'Raymondville','MO',70.68,148.44),
(867,'Beaver Island','MI',81.88,164.88),
(977,'Odin','IL',53.49,115.79),
(741,'Jemison','AL',62.10,25.71),
(436,'West Hills','CA',68.43,73.10),
(323,'Barrigada','GU',60.61,147.53),
(3,'Hesperia','CA',106.06,71.12),
(814,'Wickliffe','KY',80.30,46.13),
(375,'Culdesac','ID',47.84,78.07),
(467,'Roselawn','IN',87.71,51.75),
(604,'Forest Lakes','AZ',144.84,114.29),
(551,'San Simeon','CA',37.53,28.34),
(706,'Little Rock','AR',122.24,121.15),
(647,'Portland','AR',83.92,44.81),
(25,'New Century','KS',135.02,79.27),
(250,'Hampden','MA',76.39,26.48),
(124,'Pine','MN',119.46,129.37),
(547,'Sandborn','IN',55.95,93.85),
(701,'Seaton','IL',128.23,78.43),
(197,'Milledgeville','IL',90.99,113.27),
(613,'East','MI',108.69,42.48),(630,'Prince','MD',104.83,57.72),
(767,'Pomona','FL',100.52,163.35),(679,'Gretna','LA',75.26,142.58),
(896,'Yazoo','MS',95.01,85.22),(403,'Zionsville','IN',57.79,36.49),
(519,'Rio','CA',29.39,105.82),(482,'Jolon','CA',66.65,52.96),
(252,'Childs','MD',92.76,104.02),
(600,'Shreveport','LA',136.23,38.50),
(14,'Forest','MS',120.28,50.23),
(260,'Sizerock','KY',116.02,112.75),
(65,'Buffalo','CO',47.66,148.19),(753,'Algonac','MI',118.74,80.15),
(174,'Onaway','MI',108.61,55.76),
(263,'Irvington','IL',96.70,68.29),
(253,'Winsted','MN',68.82,72.52),
(557,'Woodbury','GA',102.55,93.38),
(897,'Samantha','AL',75.22,35.94),
(98,'Hackleburg','AL',119.56,120.62),
(423,'Soldier','KS',77.30,152.60),
(361,'Arrowsmith','IL',28.00,109.34),
(409,'Columbus','GA',67.34,46.62),
(312,'Bentonville','AR',36.95,78.07),
(854,'Kirkland','AZ',86.41,58.00),(160,'Grosse','MI',102.05,91.37),
(735,'Wilton','ME',56.58,157.19),(608,'Busby','MT',104.09,29.83),
(122,'Robertsdale','AL',97.72,85.37),(93,'Dale','IN',69.59,34.42),
(67,'Reeds','MO',30.79,42.50),(906,'Hayfork','CA',35.30,116.67),
(34,'Mcbrides','MI',74.06,35.68),
(921,'Lee Center','IL',95.79,77.13),
(401,'Tennessee','IL',55.50,155.65),
(536,'Henderson','IA',77.92,77.91),(953,'Udall','KS',112.68,59.96),
(370,'Palm Desert','CA',106.81,145.76),
(614,'Benedict','KS',138.50,95.72),
(998,'Oakfield','ME',47.66,132.21),(805,'Tamms','IL',59.87,75.05),
(235,'Haubstadt','IN',27.99,32.08),
(820,'Chokio','MN',81.36,134.23),(650,'Clancy','MT',45.83,164.38),
(791,'Scotts','CA',119.93,90.95),(324,'Norwood','MN',144.49,34.89),
(442,'Elkton','MD',103.25,156.73),(633,'Bertha','MN',39.95,105.31),
(109,'Bridgeport','MI',50.69,79.90),
(780,'Cherry','IL',68.30,46.70),(492,'Regina','KY',131.55,90.24),
(965,'Griffin','GA',38.74,151.72),
(778,'Pine Bluff','AR',60.41,145.79),
(337,'Mascotte','FL',121.46,146.17),
(259,'Baldwin','MD',81.74,40.44),
(955,'Netawaka','KS',109.21,119.74),
(752,'East','CA',106.23,115.25),(886,'Pony','MT',99.26,162.88),
(200,'Franklin','LA',82.24,31.78),(384,'Amo','IN',103.59,159.43),
(518,'Vulcan','MO',108.61,91.56),
(188,'Prairie Du Rocher','IL',75.58,70.71),
(161,'Alanson','MI',90.65,72.12),(486,'Delta','LA',136.54,49.73),
(406,'Carver','MN',45.89,122.07),(940,'Paron','AR',59.14,104.34),
(237,'Winchester','ID',38.37,80.05),
(465,'Jerome','AZ',121.71,34.41),
(591,'Baton','LA',129.84,71.75),(570,'Greenview','CA',80.50,57.59),
(429,'Lucerne','CA',35.62,48.41),
(278,'Cromwell','MN',128.85,53.51),
(927,'Quinter','KS',59.58,25.36),
(59,'Whitewater','MO',82.72,71.43),
(218,'Round','ME',127.44,124.00),
(291,'Clarkdale','AZ',58.19,73.95),
(668,'Rockton','IL',116.12,86.84),(682,'Pheba','MS',90.95,127.30),
(775,'Eleele','HI',80.91,152.52),(527,'Auburn','IA',95.49,137.07),
(108,'North','ME',70.83,27.32),(190,'Oconee','GA',92.56,119.48),
(232,'Grandville','MI',38.85,70.14),
(405,'Susanville','CA',128.25,80.32),
(273,'Rosie','AR',72.76,161.92),(813,'Verona','MO',109.66,152.64),
(444,'Richland','GA',105.47,113.04),
(899,'Fremont','MI',54.47,150.82),
(738,'Philipsburg','MT',95.96,72.24),
(215,'Kensett','IA',55.72,139.55),
(743,'De Tour Village','MI',25.42,25.11),
(377,'Koleen','IN',137.55,110.51),(727,'Winslow','IL',113.13,38.71),
(363,'Reasnor','IA',41.60,162.56),(117,'West','IA',127.23,99.41),
(420,'Frankfort','IL',71.60,30.37),(888,'Bono','AR',133.28,150.50),
(784,'Biggsville','IL',85.93,138.75),
(413,'Linthicum','MD',127.56,67.73),
(695,'Amazonia','MO',45.79,148.20),
(609,'Marysville','MI',85.76,132.87),(471,'Cape','MO',73.50,90.54),
(649,'Pengilly','MN',25.07,154.06),
(946,'Newton','MA',48.41,144.84),(380,'Crane','MN',72.92,43.22),
(383,'Newbury','MA',128.40,85.17),(44,'Kismet','KS',99.82,156.50),
(433,'Canton','ME',98.73,105.97),(283,'Clipper','CA',113.72,56.95),
(474,'Grayslake','IL',61.30,33.06),(233,'Pierre','LA',52.09,90.06),
(990,'Bison','KS',132.23,74.89),
(502,'Bellevue','KY',127.43,121.75),
(327,'Ridgway','CO',77.44,110.27),(4,'South','CT',65.58,33.61),
(228,'Rydal','GA',35.68,78.82),(642,'Lynnville','KY',25.41,146.49),
(885,'Deerfield','MO',40.21,35.94),
(539,'Montreal','MO',129.25,127.33),(202,'Hope','MN',140.36,43.73),
(593,'Aliso','CA',67.52,131.42),(521,'Gowrie','IA',130.20,127.98),
(938,'Andersonville','GA',141.31,72.53),
(919,'Knob','KY',135.85,33.39),
(528,'Crouseville','ME',36.52,81.54),
(331,'Cranks','KY',55.61,27.28),(45,'Rives','MI',94.20,116.85),
(944,'Ledyard','CT',134.55,143.81),(949,'Norway','ME',83.89,88.41),
(88,'Eros','LA',95.16,58.31),(878,'Rantoul','KS',31.80,118.62),
(35,'Richmond Hill','GA',39.40,113.60),
(17,'Fredericktown','MO',105.53,112.69),
(447,'Arkadelphia','AR',98.62,49.58),
(498,'Glen','IL',60.84,140.72),
(351,'Fredericksburg','IN',44.51,78.06),
(774,'Manchester','IA',129.67,123.30),
(116,'Mc Henry','MD',93.29,112.56),
(963,'Eriline','KY',93.62,65.44),
(643,'Wellington','KY',100.45,31.69),
(781,'Hoffman','IL',129.40,53.42),(364,'Howard','MN',125.76,78.33),
(777,'Edgewater','MD',130.07,72.29),
(15,'Ducor','CA',140.86,102.04),(910,'Salem','KY',86.98,113.96),
(612,'Sturdivant','MO',93.84,86.39),
(537,'Hagatna','GU',97.17,151.81),(970,'East','CT',115.68,132.38),
(510,'Eastlake','MI',134.09,38.78),
(354,'Larkspur','CA',107.05,65.97),
(983,'Patriot','IN',82.64,46.08),
(799,'Corriganville','MD',141.38,153.65),
(581,'Carlos','MN',114.91,66.28),(825,'Addison','MI',96.37,142.41),
(526,'Tarzana','CA',135.86,81.31),
(176,'Grapevine','AR',92.37,84.54),
(994,'Kanorado','KS',65.42,85.72),
(704,'Climax','MI',127.36,107.05),
(582,'Curdsville','KY',84.79,150.48),
(884,'Southport','CT',59.09,63.13),
(196,'Compton','IL',106.62,99.41),
(605,'Notasulga','AL',66.84,115.69),
(430,'Rumsey','KY',70.69,50.21),(234,'Rogers','CT',140.47,33.18),
(700,'Pleasant','AR',135.14,145.59),
(702,'Everton','MO',119.05,51.49),(662,'Skanee','MI',70.17,129.56),
(171,'Springerville','AZ',124.69,150.66),
(615,'Libertytown','MD',144.58,111.97),
(26,'Church','MD',39.43,91.26),(692,'Yellow','ID',83.12,150.89),
(336,'Dumont','MN',57.01,129.37),(464,'Gales','CT',104.57,37.41),
(315,'Ravenna','KY',79.15,106.25),
(505,'Williams','AZ',73.48,111.74),
(842,'Decatur','MI',63.31,161.42),
(982,'Holbrook','AZ',134.88,103.86),
(868,'Sherrill','AR',79.96,152.22),
(554,'Brownsdale','MN',52.43,50.80),
(199,'Linden','MI',53.41,32.62),(453,'Sedgwick','AR',68.93,75.29),
(451,'Fort','IA',142.86,140.64),
(950,'Peachtree City','GA',80.49,155.98),
(326,'Rocheport','MO',114.16,64.48),(189,'West','KY',73.97,45.06),
(638,'Clovis','CA',92.44,138.08),(156,'Heyburn','ID',82.09,121.05),
(861,'Peabody','KS',75.42,152.21),(722,'Marion','AL',53.32,31.34),
(428,'Randall','KS',48.00,135.63),
(677,'Hayesville','IA',119.99,42.13),
(183,'Jordan','MN',68.75,35.46),
(322,'\"White Horse	Beach\"','MA',54.29,59.32),
(827,'Greenville','IL',50.64,153.02),
(242,'Macy','IN',138.69,152.37),(621,'Flowood','MS',64.89,149.21),
(960,'Deep','IA',75.37,38.57),(180,'Napoleon','IN',32.03,160.24),
(382,'Leavenworth','IN',100.43,121.73),
(853,'Coldwater','KS',47.51,26.31),
(105,'Weldon','CA',134.02,118.96),
(357,'Yellville','AR',35.69,42.25),
(710,'Turners','MA',31.09,125.09),(520,'Delray','FL',27.29,158.52),
(920,'Eustis','FL',42.74,39.48),(684,'Mineral','MO',91.20,41.43),
(355,'Weldona','CO',32.97,58.45),
(389,'Midpines','CA',106.43,59.38),
(303,'Cascade','ID',31.77,157.48),(501,'Tefft','IN',93.22,150.02),
(673,'Showell','MD',44.19,163.54),
(834,'Bayville','ME',106.73,143.41),
(255,'Brighton','IL',107.61,32.85),(595,'Grimes','IA',42.05,74.73),
(709,'Nubieber','CA',132.90,49.28),(100,'North','ME',130.95,78.17),
(522,'Harmony','MN',124.36,126.37),(16,'Beaufort','MO',71.77,85.66)
,(231,'Arispe','IA',31.11,137.80),(923,'Union','MO',79.07,132.66),
(891,'Humeston','IA',74.51,122.42),
(165,'Baileyville','IL',82.25,61.45),
(757,'Lakeville','CT',59.87,94.99),
(506,'Firebrick','KY',49.99,95.04),(76,'Pico','CA',143.28,116.53),
(246,'Ludington','MI',30.22,120.23),
(583,'Channing','MI',117.16,56.95),
(666,'West Baden Springs','IN',30.35,96.11),
(373,'Pawnee','IL',85.23,81.42),(504,'Melber','KY',37.25,55.53),
(901,'Manchester','MN',71.02,84.01),
(306,'Bainbridge','GA',62.05,56.88),
(821,'Sanders','AZ',130.50,96.78),
(586,'Ottertail','MN',100.02,44.34),(95,'Dupo','IL',41.28,29.03),
(524,'Montrose','CA',136.48,119.37),
(716,'Schleswig','IA',119.25,51.88),
(849,'Harbor','MI',141.30,148.86),
(611,'Richmond','IL',113.25,163.46),
(904,'Ermine','KY',119.64,62.80),(740,'Siler','KY',137.02,117.25),
(439,'Reeves','LA',35.25,51.40),(57,'Clifton','AZ',30.15,135.70),
(155,'Casco','MI',138.60,109.07),
(755,'Sturgis','MI',117.39,135.40),
(11,'Crescent','FL',58.04,117.90),
(287,'Madisonville','LA',112.22,53.05),
(435,'Albion','IN',44.26,121.88),(672,'Lismore','MN',58.87,103.87),
(572,'Athens','IN',75.32,120.80),
(890,'Eufaula','AL',140.30,103.09),
(975,'Panther','MS',116.51,164.52),
(914,'Hanscom','MA',129.19,136.41),
(119,'Wildie','KY',69.66,111.86),(540,'Mosca','CO',89.20,141.48),
(678,'Bennington','IN',35.52,26.80),
(208,'Lottie','LA',109.87,82.77),
(512,'Garland','ME',108.73,134.38),
(352,'Clutier','IA',61.19,127.03),(948,'Lupton','MI',139.93,53.36),
(503,'Northfield','MN',61.00,37.15),
(288,'Daleville','AL',121.89,136.17),
(560,'Osage City','KS',110.20,89.61),(479,'Cuba','MO',63.72,87.65),
(826,'Norris','MT',47.19,37.26),(651,'Clopton','AL',40.77,84.71),
(143,'Renville','MN',142.15,99.43),
(240,'Saint','KS',66.21,163.01),
(102,'Kirksville','MO',140.00,143.87),
(69,'Kingsland','AR',78.22,85.14),
(181,'Fairview','KS',80.27,164.58),(175,'Lydia','LA',41.78,39.53),
(80,'Bridgton','ME',93.23,140.42),
(596,'Brownstown','IL',48.65,63.22),
(301,'Monona','IA',144.13,81.58),
(987,'Hartland','MI',136.26,107.74),
(973,'Andover','CT',51.74,52.53),(981,'Lakota','IA',56.15,92.39),
(440,'Grand','CA',37.31,126.59),(110,'Mesick','MI',82.12,108.53),
(396,'Dryden','MI',69.80,47.74),(637,'Beverly','KY',57.75,126.90),
(566,'Marine On Saint Croix','MN',126.16,115.79),
(801,'Pocahontas','IL',109.63,83.23),(739,'Fort','FL',43.99,35.30),
(130,'Hayneville','AL',109.74,157.47),
(345,'Yoder','IN',83.50,143.72),(851,'Gatewood','MO',76.32,145.67),
(489,'Madden','MS',81.34,99.38),
(223,'Losantville','IN',112.52,106.78),
(538,'Cheswold','DE',31.94,59.35),
(329,'Caseville','MI',102.92,98.40),
(815,'Pomona','MO',52.33,50.28),
(789,'Hopkinsville','KY',27.32,47.95),
(269,'Jack','AL',49.94,85.63),(969,'Dixie','GA',27.22,36.47),
(271,'Hillside','CO',99.27,68.84),
(667,'Hawarden','IA',90.96,46.93),
(350,'Cannonsburg','MI',91.03,120.67),
(49,'Osborne','KS',70.36,139.71),(332,'Elm','LA',45.94,29.40),
(172,'Atlantic','MI',131.23,99.47),(699,'North','CT',37.80,95.27),
(417,'New','IA',139.96,94.60),(99,'Woodstock','CT',117.39,162.63),
(404,'Farmington','IL',91.71,72.02),
(23,'Honolulu','HI',110.10,139.74),(1,'Pfeifer','KS',37.44,65.68),
(127,'Oshtemo','MI',100.37,135.95),
(657,'Gridley','KS',118.15,55.80),(261,'Fulton','KY',111.11,51.93),
(182,'Winter','FL',133.23,32.76),(328,'Monroe','LA',28.36,108.42),
(779,'Del','CA',59.18,95.77),(646,'Greens','IN',133.92,135.48),
(756,'Garden','AL',96.08,105.42),(157,'Blue','KY',116.96,162.00),
(400,'New','IN',134.02,120.95),(61,'Brilliant','AL',86.44,159.85),
(610,'Archie','MO',40.20,28.20),(985,'Winslow','AR',126.14,126.12),
(207,'Olmitz','KS',29.24,38.40),(941,'Allerton','IA',61.84,112.50),
(70,'Norphlet','AR',144.02,61.19),
(343,'Mechanic','ME',71.67,71.12),(531,'North','KY',42.99,141.91),
(996,'Keyes','CA',76.97,85.61),(167,'Equality','AL',106.98,116.06),
(750,'Neon','KY',101.98,147.67),(410,'Calhoun','KY',95.60,56.90),
(725,'Alpine','AR',116.82,114.65),
(988,'Mullan','ID',143.30,154.67),(55,'Coalgood','KY',57.17,149.02)
,(640,'Walnut','MS',40.94,76.96),(302,'Saint','FL',51.71,119.86),
(387,'Ojai','CA',68.61,119.33),(476,'Julian','CA',130.51,101.56),
(907,'Veedersburg','IN',78.90,94.85),
(294,'Orange','FL',59.22,137.31),(661,'Payson','AZ',126.30,154.16),
(745,'Windom','KS',114.19,126.39),(631,'Urbana','IA',142.53,29.35),
(356,'Ludlow','CA',110.99,87.59),(419,'Lindsay','MT',143.10,67.84),
(494,'Palatka','FL',94.55,52.33),(625,'Bristol','ME',87.97,95.29),
(459,'Harmony','IN',135.02,70.83),(636,'Ukiah','CA',86.98,89.58),
(106,'Yuma','AZ',111.33,153.95),(204,'Alba','MI',91.64,103.63),
(344,'Zachary','LA',60.71,152.49),(599,'Esmond','IL',75.55,90.92),
(515,'Waresboro','GA',144.25,153.61),
(497,'Hills','MN',137.97,134.77),
(162,'Montgomery','MO',70.44,44.67),
(499,'Delavan','MN',32.58,64.51),(362,'Magnolia','MS',112.74,31.80)
,(545,'Byron','CA',136.51,120.42),(712,'Dundee','IA',61.60,105.04),
(257,'Eureka','AR',72.06,34.78),(154,'Baker','CA',31.05,148.46),
(715,'Hyde','MA',65.09,156.24),(493,'Groveoak','AL',53.39,87.51),
(836,'Kenner','LA',91.74,126.57),(82,'Many','LA',36.28,94.73),
(644,'Seward','AK',120.29,35.71),(391,'Berryton','KS',60.73,139.76)
,(696,'Chilhowee','MO',79.61,49.36),
(905,'Newark','IL',72.53,129.89),(81,'Cowgill','MO',136.80,27.64),
(31,'Novinger','MO',108.04,111.91),
(299,'Goodman','MS',101.44,117.28),(84,'Cobalt','CT',87.32,26.53),
(754,'South','MI',144.66,52.79),(144,'Eskridge','KS',107.63,63.49),
(305,'Bennington','KS',93.87,83.24),
(226,'Decatur','MS',71.25,117.57),(224,'West','MA',58.96,96.01),
(694,'Ozona','FL',144.99,120.88),(623,'Jackson','AL',111.23,67.24),
(543,'Lapeer','MI',128.62,114.26),(819,'Peaks','ME',59.14,110.69),
(243,'Hazlehurst','MS',49.03,108.50),
(457,'Chester','CA',69.81,123.93),
(871,'Clarkston','MI',93.94,80.54),
(470,'Healdsburg','CA',111.10,54.22),
(705,'Hotchkiss','CO',69.90,71.82),
(690,'Ravenden','AR',67.63,108.26),(62,'Monroe','AR',131.90,150.22)
,(365,'Payson','IL',81.74,92.11),(922,'Kell','IL',70.36,58.74),
(838,'Strasburg','CO',89.40,47.89),(286,'Five','AL',45.66,122.22),
(968,'Norris','IL',53.67,76.11),(928,'Coaling','AL',144.26,52.21),
(746,'Orange','IA',93.53,162.95),
(892,'Effingham','KS',132.95,97.72),
(193,'Corcoran','CA',81.30,139.56),
(225,'Garden','IA',54.21,119.91),(573,'Alton','MO',79.78,112.04),
(830,'Greenway','AR',119.27,35.99),
(241,'Woodsboro','MD',76.63,141.89),
(783,'Strawn','IL',29.68,51.09),(675,'Dent','MN',70.75,136.78),
(270,'Shingletown','CA',61.12,102.10),
(378,'Clio','IA',46.15,115.42),(104,'Yalaha','FL',120.38,119.69),
(460,'Leakesville','MS',107.17,72.58),(804,'Fort','CO',38.50,93.39)
,(53,'Shasta','CA',99.32,155.61),(448,'Canton','MN',123.64,151.42),
(751,'Agency','MO',59.28,95.68),(29,'South','KY',58.00,116.96),
(718,'Taft','CA',107.86,146.74),(213,'Calpine','CA',46.51,43.28),
(624,'Knobel','AR',95.35,62.09),(908,'Bullhead','AZ',94.83,30.43),
(845,'Tina','MO',131.70,28.12),(685,'Anthony','KS',45.01,161.13),
(731,'Emmett','ID',57.10,31.53),(311,'South','MN',30.50,87.13),
(866,'Haverhill','IA',61.83,109.17),
(598,'Middleboro','MA',108.05,149.29),
(541,'Siloam','GA',105.02,92.23),(889,'Lena','LA',78.16,129.62),
(654,'Lee','IL',27.67,51.01),(841,'Freeport','MI',113.55,50.96),
(446,'Mid','FL',110.41,50.75),(249,'Acme','LA',73.16,67.68),
(376,'Gorham','KS',111.32,64.75),(136,'Bass','ME',137.67,61.33),
(455,'Granger','IA',33.42,102.08),
(136,'Bass Harbor','ME',137.67,61.33),
(455,'Granger','IA',33.42,102.08);
create view viewst as 
select distinct city name from station where id % 2 = 0;
select * from viewst;
create view viewN as select city name from station;
create view viewM as select distinct city name from station;
select count(city) FROM station;
select count(distinct city) from station;
SeLECT count(city) - count(distinct city) from station;
SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[aeiou]';
SELECT distinct city from station WHERE 
UPPER(LEFT(city,1)) IN ('A', 'E', 'I', 'O', 'U')
AND LOWER(RIGHT(city,1)) IN ('a', 'e', 'i', 'o', 'u');
Select Distinct city
From   station
Where  city Like 'A%a'
       Or city Like 'A%e'
       Or city Like 'A%i'
       Or city Like 'A%o'
       Or city Like 'A%u'
       Or city Like 'E%a'
       Or city Like 'E%e'
       Or city Like 'E%i'
       Or city Like 'E%o'
       Or city Like 'E%u'
       Or city Like 'I%a'
       Or city Like 'I%e'
       Or city Like 'I%i'
       Or city Like 'I%o'
       Or city Like 'I%u'
       Or city Like 'O%a'
       Or city Like 'O%e'
       Or city Like 'O%i'
       Or city Like 'O%o'
       Or city Like 'O%u'
       Or city Like 'U%a'
       Or city Like 'U%e'
       Or city Like 'U%i'
       Or city Like 'U%o'
       Or city Like 'U%u';
SELECT DISTINCT CITY FROM STATION 
WHERE CITY NOT RLIKE '^[aeiouAEIOU].*$';
SELECT DISTINCT CITY FROM STATION 
WHERE CITY RLIKE '^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ].*';
SELECT DISTINCT City FROM Station
WHERE LEFT(City, 1) NOT IN ("a", "e", "i", "o", "u");
select distinct city from station where city regexp '^[^aeiou].*';
SELECT DISTINCT city FROM station 
WHERE city RLIKE '^[^aeiouAEIOU].*|.*[^AEIOUaeiou]$';
SELECT DISTINCT city FROM station
WHERE  city REGEXP '^[^aeiouAEIOU]|[^aeiouAEIOU]$';
SELECT city 
FROM station 
WHERE left(city,1) not regexp 'a|e|i|o|u' or right(city,1) not regexp 'a|e|i|o|u' 
GROUP BY city;
SELECT DISTINCT city
FROM station
WHERE regexp_like (city, '^[^aeiouAEIOU].*') 
OR regexp_like (city, '.*[^aeiouAEIOU]$');
SHOW tables;
drop table if exists emp;
CREATE TABLE  emp  (
   emp_no  int(11) NOT NULL,
   birth_date  date NOT NULL,
   first_name  varchar(14) NOT NULL,
   last_name  varchar(16) NOT NULL,
   gender  enum('M','F') NOT NULL,
   hire_date  date NOT NULL,
   salary  float(8,2) DEFAULT 7850.00
);
INSERT INTO  emp  VALUES 
(10001,'1953-09-02','Georgi','Facello','M','2020-02-23',7850.00),
(10002,'1964-06-02','Bezalel','Simmel','F','2020-02-23',1756.50),(10003,'1959-12-03','Parto','Bamford','M','2020-02-23',7850.00),(10004,'1954-05-01','Chirstian','Koblick','M','2020-04-15',3475.00),(10005,'1955-01-21','Kyoichi','Maliniak','M','2019-12-27',1756.50),(10006,'1953-04-20','Anneke','Preusig','F','2020-02-23',7850.00),(10007,'1957-05-23','Tzvetan','Zielinski','F','2020-02-23',7850.00),(10008,'1958-02-19','Saniya','Kalloufi','M','1994-09-15',6759.00),(10009,'1952-04-19','Sumant','Peac','F','2020-02-23',7850.00),(10010,'1963-06-01','Duangkaew','Piveteau','F','2019-12-27',1375.00),(10011,'1953-11-07','Mary','Sluis','F','1990-01-22',6759.00),(10012,'1960-10-04','Patricio','Bridgland','M','1992-12-18',3475.00),(10013,'1963-06-07','Eberhardt','Terkki','M','2020-02-23',7850.00),(10014,'1956-02-12','Berni','Genin','M','2020-02-23',1756.50),(10015,'1959-08-19','Guoxiang','Nooteboom','M','2019-12-27',1375.00),(10016,'1961-05-02','Kazuhito','Cappelletti','M','1995-01-27',3475.00),(10017,'1958-07-06','Cristinel','Bouloucos','F','1993-08-03',6759.00),(10018,'1954-06-19','Kazuhide','Peha','F','2020-02-23',7850.00),(10019,'1953-01-23','Lillian','Haddadi','M','1999-04-30',7850.00),(10020,'1952-12-24','Mayuko','Warwick','M','1991-01-26',4300.00),(10021,'1960-02-20','Ramzi','Erde','M','2020-02-23',7850.00),(10022,'1952-07-08','Shahaf','Famili','M','1995-08-22',7850.00),(10023,'1953-09-29','Bojan','Montemayor','F','2020-02-23',1756.50),(10024,'1958-09-05','Suzette','Pettey','F','1997-05-19',3475.00),(10025,'1958-10-31','Prasadram','Heyers','M','2019-12-27',1375.00),(10026,'1953-04-03','Yongqiao','Berztiss','M','1995-03-20',6759.00),(10027,'1962-07-10','Divier','Reistad','F','2020-02-23',7850.00),(10028,'1963-11-26','Domenick','Tempesti','M','1991-10-22',3475.00),(10029,'1956-12-13','Otmar','Herbst','M','2020-02-23',1756.50),(10030,'1958-07-14','Elvis','Demeyer','M','1994-02-17',4300.00),(10031,'1959-01-27','Karsten','Joslin','M','1991-09-01',7850.00),(10032,'1960-08-09','Jeong','Reistad','F','1990-06-20',6759.00),(10033,'1956-11-14','Arif','Merlo','M','2020-02-23',7850.00),(10034,'1962-12-29','Bader','Swan','M','2020-02-23',7850.00),(10035,'1953-02-08','Alain','Chappelet','M','2019-12-27',1756.50),(10036,'1959-08-10','Adamantios','Portugali','M','1992-01-03',3475.00),(10037,'1963-07-22','Pradeep','Makrucki','M','1990-12-05',7850.00),(10038,'1960-07-20','Huan','Lortz','M','2020-02-23',1756.50),(10039,'1959-10-01','Alejandro','Brender','M','2020-02-23',7850.00),(10040,'1959-09-13','Weiyi','Meriste','F','1993-02-14',4300.00),(10041,'1959-08-27','Uri','Lenart','F','2020-02-23',1756.50),(10042,'1956-02-26','Magy','Stamatiou','F','1993-03-21',7850.00),(10043,'1960-09-19','Yishay','Tzvieli','M','1990-10-20',7850.00),(10044,'1961-09-21','Mingsen','Casley','F','1994-05-21',6759.00),(10045,'1957-08-14','Moss','Shanbhogue','M','2019-12-27',1375.00),(10046,'1960-07-23','Lucien','Rosenbaum','M','1992-06-20',7850.00),(10047,'1952-06-29','Zvonko','Nyanchama','M','2020-02-23',1756.50),(10048,'1963-07-11','Florian','Syrotiuk','M','2020-04-15',3475.00),(10049,'1961-04-24','Basil','Tramer','F','1992-05-04',7850.00),(10050,'1958-05-21','Yinghua','Dredge','M','1990-12-25',4300.00),(10051,'1953-07-28','Hidefumi','Caine','M','1992-10-15',7850.00),(10052,'1961-02-26','Heping','Nitsch','M','2020-04-15',3475.00),(10053,'1954-09-13','Sanjiv','Zschoche','F','2020-02-23',1756.50),(10054,'1957-04-04','Mayumi','Schueller','M','1995-03-13',7850.00),(10055,'1956-06-06','Georgy','Dredge','M','1992-04-27',4300.00),(10056,'1961-09-01','Brendon','Bernini','F','1990-02-01',6759.00),(10057,'1954-05-30','Ebbe','Callaway','F','1992-01-15',7850.00),(10058,'1954-10-01','Berhard','McFarlin','M','2020-02-23',7850.00),(10059,'1953-09-19','Alejandro','McAlpine','F','1991-06-26',6759.00),(10060,'1961-10-15','Breannda','Billingsley','M','2020-04-15',1375.00),(10061,'1962-10-19','Tse','Herber','M','2020-02-23',7850.00),(10062,'1961-11-02','Anoosh','Peyn','M','1991-08-30',6759.00),(10063,'1952-08-06','Gino','Leonhardt','F','2020-02-23',7850.00),(10064,'1959-04-07','Udi','Jansch','M','2020-04-15',3475.00),(10065,'1963-04-14','Satosi','Awdeh','M','2019-12-27',1756.50),(10066,'1952-11-13','Kwee','Schusler','M','2020-02-23',7850.00),(10067,'1953-01-07','Claudi','Stavenow','M','2020-02-23',7850.00),(10068,'1962-11-26','Charlene','Brattka','M','2020-04-15',1756.50),(10069,'1960-09-06','Margareta','Bierman','F','2020-02-23',7850.00),(10070,'1955-08-20','Reuven','Garigliano','M','2019-12-27',1375.00),(10071,'1958-01-21','Hisao','Lipner','M','2020-02-23',1756.50),(10072,'1952-05-15','Hironoby','Sidou','F','2020-04-15',3475.00),(10073,'1954-02-23','Shir','McClurg','M','1991-12-01',7850.00),(10074,'1955-08-28','Mokhtar','Bernatsky','F','1990-08-13',6759.00),(10075,'1960-03-09','Gao','Dolinsky','F','2019-12-27',1375.00),(10076,'1952-06-13','Erez','Ritzmann','F','2020-04-15',3475.00),(10077,'1964-04-18','Mona','Azuma','M','1990-03-02',6759.00),(10078,'1959-12-25','Danel','Mondadori','F','2020-02-23',7850.00),(10079,'1961-10-05','Kshitij','Gils','F','2020-02-23',7850.00),(10080,'1957-12-03','Premal','Baek','M','2020-04-15',1756.50),(10081,'1960-12-17','Zhongwei','Rosen','M','2020-02-23',7850.00),(10082,'1963-09-09','Parviz','Lortz','M','1990-01-03',7850.00),(10083,'1959-07-23','Vishv','Zockler','M','2020-02-23',1756.50),(10084,'1960-05-25','Tuval','Kalloufi','M','1995-12-15',3475.00),(10085,'1962-11-07','Kenroku','Malabarba','M','1994-04-09',4300.00),(10086,'1962-11-19','Somnath','Foote','M','1990-02-16',6759.00),(10087,'1959-07-23','Xinglin','Eugenio','F','2020-02-23',7850.00),(10088,'1954-02-25','Jungsoon','Syrzycki','F','2020-04-15',3475.00),(10089,'1963-03-21','Sudharsan','Flasterstein','F','2020-02-23',1756.50),(10090,'1961-05-30','Kendra','Hofting','M','2019-12-27',1375.00),(10091,'1955-10-04','Amabile','Gomatam','M','1992-11-18',7850.00),(10092,'1964-10-18','Valdiodio','Niizuma','F','2020-04-15',1756.50),(10093,'1964-06-11','Sailaja','Desikan','M','1996-11-05',7850.00),(10094,'1957-05-25','Arumugam','Ossenbruggen','F','2020-02-23',7850.00),(10095,'1965-01-03','Hilari','Morton','M','2019-12-27',1756.50),(10096,'1954-09-16','Jayson','Mandell','M','1990-01-14',3475.00),(10097,'1952-02-27','Remzi','Waschkowski','M','1990-09-15',7850.00),(10098,'1961-09-23','Sreekrishna','Servieres','F','2020-02-23',1756.50),(10099,'1956-05-25','Valter','Sullins','F','2020-02-23',7850.00),(10100,'1953-04-21','Hironobu','Haraldson','F','2020-04-15',1375.00);
SELECT FIRST_name,LAST_NAME FROM EMP 
WHERE salary > 2000.00 AND month(hire_date) > 10 
ORDER BY emp_no asc;
select * from emp;
show tables;
create table employee10 
(empid integer, fname varchar(30), lname varchar(30), 
deptno tinyint, salary decimal(10,2));
insert into employee10 values(100,'Jon','Hamm',10,2000);
insert into employee10 values(200,'Tom','Cruise', 10, 3000),
(300,'Hugh','Laurie',20,7500),(400,'Tom','Hanks',30,750);      
insert into employee10 values(500,'Johnny','Depp', 20, 1300),
(600,'Hugh','Grant',30,850),(700,'Ben','Affleck',30,75),
(800,'George','Clooney',10,10000);
insert into employee10 values(900,'Henry',Null, 10, 3000),
(1000,'Gregory','House',20,3500);
insert into employee10 values(1100,'Jean','Hackman',10,2700);
select * from employee10;
select concat(fname,"-",lname),deptno,salary 
from employee10 where deptno = 10;
select deptno,sum(salary) from employee10 where deptno = 10;
select deptno,sum(salary) from employee10 where deptno = 20;
select deptno,sum(salary) from employee10 where deptno = 30;

CREATE TABLE `city` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(17) DEFAULT NULL,
  `countrycode` varchar(3) DEFAULT NULL,
  `district` varchar(30) DEFAULT NULL,
  `population` int(11) DEFAULT NULL
) ;
INSERT INTO `city` VALUES 
(6,'Rotterdam','NLD','Zuid-Holland',593321),
(3878,'Scottsdale','USA','Arizona',202705),
(3965,'Corona','USA','California',124966),
(3973,'Concord','USA','California',121780),
(3977,'Cedar Rapids','USA','Iowa',120758),
(3982,'Coral Springs','USA','Florida',117549),
(4054,'Fairfield','USA','California',92256),
(4058,'Boulder','USA','Colorado',91238),
(4061,'Fall River','USA','Massachusetts',90555),
(1613,'Neyagawa','JPN','Osaka',257315),
(1630,'Ageo','JPN','Saitama',209442),
(1661,'Sayama','JPN','Saitama',162472),
(1681,'Omuta','JPN','Fukuoka',142889),
(1739,'Tokuyama','JPN','Yamaguchi',107078);
select * from city;
select name from city where population > 100000;
select sum(population) from city;
set sql_safe_updates = 0; 
select sum(population) from city where DISTRICT = "California";
SELECT COUNTRYCODE,AVG(POpulation) from city 
where countrycode ="NLD";
SELECT COUNTRYCODE,AVG(POpulation) from city 
WHERE countrycode ="USA";
SELECT COUNTRYCODE,AVG(POpulation) from city 
WHERE countrycode ="JPN";
use assignment;
show tables;
CREATE TABLE `customers` (
  `customerNumber` int(11) NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `postalCode` varchar(15) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `salesRepEmployeeNumber` int(11) DEFAULT NULL,
  `creditLimit` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`customerNumber`)
);
INSERT INTO `customers` VALUES (103,'Atelier graphique','40.32.2555','Nantes',NULL,'44000','France',1370,21000.00),(112,'Signal Gift Stores','7025551838','Las Vegas','NV','83030','USA',1166,71800.00),(114,'Australian Collectors, Co.','03 9520 4555','Melbourne','Victoria','3004','Australia',1611,117300.00),(119,'La Rochelle Gifts','40.67.8555','Nantes',NULL,'44000','France',1370,118200.00),(121,'Baane Mini Imports','07-98 9555','Stavern',NULL,'4110','Norway',1504,81700.00),(124,'Mini Gifts Distributors Ltd.','4155551450','San Rafael','CA','97562','USA',1165,210500.00),(125,'Havel & Zbyszek Co','(26) 642-7555','Warszawa',NULL,'01-012','Poland',NULL,0.00),(128,'Blauer See Auto, Co.','+49 69 66 90 2555','Frankfurt',NULL,'60528','Germany',1504,59700.00),(129,'Mini Wheels Co.','6505555787','San Francisco','CA','94217','USA',1165,64600.00),(131,'Land of Toys Inc.','2125557818','NYC','NY','10022','USA',1323,114900.00),(141,'Euro+ Shopping Channel','(91) 555 94 44','Madrid',NULL,'28034','Spain',1370,227600.00),(144,'Volvo Model Replicas, Co','0921-12 3555','Luleå',NULL,'S-958 22','Sweden',1504,53100.00),(145,'Danish Wholesale Imports','31 12 3555','Kobenhavn',NULL,'1734','Denmark',1401,83400.00),(146,'Saveley & Henriot, Co.','78.32.5555','Lyon',NULL,'69004','France',1337,123900.00),(148,'Dragon Souveniers, Ltd.','+65 221 7555','Singapore',NULL,'079903','Singapore',1621,103800.00),(151,'Muscle Machine Inc','2125557413','NYC','NY','10022','USA',1286,138500.00),(157,'Diecast Classics Inc.','2155551555','Allentown','PA','70267','USA',1216,100600.00),(161,'Technics Stores Inc.','6505556809','Burlingame','CA','94217','USA',1165,84600.00),(166,'Handji Gifts& Co','+65 224 1555','Singapore',NULL,'069045','Singapore',1612,97900.00),(167,'Herkku Gifts','+47 2267 3215','Bergen',NULL,'N 5804','Norway  ',1504,96800.00),(168,'American Souvenirs Inc','2035557845','New Haven','CT','97823','USA',1286,0.00),(169,'Porto Imports Co.','(1) 356-5555','Lisboa',NULL,'1756','Portugal',NULL,0.00),(171,'Daedalus Designs Imports','20.16.1555','Lille',NULL,'59000','France',1370,82900.00),(172,'La Corne Dabondance, Co.','(1) 42.34.2555','Paris',NULL,'75012','France',1337,84300.00),(173,'Cambridge Collectables Co.','6175555555','Cambridge','MA','51247','USA',1188,43400.00),(175,'Gift Depot Inc.','2035552570','Bridgewater','CT','97562','USA',1323,84300.00),(177,'Osaka Souveniers Co.','+81 06 6342 5555','Kita-ku','Osaka',' 530-0003','Japan',1621,81200.00),(181,'Vitachrome Inc.','2125551500','NYC','NY','10022','USA',1286,76400.00),(186,'Toys of Finland, Co.','90-224 8555','Helsinki',NULL,'21240','Finland',1501,96500.00),(187,'AV Stores, Co.','(171) 555-1555','Manchester',NULL,'EC2 5NT','UK',1501,136800.00),(189,'Clover Collections, Co.','+353 1862 1555','Dublin',NULL,'2','Ireland',1504,69400.00),(198,'Auto-Moto Classics Inc.','6175558428','Brickhaven','MA','58339','USA',1216,23000.00),(201,'UK Collectables, Ltd.','(171) 555-2282','Liverpool',NULL,'WX1 6LT','UK',1501,92700.00),(202,'Canadian Gift Exchange Network','(604) 555-3392','Vancouver','BC','V3F 2K1','Canada',1323,90300.00),(204,'Online Mini Collectables','6175557555','Brickhaven','MA','58339','USA',1188,68700.00),(205,'Toys4GrownUps.com','6265557265','Pasadena','CA','90003','USA',1166,90700.00),(206,'Asian Shopping Network, Co','+612 9411 1555','Singapore',NULL,'038988','Singapore',NULL,0.00),(209,'Mini Caravy','88.60.1555','Strasbourg',NULL,'67000','France',1370,53800.00),(211,'King Kong Collectables, Co.','+852 2251 1555','Central Hong Kong',NULL,NULL,'Hong Kong',1621,58600.00),(216,'Enaco Distributors','(93) 203 4555','Barcelona',NULL,'08022','Spain',1702,60300.00),(219,'Boards & Toys Co.','3105552373','Glendale','CA','92561','USA',1166,11000.00),(223,'Natürlich Autos','0372-555188','Cunewalde',NULL,'01307','Germany',NULL,0.00),(227,'Heintze Collectables','86 21 3555','Århus',NULL,'8200','Denmark',1401,120800.00),(233,'Québec Home Shopping Network','(514) 555-8054','Montréal','Québec','H1J 1C3','Canada',1286,48700.00),(237,'ANG Resellers','(91) 745 6555','Madrid',NULL,'28001','Spain',NULL,0.00),(239,'Collectable Mini Designs Co.','7605558146','San Diego','CA','91217','USA',1166,105000.00),(240,'giftsbymail.co.uk','(198) 555-8888','Cowes','Isle of Wight','PO31 7PJ','UK',1501,93900.00),(242,'Alpha Cognac','61.77.6555','Toulouse',NULL,'31000','France',1370,61100.00),(247,'Messner Shopping Network','069-0555984','Frankfurt',NULL,'60528','Germany',NULL,0.00),(249,'Amica Models & Co.','011-4988555','Torino',NULL,'10100','Italy',1401,113000.00),(250,'Lyon Souveniers','+33 1 46 62 7555','Paris',NULL,'75508','France',1337,68100.00),(256,'Auto Associés & Cie.','30.59.8555','Versailles',NULL,'78000','France',1370,77900.00),(259,'Toms Spezialitäten, Ltd','0221-5554327','Köln',NULL,'50739','Germany',1504,120400.00),(260,'Royal Canadian Collectables, Ltd.','(604) 555-4555','Tsawassen','BC','T2F 8M4','Canada',1323,89600.00),(273,'Franken Gifts, Co','089-0877555','München',NULL,'80805','Germany',NULL,0.00),(276,'Anna\'s Decorations, Ltd','02 9936 8555','North Sydney','NSW','2060','Australia',1611,107800.00),(278,'Rovelli Gifts','035-640555','Bergamo',NULL,'24100','Italy',1401,119600.00),(282,'Souveniers And Things Co.','+61 2 9495 8555','Chatswood','NSW','2067','Australia',1611,93300.00),(286,'Marta\'s Replicas Co.','6175558555','Cambridge','MA','51247','USA',1216,123700.00),(293,'BG&E Collectables','+41 26 425 50 01','Fribourg',NULL,'1700','Switzerland',NULL,0.00),(298,'Vida Sport, Ltd','0897-034555','Genève',NULL,'1203','Switzerland',1702,141300.00),(299,'Norway Gifts By Mail, Co.','+47 2212 1555','Oslo',NULL,'N 0106','Norway  ',1504,95100.00),(303,'Schuyler Imports','+31 20 491 9555','Amsterdam',NULL,'1043 GR','Netherlands',NULL,0.00),(307,'Der Hund Imports','030-0074555','Berlin',NULL,'12209','Germany',NULL,0.00),(311,'Oulu Toy Supplies, Inc.','981-443655','Oulu',NULL,'90110','Finland',1501,90500.00),(314,'Petit Auto','(02) 5554 67','Bruxelles',NULL,'B-1180','Belgium',1401,79900.00),(319,'Mini Classics','9145554562','White Plains','NY','24067','USA',1323,102700.00),(320,'Mini Creations Ltd.','5085559555','New Bedford','MA','50553','USA',1188,94500.00),(321,'Corporate Gift Ideas Co.','6505551386','San Francisco','CA','94217','USA',1165,105000.00),(323,'Down Under Souveniers, Inc','+64 9 312 5555','Auckland  ',NULL,NULL,'New Zealand',1612,88000.00),(324,'Stylish Desk Decors, Co.','(171) 555-0297','London',NULL,'WX3 6FW','UK',1501,77000.00),(328,'Tekni Collectables Inc.','2015559350','Newark','NJ','94019','USA',1323,43000.00),(333,'Australian Gift Network, Co','61-7-3844-6555','South Brisbane','Queensland','4101','Australia',1611,51600.00),(334,'Suominen Souveniers','+358 9 8045 555','Espoo',NULL,'FIN-02271','Finland',1501,98800.00),(335,'Cramer Spezialitäten, Ltd','0555-09555','Brandenburg',NULL,'14776','Germany',NULL,0.00),(339,'Classic Gift Ideas, Inc','2155554695','Philadelphia','PA','71270','USA',1188,81100.00),(344,'CAF Imports','+34 913 728 555','Madrid',NULL,'28023','Spain',1702,59600.00),(347,'Men \'R\' US Retailers, Ltd.','2155554369','Los Angeles','CA','91003','USA',1166,57700.00),(348,'Asian Treasures, Inc.','2967 555','Cork','Co. Cork',NULL,'Ireland',NULL,0.00),(350,'Marseille Mini Autos','91.24.4555','Marseille',NULL,'13008','France',1337,65000.00),(353,'Reims Collectables','26.47.1555','Reims',NULL,'51100','France',1337,81100.00),(356,'SAR Distributors, Co','+27 21 550 3555','Hatfield','Pretoria','0028','South Africa',NULL,0.00),(357,'GiftsForHim.com','64-9-3763555','Auckland',NULL,NULL,'New Zealand',1612,77700.00),(361,'Kommission Auto','0251-555259','Münster',NULL,'44087','Germany',NULL,0.00),(362,'Gifts4AllAges.com','6175559555','Boston','MA','51003','USA',1216,41900.00),(363,'Online Diecast Creations Co.','6035558647','Nashua','NH','62005','USA',1216,114200.00),(369,'Lisboa Souveniers, Inc','(1) 354-2555','Lisboa',NULL,'1675','Portugal',NULL,0.00),(376,'Precious Collectables','0452-076555','Bern',NULL,'3012','Switzerland',1702,0.00),(379,'Collectables For Less Inc.','6175558555','Brickhaven','MA','58339','USA',1188,70700.00),(381,'Royale Belge','(071) 23 67 2555','Charleroi',NULL,'B-6000','Belgium',1401,23500.00),(382,'Salzburg Collectables','6562-9555','Salzburg',NULL,'5020','Austria',1401,71700.00),(385,'Cruz & Sons Co.','+63 2 555 3587','Makati City',NULL,'1227 MM','Philippines',1621,81500.00),(386,'L\'ordine Souveniers','0522-556555','Reggio Emilia',NULL,'42100','Italy',1401,121400.00),(398,'Tokyo Collectables, Ltd','+81 3 3584 0555','Minato-ku','Tokyo','106-0032','Japan',1621,94400.00),(406,'Auto Canal+ Petit','(1) 47.55.6555','Paris',NULL,'75016','France',1337,95000.00),(409,'Stuttgart Collectable Exchange','0711-555361','Stuttgart',NULL,'70563','Germany',NULL,0.00),(412,'Extreme Desk Decorations, Ltd','04 499 9555','Wellington',NULL,NULL,'New Zealand',1612,86800.00),(415,'Bavarian Collectables Imports, Co.',' +49 89 61 08 9555','Munich',NULL,'80686','Germany',1504,77000.00),(424,'Classic Legends Inc.','2125558493','NYC','NY','10022','USA',1286,67500.00),(443,'Feuer Online Stores, Inc','0342-555176','Leipzig',NULL,'04179','Germany',NULL,0.00),(447,'Gift Ideas Corp.','2035554407','Glendale','CT','97561','USA',1323,49700.00),(448,'Scandinavian Gift Ideas','0695-34 6555','Bräcke',NULL,'S-844 67','Sweden',1504,116400.00),(450,'The Sharp Gifts Warehouse','4085553659','San Jose','CA','94217','USA',1165,77600.00),(452,'Mini Auto Werke','7675-3555','Graz',NULL,'8010','Austria',1401,45300.00),(455,'Super Scale Inc.','2035559545','New Haven','CT','97823','USA',1286,95400.00),(456,'Microscale Inc.','2125551957','NYC','NY','10022','USA',1286,39800.00),(458,'Corrida Auto Replicas, Ltd','(91) 555 22 82','Madrid',NULL,'28023','Spain',1702,104600.00),(459,'Warburg Exchange','0241-039123','Aachen',NULL,'52066','Germany',NULL,0.00),(462,'FunGiftIdeas.com','5085552555','New Bedford','MA','50553','USA',1216,85800.00),(465,'Anton Designs, Ltd.','+34 913 728555','Madrid',NULL,'28023','Spain',NULL,0.00),(471,'Australian Collectables, Ltd','61-9-3844-6555','Glen Waverly','Victoria','3150','Australia',1611,60300.00),(473,'Frau da Collezione','+39 022515555','Milan',NULL,NULL,'Italy',1401,34800.00),(475,'West Coast Collectables Co.','3105553722','Burbank','CA','94019','USA',1166,55400.00),(477,'Mit Vergnügen & Co.','0621-08555','Mannheim',NULL,'68306','Germany',NULL,0.00),(480,'Kremlin Collectables, Co.','+7 812 293 0521','Saint Petersburg',NULL,'196143','Russia',NULL,0.00),(481,'Raanan Stores, Inc','+ 972 9 959 8555','Herzlia',NULL,'47625','Israel',NULL,0.00),(484,'Iberia Gift Imports, Corp.','(95) 555 82 82','Sevilla',NULL,'41101','Spain',1702,65700.00),(486,'Motor Mint Distributors Inc.','2155559857','Philadelphia','PA','71270','USA',1323,72600.00),(487,'Signal Collectibles Ltd.','4155554312','Brisbane','CA','94217','USA',1165,60300.00),(489,'Double Decker Gift Stores, Ltd','(171) 555-7555','London',NULL,'WA1 1DP','UK',1501,43300.00),(495,'Diecast Collectables','6175552555','Boston','MA','51003','USA',1188,85100.00),(496,'Kelly\'s Gift Shop','+64 9 5555500','Auckland  ',NULL,NULL,'New Zealand',1612,110000.00);
CREATE TABLE `orders` (
  `orderNumber` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  `requiredDate` date NOT NULL,
  `shippedDate` date DEFAULT NULL,
  `status` varchar(15) NOT NULL,
  `comments` text DEFAULT NULL,
  `customerNumber` int(11) NOT NULL,
  PRIMARY KEY (`orderNumber`),
  KEY `customerNumber` (`customerNumber`),
  CONSTRAINT `orders_ibfk_1` 
  FOREIGN KEY (`customerNumber`) 
  REFERENCES `customers` (`customerNumber`)
) ;
INSERT INTO `orders` VALUES (10100,'2003-01-06','2003-01-13','2003-01-10','Shipped',NULL,363),(10101,'2003-01-09','2003-01-18','2003-01-11','Shipped','Check on availability.',128),(10102,'2003-01-10','2003-01-18','2003-01-14','Shipped',NULL,181),(10103,'2003-01-29','2003-02-07','2003-02-02','Shipped',NULL,121),(10104,'2003-01-31','2003-02-09','2003-02-01','Shipped',NULL,141),(10105,'2003-02-11','2003-02-21','2003-02-12','Shipped',NULL,145),(10106,'2003-02-17','2003-02-24','2003-02-21','Shipped',NULL,278),(10107,'2003-02-24','2003-03-03','2003-02-26','Shipped','Difficult to negotiate with customer. We need more marketing materials',131),(10108,'2003-03-03','2003-03-12','2003-03-08','Shipped',NULL,385),(10109,'2003-03-10','2003-03-19','2003-03-11','Shipped','Customer requested that FedEx Ground is used for this shipping',486),(10110,'2003-03-18','2003-03-24','2003-03-20','Shipped',NULL,187),(10111,'2003-03-25','2003-03-31','2003-03-30','Shipped',NULL,129),(10112,'2003-03-24','2003-04-03','2003-03-29','Shipped','Customer requested that ad materials (such as posters, pamphlets) be included in the shippment',144),(10113,'2003-03-26','2003-04-02','2003-03-27','Shipped',NULL,124),(10114,'2003-04-01','2003-04-07','2003-04-02','Shipped',NULL,172),(10115,'2003-04-04','2003-04-12','2003-04-07','Shipped',NULL,424),(10116,'2003-04-11','2003-04-19','2003-04-13','Shipped',NULL,381),(10117,'2003-04-16','2003-04-24','2003-04-17','Shipped',NULL,148),(10118,'2003-04-21','2003-04-29','2003-04-26','Shipped','Customer has worked with some of our vendors in the past and is aware of their MSRP',216),(10119,'2003-04-28','2003-05-05','2003-05-02','Shipped',NULL,382),(10120,'2003-04-29','2003-05-08','2003-05-01','Shipped',NULL,114),(10121,'2003-05-07','2003-05-13','2003-05-13','Shipped',NULL,353),(10122,'2003-05-08','2003-05-16','2003-05-13','Shipped',NULL,350),(10123,'2003-05-20','2003-05-29','2003-05-22','Shipped',NULL,103),(10124,'2003-05-21','2003-05-29','2003-05-25','Shipped','Customer very concerned about the exact color of the models. There is high risk that he may dispute the order because there is a slight color mismatch',112),(10125,'2003-05-21','2003-05-27','2003-05-24','Shipped',NULL,114),(10126,'2003-05-28','2003-06-07','2003-06-02','Shipped',NULL,458),(10127,'2003-06-03','2003-06-09','2003-06-06','Shipped','Customer requested special shippment. The instructions were passed along to the warehouse',151),(10128,'2003-06-06','2003-06-12','2003-06-11','Shipped',NULL,141),(10129,'2003-06-12','2003-06-18','2003-06-14','Shipped',NULL,324),(10130,'2003-06-16','2003-06-24','2003-06-21','Shipped',NULL,198),(10131,'2003-06-16','2003-06-25','2003-06-21','Shipped',NULL,447),(10132,'2003-06-25','2003-07-01','2003-06-28','Shipped',NULL,323),(10133,'2003-06-27','2003-07-04','2003-07-03','Shipped',NULL,141),(10134,'2003-07-01','2003-07-10','2003-07-05','Shipped',NULL,250),(10135,'2003-07-02','2003-07-12','2003-07-03','Shipped',NULL,124),(10136,'2003-07-04','2003-07-14','2003-07-06','Shipped','Customer is interested in buying more Ferrari models',242),(10137,'2003-07-10','2003-07-20','2003-07-14','Shipped',NULL,353),(10138,'2003-07-07','2003-07-16','2003-07-13','Shipped',NULL,496),(10139,'2003-07-16','2003-07-23','2003-07-21','Shipped',NULL,282),(10140,'2003-07-24','2003-08-02','2003-07-30','Shipped',NULL,161),(10141,'2003-08-01','2003-08-09','2003-08-04','Shipped',NULL,334),(10142,'2003-08-08','2003-08-16','2003-08-13','Shipped',NULL,124),(10143,'2003-08-10','2003-08-18','2003-08-12','Shipped','Can we deliver the new Ford Mustang models by end-of-quarter?',320),(10144,'2003-08-13','2003-08-21','2003-08-14','Shipped',NULL,381),(10145,'2003-08-25','2003-09-02','2003-08-31','Shipped',NULL,205),(10146,'2003-09-03','2003-09-13','2003-09-06','Shipped',NULL,447),(10147,'2003-09-05','2003-09-12','2003-09-09','Shipped',NULL,379),(10148,'2003-09-11','2003-09-21','2003-09-15','Shipped','They want to reevaluate their terms agreement with Finance.',276),(10149,'2003-09-12','2003-09-18','2003-09-17','Shipped',NULL,487),(10150,'2003-09-19','2003-09-27','2003-09-21','Shipped','They want to reevaluate their terms agreement with Finance.',148),(10151,'2003-09-21','2003-09-30','2003-09-24','Shipped',NULL,311),(10152,'2003-09-25','2003-10-03','2003-10-01','Shipped',NULL,333),(10153,'2003-09-28','2003-10-05','2003-10-03','Shipped',NULL,141),(10154,'2003-10-02','2003-10-12','2003-10-08','Shipped',NULL,219),(10155,'2003-10-06','2003-10-13','2003-10-07','Shipped',NULL,186),(10156,'2003-10-08','2003-10-17','2003-10-11','Shipped',NULL,141),(10157,'2003-10-09','2003-10-15','2003-10-14','Shipped',NULL,473),(10158,'2003-10-10','2003-10-18','2003-10-15','Shipped',NULL,121),(10159,'2003-10-10','2003-10-19','2003-10-16','Shipped',NULL,321),(10160,'2003-10-11','2003-10-17','2003-10-17','Shipped',NULL,347),(10161,'2003-10-17','2003-10-25','2003-10-20','Shipped',NULL,227),(10162,'2003-10-18','2003-10-26','2003-10-19','Shipped',NULL,321),(10163,'2003-10-20','2003-10-27','2003-10-24','Shipped',NULL,424),(10164,'2003-10-21','2003-10-30','2003-10-23','Resolved','This order was disputed, but resolved on 11/1/2003; Customer doesn\'t like the colors and precision of the models.',452),(10165,'2003-10-22','2003-10-31','2003-12-26','Shipped','This order was on hold because customers\'s credit limit had been exceeded. Order will ship when payment is received',148),(10166,'2003-10-21','2003-10-30','2003-10-27','Shipped',NULL,462),(10167,'2003-10-23','2003-10-30',NULL,'Cancelled','Customer called to cancel. The warehouse was notified in time and the order didn\'t ship. They have a new VP of Sales and are shifting their sales model. Our VP of Sales should contact them.',448),(10168,'2003-10-28','2003-11-03','2003-11-01','Shipped',NULL,161),(10169,'2003-11-04','2003-11-14','2003-11-09','Shipped',NULL,276),(10170,'2003-11-04','2003-11-12','2003-11-07','Shipped',NULL,452),(10171,'2003-11-05','2003-11-13','2003-11-07','Shipped',NULL,233),(10172,'2003-11-05','2003-11-14','2003-11-11','Shipped',NULL,175),(10173,'2003-11-05','2003-11-15','2003-11-09','Shipped','Cautious optimism. We have happy customers here, if we can keep them well stocked.  I need all the information I can get on the planned shippments of Porches',278),(10174,'2003-11-06','2003-11-15','2003-11-10','Shipped',NULL,333),(10175,'2003-11-06','2003-11-14','2003-11-09','Shipped',NULL,324),(10176,'2003-11-06','2003-11-15','2003-11-12','Shipped',NULL,386),(10177,'2003-11-07','2003-11-17','2003-11-12','Shipped',NULL,344),(10178,'2003-11-08','2003-11-16','2003-11-10','Shipped','Custom shipping instructions sent to warehouse',242),(10179,'2003-11-11','2003-11-17','2003-11-13','Cancelled','Customer cancelled due to urgent budgeting issues. Must be cautious when dealing with them in the future. Since order shipped already we must discuss who would cover the shipping charges.',496),(10180,'2003-11-11','2003-11-19','2003-11-14','Shipped',NULL,171),(10181,'2003-11-12','2003-11-19','2003-11-15','Shipped',NULL,167),(10182,'2003-11-12','2003-11-21','2003-11-18','Shipped',NULL,124),(10183,'2003-11-13','2003-11-22','2003-11-15','Shipped','We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.',339),(10184,'2003-11-14','2003-11-22','2003-11-20','Shipped',NULL,484),(10185,'2003-11-14','2003-11-21','2003-11-20','Shipped',NULL,320),(10186,'2003-11-14','2003-11-20','2003-11-18','Shipped','They want to reevaluate their terms agreement with the VP of Sales',489),(10187,'2003-11-15','2003-11-24','2003-11-16','Shipped',NULL,211),(10188,'2003-11-18','2003-11-26','2003-11-24','Shipped',NULL,167),(10189,'2003-11-18','2003-11-25','2003-11-24','Shipped','They want to reevaluate their terms agreement with Finance.',205),(10190,'2003-11-19','2003-11-29','2003-11-20','Shipped',NULL,141),(10191,'2003-11-20','2003-11-30','2003-11-24','Shipped','We must be cautions with this customer. Their VP of Sales resigned. Company may be heading down.',259),(10192,'2003-11-20','2003-11-29','2003-11-25','Shipped',NULL,363),(10193,'2003-11-21','2003-11-28','2003-11-27','Shipped',NULL,471),(10194,'2003-11-25','2003-12-02','2003-11-26','Shipped',NULL,146),(10195,'2003-11-25','2003-12-01','2003-11-28','Shipped',NULL,319),(10196,'2003-11-26','2003-12-03','2003-12-01','Shipped',NULL,455),(10197,'2003-11-26','2003-12-02','2003-12-01','Shipped','Customer inquired about remote controlled models and gold models.',216),(10198,'2003-11-27','2003-12-06','2003-12-03','Shipped',NULL,385),(10199,'2003-12-01','2003-12-10','2003-12-06','Shipped',NULL,475),(10200,'2003-12-01','2003-12-09','2003-12-06','Shipped',NULL,211),(10201,'2003-12-01','2003-12-11','2003-12-02','Shipped',NULL,129),(10202,'2003-12-02','2003-12-09','2003-12-06','Shipped',NULL,357),(10203,'2003-12-02','2003-12-11','2003-12-07','Shipped',NULL,141),(10204,'2003-12-02','2003-12-10','2003-12-04','Shipped',NULL,151),(10205,'2003-12-03','2003-12-09','2003-12-07','Shipped',' I need all the information I can get on our competitors.',141),(10206,'2003-12-05','2003-12-13','2003-12-08','Shipped','Can we renegotiate this one?',202),(10207,'2003-12-09','2003-12-17','2003-12-11','Shipped','Check on availability.',495),(10208,'2004-01-02','2004-01-11','2004-01-04','Shipped',NULL,146),(10209,'2004-01-09','2004-01-15','2004-01-12','Shipped',NULL,347),(10210,'2004-01-12','2004-01-22','2004-01-20','Shipped',NULL,177),(10211,'2004-01-15','2004-01-25','2004-01-18','Shipped',NULL,406),(10212,'2004-01-16','2004-01-24','2004-01-18','Shipped',NULL,141),(10213,'2004-01-22','2004-01-28','2004-01-27','Shipped','Difficult to negotiate with customer. We need more marketing materials',489),(10214,'2004-01-26','2004-02-04','2004-01-29','Shipped',NULL,458),(10215,'2004-01-29','2004-02-08','2004-02-01','Shipped','Customer requested that FedEx Ground is used for this shipping',475),(10216,'2004-02-02','2004-02-10','2004-02-04','Shipped',NULL,256),(10217,'2004-02-04','2004-02-14','2004-02-06','Shipped',NULL,166),(10218,'2004-02-09','2004-02-16','2004-02-11','Shipped','Customer requested that ad materials (such as posters, pamphlets) be included in the shippment',473),(10219,'2004-02-10','2004-02-17','2004-02-12','Shipped',NULL,487),(10220,'2004-02-12','2004-02-19','2004-02-16','Shipped',NULL,189),(10221,'2004-02-18','2004-02-26','2004-02-19','Shipped',NULL,314),(10222,'2004-02-19','2004-02-27','2004-02-20','Shipped',NULL,239),(10223,'2004-02-20','2004-02-29','2004-02-24','Shipped',NULL,114),(10224,'2004-02-21','2004-03-02','2004-02-26','Shipped','Customer has worked with some of our vendors in the past and is aware of their MSRP',171),(10225,'2004-02-22','2004-03-01','2004-02-24','Shipped',NULL,298),(10226,'2004-02-26','2004-03-06','2004-03-02','Shipped',NULL,239),(10227,'2004-03-02','2004-03-12','2004-03-08','Shipped',NULL,146),(10228,'2004-03-10','2004-03-18','2004-03-13','Shipped',NULL,173),(10229,'2004-03-11','2004-03-20','2004-03-12','Shipped',NULL,124),(10230,'2004-03-15','2004-03-24','2004-03-20','Shipped','Customer very concerned about the exact color of the models. There is high risk that he may dispute the order because there is a slight color mismatch',128),(10231,'2004-03-19','2004-03-26','2004-03-25','Shipped',NULL,344),(10232,'2004-03-20','2004-03-30','2004-03-25','Shipped',NULL,240),(10233,'2004-03-29','2004-04-04','2004-04-02','Shipped','Customer requested special shippment. The instructions were passed along to the warehouse',328),(10234,'2004-03-30','2004-04-05','2004-04-02','Shipped',NULL,412),(10235,'2004-04-02','2004-04-12','2004-04-06','Shipped',NULL,260),(10236,'2004-04-03','2004-04-11','2004-04-08','Shipped',NULL,486),(10237,'2004-04-05','2004-04-12','2004-04-10','Shipped',NULL,181),(10238,'2004-04-09','2004-04-16','2004-04-10','Shipped',NULL,145),(10239,'2004-04-12','2004-04-21','2004-04-17','Shipped',NULL,311),(10240,'2004-04-13','2004-04-20','2004-04-20','Shipped',NULL,177),(10241,'2004-04-13','2004-04-20','2004-04-19','Shipped',NULL,209),(10242,'2004-04-20','2004-04-28','2004-04-25','Shipped','Customer is interested in buying more Ferrari models',456),(10243,'2004-04-26','2004-05-03','2004-04-28','Shipped',NULL,495),(10244,'2004-04-29','2004-05-09','2004-05-04','Shipped',NULL,141),(10245,'2004-05-04','2004-05-12','2004-05-09','Shipped',NULL,455),(10246,'2004-05-05','2004-05-13','2004-05-06','Shipped',NULL,141),(10247,'2004-05-05','2004-05-11','2004-05-08','Shipped',NULL,334),(10248,'2004-05-07','2004-05-14',NULL,'Cancelled','Order was mistakenly placed. The warehouse noticed the lack of documentation.',131),(10249,'2004-05-08','2004-05-17','2004-05-11','Shipped','Can we deliver the new Ford Mustang models by end-of-quarter?',173),(10250,'2004-05-11','2004-05-19','2004-05-15','Shipped',NULL,450),(10251,'2004-05-18','2004-05-24','2004-05-24','Shipped',NULL,328),(10252,'2004-05-26','2004-06-04','2004-05-29','Shipped',NULL,406),(10253,'2004-06-01','2004-06-09','2004-06-02','Cancelled','Customer disputed the order and we agreed to cancel it. We must be more cautions with this customer going forward, since they are very hard to please. We must cover the shipping fees.',201),(10254,'2004-06-03','2004-06-13','2004-06-04','Shipped','Customer requested that DHL is used for this shipping',323),(10255,'2004-06-04','2004-06-12','2004-06-09','Shipped',NULL,209),(10256,'2004-06-08','2004-06-16','2004-06-10','Shipped',NULL,145),(10257,'2004-06-14','2004-06-24','2004-06-15','Shipped',NULL,450),(10258,'2004-06-15','2004-06-25','2004-06-23','Shipped',NULL,398),(10259,'2004-06-15','2004-06-22','2004-06-17','Shipped',NULL,166),(10260,'2004-06-16','2004-06-22',NULL,'Cancelled','Customer heard complaints from their customers and called to cancel this order. Will notify the Sales Manager.',357),(10261,'2004-06-17','2004-06-25','2004-06-22','Shipped',NULL,233),(10262,'2004-06-24','2004-07-01',NULL,'Cancelled','This customer found a better offer from one of our competitors. Will call back to renegotiate.',141),(10263,'2004-06-28','2004-07-04','2004-07-02','Shipped',NULL,175),(10264,'2004-06-30','2004-07-06','2004-07-01','Shipped','Customer will send a truck to our local warehouse on 7/1/2004',362),(10265,'2004-07-02','2004-07-09','2004-07-07','Shipped',NULL,471),(10266,'2004-07-06','2004-07-14','2004-07-10','Shipped',NULL,386),(10267,'2004-07-07','2004-07-17','2004-07-09','Shipped',NULL,151),(10268,'2004-07-12','2004-07-18','2004-07-14','Shipped',NULL,412),(10269,'2004-07-16','2004-07-22','2004-07-18','Shipped',NULL,382),(10270,'2004-07-19','2004-07-27','2004-07-24','Shipped','Can we renegotiate this one?',282),(10271,'2004-07-20','2004-07-29','2004-07-23','Shipped',NULL,124),(10272,'2004-07-20','2004-07-26','2004-07-22','Shipped',NULL,157),(10273,'2004-07-21','2004-07-28','2004-07-22','Shipped',NULL,314),(10274,'2004-07-21','2004-07-29','2004-07-22','Shipped',NULL,379),(10275,'2004-07-23','2004-08-02','2004-07-29','Shipped',NULL,119),(10276,'2004-08-02','2004-08-11','2004-08-08','Shipped',NULL,204),(10277,'2004-08-04','2004-08-12','2004-08-05','Shipped',NULL,148),(10278,'2004-08-06','2004-08-16','2004-08-09','Shipped',NULL,112),(10279,'2004-08-09','2004-08-19','2004-08-15','Shipped','Cautious optimism. We have happy customers here, if we can keep them well stocked.  I need all the information I can get on the planned shippments of Porches',141),(10280,'2004-08-17','2004-08-27','2004-08-19','Shipped',NULL,249),(10281,'2004-08-19','2004-08-28','2004-08-23','Shipped',NULL,157),(10282,'2004-08-20','2004-08-26','2004-08-22','Shipped',NULL,124),(10283,'2004-08-20','2004-08-30','2004-08-23','Shipped',NULL,260),(10284,'2004-08-21','2004-08-29','2004-08-26','Shipped','Custom shipping instructions sent to warehouse',299),(10285,'2004-08-27','2004-09-04','2004-08-31','Shipped',NULL,286),(10286,'2004-08-28','2004-09-06','2004-09-01','Shipped',NULL,172),(10287,'2004-08-30','2004-09-06','2004-09-01','Shipped',NULL,298),(10288,'2004-09-01','2004-09-11','2004-09-05','Shipped',NULL,166),(10289,'2004-09-03','2004-09-13','2004-09-04','Shipped','We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.',167),(10290,'2004-09-07','2004-09-15','2004-09-13','Shipped',NULL,198),(10291,'2004-09-08','2004-09-17','2004-09-14','Shipped',NULL,448),(10292,'2004-09-08','2004-09-18','2004-09-11','Shipped','They want to reevaluate their terms agreement with Finance.',131),(10293,'2004-09-09','2004-09-18','2004-09-14','Shipped',NULL,249),(10294,'2004-09-10','2004-09-17','2004-09-14','Shipped',NULL,204),(10295,'2004-09-10','2004-09-17','2004-09-14','Shipped','They want to reevaluate their terms agreement with Finance.',362),(10296,'2004-09-15','2004-09-22','2004-09-16','Shipped',NULL,415),(10297,'2004-09-16','2004-09-22','2004-09-21','Shipped','We must be cautions with this customer. Their VP of Sales resigned. Company may be heading down.',189),(10298,'2004-09-27','2004-10-05','2004-10-01','Shipped',NULL,103),(10299,'2004-09-30','2004-10-10','2004-10-01','Shipped',NULL,186),(10300,'2003-10-04','2003-10-13','2003-10-09','Shipped',NULL,128),(10301,'2003-10-05','2003-10-15','2003-10-08','Shipped',NULL,299),(10302,'2003-10-06','2003-10-16','2003-10-07','Shipped',NULL,201),(10303,'2004-10-06','2004-10-14','2004-10-09','Shipped','Customer inquired about remote controlled models and gold models.',484),(10304,'2004-10-11','2004-10-20','2004-10-17','Shipped',NULL,256),(10305,'2004-10-13','2004-10-22','2004-10-15','Shipped','Check on availability.',286),(10306,'2004-10-14','2004-10-21','2004-10-17','Shipped',NULL,187),(10307,'2004-10-14','2004-10-23','2004-10-20','Shipped',NULL,339),(10308,'2004-10-15','2004-10-24','2004-10-20','Shipped','Customer requested that FedEx Ground is used for this shipping',319),(10309,'2004-10-15','2004-10-24','2004-10-18','Shipped',NULL,121),(10310,'2004-10-16','2004-10-24','2004-10-18','Shipped',NULL,259),(10311,'2004-10-16','2004-10-23','2004-10-20','Shipped','Difficult to negotiate with customer. We need more marketing materials',141),(10312,'2004-10-21','2004-10-27','2004-10-23','Shipped',NULL,124),(10313,'2004-10-22','2004-10-28','2004-10-25','Shipped','Customer requested that FedEx Ground is used for this shipping',202),(10314,'2004-10-22','2004-11-01','2004-10-23','Shipped',NULL,227),(10315,'2004-10-29','2004-11-08','2004-10-30','Shipped',NULL,119),(10316,'2004-11-01','2004-11-09','2004-11-07','Shipped','Customer requested that ad materials (such as posters, pamphlets) be included in the shippment',240),(10317,'2004-11-02','2004-11-12','2004-11-08','Shipped',NULL,161),(10318,'2004-11-02','2004-11-09','2004-11-07','Shipped',NULL,157),(10319,'2004-11-03','2004-11-11','2004-11-06','Shipped','Customer requested that DHL is used for this shipping',456),(10320,'2004-11-03','2004-11-13','2004-11-07','Shipped',NULL,144),(10321,'2004-11-04','2004-11-12','2004-11-07','Shipped',NULL,462),(10322,'2004-11-04','2004-11-12','2004-11-10','Shipped','Customer has worked with some of our vendors in the past and is aware of their MSRP',363),(10323,'2004-11-05','2004-11-12','2004-11-09','Shipped',NULL,128),(10324,'2004-11-05','2004-11-11','2004-11-08','Shipped',NULL,181),(10325,'2004-11-05','2004-11-13','2004-11-08','Shipped',NULL,121),(10326,'2004-11-09','2004-11-16','2004-11-10','Shipped',NULL,144),(10327,'2004-11-10','2004-11-19','2004-11-13','Resolved','Order was disputed and resolved on 12/1/04. The Sales Manager was involved. Customer claims the scales of the models don\'t match what was discussed.',145),(10328,'2004-11-12','2004-11-21','2004-11-18','Shipped','Customer very concerned about the exact color of the models. There is high risk that he may dispute the order because there is a slight color mismatch',278),(10329,'2004-11-15','2004-11-24','2004-11-16','Shipped',NULL,131),(10330,'2004-11-16','2004-11-25','2004-11-21','Shipped',NULL,385),(10331,'2004-11-17','2004-11-23','2004-11-23','Shipped','Customer requested special shippment. The instructions were passed along to the warehouse',486),(10332,'2004-11-17','2004-11-25','2004-11-18','Shipped',NULL,187),(10333,'2004-11-18','2004-11-27','2004-11-20','Shipped',NULL,129),(10334,'2004-11-19','2004-11-28',NULL,'On Hold','The outstaniding balance for this customer exceeds their credit limit. Order will be shipped when a payment is received.',144),(10335,'2004-11-19','2004-11-29','2004-11-23','Shipped',NULL,124),(10336,'2004-11-20','2004-11-26','2004-11-24','Shipped','Customer requested that DHL is used for this shipping',172),(10337,'2004-11-21','2004-11-30','2004-11-26','Shipped',NULL,424),(10338,'2004-11-22','2004-12-02','2004-11-27','Shipped',NULL,381),(10339,'2004-11-23','2004-11-30','2004-11-30','Shipped',NULL,398),(10340,'2004-11-24','2004-12-01','2004-11-25','Shipped','Customer is interested in buying more Ferrari models',216),(10341,'2004-11-24','2004-12-01','2004-11-29','Shipped',NULL,382),(10342,'2004-11-24','2004-12-01','2004-11-29','Shipped',NULL,114),(10343,'2004-11-24','2004-12-01','2004-11-26','Shipped',NULL,353),(10344,'2004-11-25','2004-12-02','2004-11-29','Shipped',NULL,350),(10345,'2004-11-25','2004-12-01','2004-11-26','Shipped',NULL,103),(10346,'2004-11-29','2004-12-05','2004-11-30','Shipped',NULL,112),(10347,'2004-11-29','2004-12-07','2004-11-30','Shipped','Can we deliver the new Ford Mustang models by end-of-quarter?',114),(10348,'2004-11-01','2004-11-08','2004-11-05','Shipped',NULL,458),(10349,'2004-12-01','2004-12-07','2004-12-03','Shipped',NULL,151),(10350,'2004-12-02','2004-12-08','2004-12-05','Shipped',NULL,141),(10351,'2004-12-03','2004-12-11','2004-12-07','Shipped',NULL,324),(10352,'2004-12-03','2004-12-12','2004-12-09','Shipped',NULL,198),(10353,'2004-12-04','2004-12-11','2004-12-05','Shipped',NULL,447),(10354,'2004-12-04','2004-12-10','2004-12-05','Shipped',NULL,323),(10355,'2004-12-07','2004-12-14','2004-12-13','Shipped',NULL,141),(10356,'2004-12-09','2004-12-15','2004-12-12','Shipped',NULL,250),(10357,'2004-12-10','2004-12-16','2004-12-14','Shipped',NULL,124),(10358,'2004-12-10','2004-12-16','2004-12-16','Shipped','Customer requested that DHL is used for this shipping',141),(10359,'2004-12-15','2004-12-23','2004-12-18','Shipped',NULL,353),(10360,'2004-12-16','2004-12-22','2004-12-18','Shipped',NULL,496),(10361,'2004-12-17','2004-12-24','2004-12-20','Shipped',NULL,282),(10362,'2005-01-05','2005-01-16','2005-01-10','Shipped',NULL,161),(10363,'2005-01-06','2005-01-12','2005-01-10','Shipped',NULL,334),(10364,'2005-01-06','2005-01-17','2005-01-09','Shipped',NULL,350),(10365,'2005-01-07','2005-01-18','2005-01-11','Shipped',NULL,320),(10366,'2005-01-10','2005-01-19','2005-01-12','Shipped',NULL,381),(10367,'2005-01-12','2005-01-21','2005-01-16','Resolved','This order was disputed and resolved on 2/1/2005. Customer claimed that container with shipment was damaged. FedEx\'s investigation proved this wrong.',205),(10368,'2005-01-19','2005-01-27','2005-01-24','Shipped','Can we renegotiate this one?',124),(10369,'2005-01-20','2005-01-28','2005-01-24','Shipped',NULL,379),(10370,'2005-01-20','2005-02-01','2005-01-25','Shipped',NULL,276),(10371,'2005-01-23','2005-02-03','2005-01-25','Shipped',NULL,124),(10372,'2005-01-26','2005-02-05','2005-01-28','Shipped',NULL,398),(10373,'2005-01-31','2005-02-08','2005-02-06','Shipped',NULL,311),(10374,'2005-02-02','2005-02-09','2005-02-03','Shipped',NULL,333),(10375,'2005-02-03','2005-02-10','2005-02-06','Shipped',NULL,119),(10376,'2005-02-08','2005-02-18','2005-02-13','Shipped',NULL,219),(10377,'2005-02-09','2005-02-21','2005-02-12','Shipped','Cautious optimism. We have happy customers here, if we can keep them well stocked.  I need all the information I can get on the planned shippments of Porches',186),(10378,'2005-02-10','2005-02-18','2005-02-11','Shipped',NULL,141),(10379,'2005-02-10','2005-02-18','2005-02-11','Shipped',NULL,141),(10380,'2005-02-16','2005-02-24','2005-02-18','Shipped',NULL,141),(10381,'2005-02-17','2005-02-25','2005-02-18','Shipped',NULL,321),(10382,'2005-02-17','2005-02-23','2005-02-18','Shipped','Custom shipping instructions sent to warehouse',124),(10383,'2005-02-22','2005-03-02','2005-02-25','Shipped',NULL,141),(10384,'2005-02-23','2005-03-06','2005-02-27','Shipped',NULL,321),(10385,'2005-02-28','2005-03-09','2005-03-01','Shipped',NULL,124),(10386,'2005-03-01','2005-03-09','2005-03-06','Resolved','Disputed then Resolved on 3/15/2005. Customer doesn\'t like the craftsmaship of the models.',141),(10387,'2005-03-02','2005-03-09','2005-03-06','Shipped','We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.',148),(10388,'2005-03-03','2005-03-11','2005-03-09','Shipped',NULL,462),(10389,'2005-03-03','2005-03-09','2005-03-08','Shipped',NULL,448),(10390,'2005-03-04','2005-03-11','2005-03-07','Shipped','They want to reevaluate their terms agreement with Finance.',124),(10391,'2005-03-09','2005-03-20','2005-03-15','Shipped',NULL,276),(10392,'2005-03-10','2005-03-18','2005-03-12','Shipped',NULL,452),(10393,'2005-03-11','2005-03-22','2005-03-14','Shipped','They want to reevaluate their terms agreement with Finance.',323),(10394,'2005-03-15','2005-03-25','2005-03-19','Shipped',NULL,141),(10395,'2005-03-17','2005-03-24','2005-03-23','Shipped','We must be cautions with this customer. Their VP of Sales resigned. Company may be heading down.',250),(10396,'2005-03-23','2005-04-02','2005-03-28','Shipped',NULL,124),(10397,'2005-03-28','2005-04-09','2005-04-01','Shipped',NULL,242),(10398,'2005-03-30','2005-04-09','2005-03-31','Shipped',NULL,353),(10399,'2005-04-01','2005-04-12','2005-04-03','Shipped',NULL,496),(10400,'2005-04-01','2005-04-11','2005-04-04','Shipped','Customer requested that DHL is used for this shipping',450),(10401,'2005-04-03','2005-04-14',NULL,'On Hold','Customer credit limit exceeded. Will ship when a payment is received.',328),(10402,'2005-04-07','2005-04-14','2005-04-12','Shipped',NULL,406),(10403,'2005-04-08','2005-04-18','2005-04-11','Shipped',NULL,201),(10404,'2005-04-08','2005-04-14','2005-04-11','Shipped',NULL,323),(10405,'2005-04-14','2005-04-24','2005-04-20','Shipped',NULL,209),(10406,'2005-04-15','2005-04-25','2005-04-21','Disputed','Customer claims container with shipment was damaged during shipping and some items were missing. I am talking to FedEx about this.',145),(10407,'2005-04-22','2005-05-04',NULL,'On Hold','Customer credit limit exceeded. Will ship when a payment is received.',450),(10408,'2005-04-22','2005-04-29','2005-04-27','Shipped',NULL,398),(10409,'2005-04-23','2005-05-05','2005-04-24','Shipped',NULL,166),(10410,'2005-04-29','2005-05-10','2005-04-30','Shipped',NULL,357),(10411,'2005-05-01','2005-05-08','2005-05-06','Shipped',NULL,233),(10412,'2005-05-03','2005-05-13','2005-05-05','Shipped',NULL,141),(10413,'2005-05-05','2005-05-14','2005-05-09','Shipped','Customer requested that DHL is used for this shipping',175),(10414,'2005-05-06','2005-05-13',NULL,'On Hold','Customer credit limit exceeded. Will ship when a payment is received.',362),(10415,'2005-05-09','2005-05-20','2005-05-12','Disputed','Customer claims the scales of the models don\'t match what was discussed. I keep all the paperwork though to prove otherwise',471),(10416,'2005-05-10','2005-05-16','2005-05-14','Shipped',NULL,386),(10417,'2005-05-13','2005-05-19','2005-05-19','Disputed','Customer doesn\'t like the colors and precision of the models.',141),(10418,'2005-05-16','2005-05-24','2005-05-20','Shipped',NULL,412),(10419,'2005-05-17','2005-05-28','2005-05-19','Shipped',NULL,382),(10420,'2005-05-29','2005-06-07',NULL,'In Process',NULL,282),(10421,'2005-05-29','2005-06-06',NULL,'In Process','Custom shipping instructions were sent to warehouse',124),(10422,'2005-05-30','2005-06-11',NULL,'In Process',NULL,157),(10423,'2005-05-30','2005-06-05',NULL,'In Process',NULL,314),(10424,'2005-05-31','2005-06-08',NULL,'In Process',NULL,141),
(10425,'2005-05-31','2005-06-07',NULL,'In Process',NULL,119);
use assignment;
select * from orders;
SHOW tables;
select * from customers;
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `customerNumber` int(11) NOT NULL,
  `checkNumber` varchar(50) NOT NULL,
  `paymentDate` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`customerNumber`,`checkNumber`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`)
) ;
SELECT * from payments;
create table payments2 select * from payments;
SELECT * from payments2;
alter table payments2 add column status varchar(50);
update payments2 set status = 'silver' where amount < 25000;
update payments2 set status = 'gold' 
where (amount > 25000 and amount < 50000);
update payments2 set status = 'platinum' where amount > 50000;
select * from customers;
create table customers2 select * from customers;

Select customernumber as 'CustomerId', customername as 'CustomerName', 
(Select assignment.GetStatus(customernumber)) as 'Purchase_Status' from Customers;



select * from customers2;
alter table customers2 add column status varchar(50);
set sql_safe_updates = 0; 
update customers2 set status = 'silver' where creditlimit < 60000 and creditlimit = 60000;
update customers2 set status = 'gold' 
where (creditlimit > 60000 and creditlimit < 100000);
update customers2 set status = 'platinum' where creditlimit > 100000 and creditlimit = 100000;
drop table if exists movies;
create table movies (id integer, title varchar(50), category varchar(25));
insert into movies values(1,	"ASSASSIN'S CREED: EMBERS",	'Animations'),
(2,	'Real Steel',	'Animations'),
(3,	'Alvin and the Chipmunks',	'Animations'),
(4,	'The Adventures of Tin Tin',	'Animations'),
(5,	'Safe', 	'Action'),
(6,	'Safe House',	'Action'),
(7,	'GIA',	'18+'),
(8,	'Deadline 2009',	'18+'),
(9,	'The Dirty Picture',	'18+'),
(10,	'Marley and me',	'Romance');
select * from movies;
drop table if exists rentals;
create table rentals(memid integer, first_name varchar(25), 
last_name varchar(25), movieid integer);
insert into rentals values(1,'Alicia','Alarcon', 1),
(2,'Don','Draper', 2),
(3,'Lizzie','Moss', 5),
(4,'Eldon','Chance', 8),
(5,'Jenny','Patterson', 10),
(6,'Craig','Daniels', null),
(7,'Denny', 'Peters',null),
(8,'Patty','Pattinson',null);
select * from rentals;
CREATE TABLE rentals2 select * from rentals;
select * from rentals2;
desc rentals2;
alter table rentals2 modify column memdid integer primary key;
create table movies2 select * from movies;
select * from movies2;
alter table movies2 modify column id integer primary key;
alter table rentals2 modify column movieid integer,foreign key(movieid) 
references movies2(id) ON UPDATE CASCADE;






