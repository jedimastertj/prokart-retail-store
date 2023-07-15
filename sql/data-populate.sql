show databases;
create database ProKart;
use ProKart;

create table Admins (
	AdminID INT NOT NULL AUTO_INCREMENT,
    AdminName VARCHAR(20) NOT NULL,
    PRIMARY KEY (AdminID)
);

insert into Admins (AdminName) values
	('Tanishq Jain');

create table Courier (
	CourierID INT NOT NULL AUTO_INCREMENT,
    CourierName VARCHAR(20) NOT NULL,
    Speed INT NOT NULL,
    PRIMARY KEY (CourierID),
    CONSTRAINT valid_speed CHECK (Speed >= 1 AND Speed <= 10)
);

insert into Courier (CourierName, Speed) values
	("Kaufman",10),
	("Bernard",5),
	("Dudley",2),
	("Hale",7),
	("Melendez",4),
	("Mullins",8),
	("Harvey",1),
	("Chen",6),
	("Parrish",3),
	("Velasquez",8);

create table Seller (
	SellerID INT NOT NULL AUTO_INCREMENT,
    SellerName VARCHAR(20) NOT NULL,
    Contact VARCHAR(20) NOT NULL,
    PRIMARY KEY (SellerID),
    CONSTRAINT valid_contact CHECK (Contact like '(___) ___-____')
);

insert into Seller (SellerName, Contact) values
  ("Ivana Harrison","(361) 351-2368"),
  ("Yuri Sullivan","(658) 248-5843"),
  ("Leslie Nash","(583) 315-8691"),
  ("Dillon Briggs","(624) 942-6151"),
  ("Judah Malone","(655) 306-3438"),
  ("Leandra Savage","(434) 571-0035"),
  ("Laurel Durham","(366) 243-6568"),
  ("Ruby Mcknight","(953) 855-6527"),
  ("Melodie Warner","(252) 227-9236"),
  ("Chava Holder","(845) 148-0521"),
  ("Tucker Davis","(578) 250-2233"),
  ("Barclay Schneider","(572) 124-8121"),
  ("Cheryl Dorsey","(326) 594-2338"),
  ("Tanner Terry","(347) 692-6551"),
  ("September Marsh","(276) 116-3346"),
  ("Hakeem Larson","(954) 883-5089"),
  ("Althea Pearson","(397) 852-7655"),
  ("Olympia Wise","(853) 386-5290"),
  ("Carol Adams","(874) 326-6377"),
  ("Alexander Wiggins","(713) 459-8817"),
  ("Lysandra Briggs","(693) 787-9161"),
  ("Lois Santiago","(518) 422-7576"),
  ("Roth Mccarty","(654) 650-7187"),
  ("Julian Rhodes","(524) 739-9871"),
  ("Judith Kane","(544) 115-7846"),
  ("Leonard Montoya","(563) 778-2587"),
  ("Emmanuel Cobb","(366) 933-2270"),
  ("Tara Avila","(465) 442-3566"),
  ("Audrey Logan","(415) 429-5271"),
  ("Brendan Meyers","(316) 924-3546"),
  ("Jillian Pena","(273) 848-7857"),
  ("Darius Conrad","(630) 532-1204"),
  ("Abigail Ayers","(488) 847-7784"),
  ("Abel Flowers","(232) 623-3027"),
  ("Kimberley Leon","(261) 261-7791"),
  ("Yael Cline","(858) 348-9682"),
  ("Mechelle Stephens","(350) 977-1511"),
  ("Erin Benson","(876) 542-1142"),
  ("Brent Koch","(284) 359-7576"),
  ("Craig Compton","(426) 868-8637"),
  ("Maite Clemons","(634) 905-3987"),
  ("Forrest Ayers","(287) 906-7940"),
  ("Zeus Kaufman","(691) 874-1102"),
  ("Valentine Terry","(223) 185-4715"),
  ("Yetta Boyd","(582) 716-4498"),
  ("Tatiana Griffith","(270) 356-0373"),
  ("Courtney Burris","(563) 858-3572"),
  ("Noelle Wheeler","(569) 627-0517"),
  ("Charles Sharp","(371) 981-6386"),
  ("April Sanders","(569) 862-7234"),
  ("Dalton Williamson","(633) 561-6667"),
  ("Portia Stephens","(455) 435-6641"),
  ("Daphne Fernandez","(160) 337-5242"),
  ("Shoshana Hutchinson","(638) 324-6737"),
  ("Linus Pruitt","(384) 223-1220"),
  ("Anastasia Dejesus","(185) 753-0143"),
  ("Gannon Simmons","(445) 844-6154"),
  ("Fuller Nixon","(256) 714-1926"),
  ("Beverly Puckett","(414) 266-5481"),
  ("Baker Mueller","(228) 432-0374"),
  ("Gail Skinner","(674) 373-8568"),
  ("Russell Coffey","(325) 644-2042"),
  ("Wyoming Holland","(485) 217-0322"),
  ("Charity Galloway","(836) 452-5585"),
  ("Hamilton Walker","(287) 545-1207"),
  ("Illiana Adkins","(744) 956-8681"),
  ("John Skinner","(619) 224-5564"),
  ("Martina Shannon","(566) 374-8063"),
  ("Vernon Jensen","(208) 120-8647"),
  ("Basia Noble","(175) 323-3724"),
  ("Quinn Payne","(553) 255-9997"),
  ("Portia Calderon","(575) 550-4068"),
  ("Shafira Travis","(265) 412-5131"),
  ("Philip Cunningham","(473) 246-6139"),
  ("Kirsten Barrera","(555) 224-6153"),
  ("Kirby Miranda","(244) 334-7471"),
  ("Thaddeus Jones","(843) 237-9254"),
  ("Brittany Bond","(793) 557-7035"),
  ("Dalton Foster","(512) 601-6645"),
  ("Jena Holder","(711) 887-4669");

create table Users (
	UserID INT NOT NULL AUTO_INCREMENT,
	FName VARCHAR(20) NOT NULL,
    LName VARCHAR(20),
    Address VARCHAR(50) NOT NULL,
    PRIMARY KEY (UserID)
);

insert into Users (FName, LName, Address) values
  ("Linda","Perez","Ap #537-6757 Elementum, Rd."),
  ("Juliet","Duncan","203-5777 Nascetur Ave"),
  ("Price","Workman","207-9097 Habitant Av."),
  ("Thane","Horton","Ap #185-5658 Adipiscing Rd."),
  ("Armando","Wyatt","Ap #806-1892 Augue Ave"),
  ("Jarrod","Wilder","789-8255 Nunc Rd."),
  ("Uriah","Patrick","136-9743 Erat St."),
  ("Ruth","Jenkins","6101 Cras Street"),
  ("Nero","Heath","P.O. Box 909, 7890 Faucibus Rd."),
  ("Ali","Simon","Ap #242-3543 Enim. St."),
  ("Martena","Michael","934-568 Eget St."),
  ("Ali","Donaldson","2075 Iaculis Road"),
  ("Zelenia","Palmer","Ap #102-1900 Mi Rd."),
  ("Finn","Solomon","9709 Eu St."),
  ("Iola","Marks","P.O. Box 997, 8372 Pharetra Ave"),
  ("Valentine","Riley","281-7176 Aliquam Avenue"),
  ("Marshall","Keith","Ap #162-1585 Ut Rd."),
  ("Tate","Emerson","P.O. Box 170, 4565 Magna. Avenue"),
  ("Slade","Rocha","680-1329 Non Road"),
  ("Victoria","Frederick","5166 Curae St."),
  ("Jesse","Sheppard","204-7289 Enim. Ave"),
  ("Quamar","Massey","9084 Erat St."),
  ("Hermione","Bright","P.O. Box 389, 2989 Nibh Rd."),
  ("Karen","Foreman","615-3003 Sit Rd."),
  ("Harding","Sykes","111-4915 Eu Av."),
  ("Roth","Alston","973-6212 Vivamus St."),
  ("Leo","Collins","702-7880 Metus. Avenue"),
  ("Joshua","Wiley","625-4330 Sapien. Road"),
  ("Erasmus","Freeman","P.O. Box 991, 1517 Dapibus Rd."),
  ("Emerson","Baird","Ap #478-3084 Enim Av."),
  ("Maryam","Guerrero","Ap #557-2613 Non, Rd."),
  ("Norman","Rosales","971-2046 Elit. St."),
  ("Isaac","Pierce","119-7097 Lobortis Street"),
  ("Alfreda","Cain","948-2707 Sem Avenue"),
  ("Macaulay","Castro","Ap #621-9063 Non, Road"),
  ("Maite","Collier","636-3242 Arcu Street"),
  ("Tanek","Cobb","6077 Integer Road"),
  ("Nero","Bryan","335-8072 Cras Rd."),
  ("Randall","Hill","Ap #505-5452 Aenean Av."),
  ("Martin","Wagner","Ap #653-6084 Fames St."),
  ("Lavinia","Gross","P.O. Box 305, 6229 Fusce Rd."),
  ("Jada","Goodman","P.O. Box 278, 5938 Non, Av."),
  ("Griffin","Pace","P.O. Box 384, 4161 Eros. Av."),
  ("Anjolie","Davenport","Ap #210-5756 Vivamus Road"),
  ("Inez","Berry","1007 Eget, St."),
  ("Melinda","Villarreal","Ap #215-4056 Nunc Avenue"),
  ("Owen","Dennis","P.O. Box 204, 681 Sit St."),
  ("Fulton","Cantrell","240-3727 Amet Av."),
  ("Leroy","Beard","371-9018 Rhoncus. Street"),
  ("Heather","Mejia","432-2419 Eros. Avenue"),
  ("Ava","Mcintyre","Ap #387-4798 Eu St."),
  ("Ruby","Harris","343 Vitae Rd."),
  ("Garth","Rasmussen","766-2548 Convallis Avenue"),
  ("Gabriel","Valdez","384-7071 Lacinia St."),
  ("Kylie","Mclaughlin","Ap #869-1757 At, Av."),
  ("Solomon","Gentry","P.O. Box 969, 4689 Etiam Street"),
  ("Lydia","Le","P.O. Box 964, 3817 Consequat St."),
  ("Heidi","Koch","385-2385 Odio St."),
  ("Iliana","Mercado","945-9142 Lorem Street"),
  ("Jesse","Bean","3740 Ut, Rd."),
  ("Jescie","Hancock","908-6862 Molestie. Rd."),
  ("Maxine","Tanner","P.O. Box 669, 634 Luctus Av."),
  ("Nichole","Leblanc","203-372 Nullam St."),
  ("Ingrid","Mccray","5541 Phasellus Ave"),
  ("Hayden","Macias","443-1533 Turpis Rd."),
  ("Halee","Petersen","352-895 Sodales St."),
  ("Ahmed","Chen","Ap #682-7453 Dolor, Avenue"),
  ("Lee","Wood","547-3494 Mauris Av."),
  ("Francesca","Brennan","P.O. Box 171, 7626 Parturient Street"),
  ("Leslie","Weiss","841-7778 Id Av."),
  ("Xaviera","Carter","Ap #247-4388 Sed Rd."),
  ("Logan","Bates","9305 Adipiscing Avenue"),
  ("Ebony","Patrick","799-9559 Ac Av."),
  ("Cole","Whitney","365-2610 Tincidunt St."),
  ("Josephine","Gibbs","Ap #888-4777 Ligula. Ave"),
  ("Castor","Maddox","Ap #910-6868 Vitae Ave"),
  ("Lareina","Horton","P.O. Box 213, 6147 Pharetra, St."),
  ("Tara","Vazquez","869-5985 Ligula. Rd."),
  ("MacKensie","Macias","899-1469 Natoque Avenue"),
  ("Amber","House","Ap #210-4828 Eros St."),
  ("Talon","Carney","7605 Sapien. Ave"),
  ("Matthew","Cameron","497-6080 Lacus. Av."),
  ("Kimberley","Meyer","Ap #948-3968 Quis Rd."),
  ("Malachi","Olsen","414-9448 Nullam Avenue"),
  ("Zane","Zamora","Ap #160-9608 Per St."),
  ("Ursa","Hurst","357-5433 Orci, Ave"),
  ("Kiara","Sargent","406-3455 Curabitur Avenue"),
  ("Yuli","Lowe","Ap #987-9958 Facilisis Avenue"),
  ("Althea","Dodson","8454 Dolor Rd."),
  ("Tashya","Mcgowan","370-600 Sapien, Avenue"),
  ("Vivian","Rogers","Ap #187-3641 Cras Avenue"),
  ("Yolanda","Roach","136-8854 Adipiscing Road"),
  ("Cooper","Perry","Ap #538-4473 Sed Rd."),
  ("Athena","Gonzalez","Ap #917-5258 Est Street"),
  ("Benjamin","Garner","5884 Justo Avenue"),
  ("Keegan","Beasley","879-882 Proin Road"),
  ("Burton","Johns","362-6729 Mus. Road"),
  ("Ezra","Clay","Ap #169-6452 Aliquet Street"),
  ("Gannon","Nguyen","949-6107 Donec Road"),
  ("Zenaida","Collins","P.O. Box 585, 1097 Et St."),
  ("Medge","Kline","7583 Sem, Road"),
  ("Griffin","Mcknight","288-8328 Leo. Ave"),
  ("Perry","Larsen","P.O. Box 185, 7940 Nisl Rd."),
  ("Nayda","Ochoa","Ap #549-8442 Ornare, Rd."),
  ("Dominic","Glover","8903 Et, Street"),
  ("Deacon","Dickerson","458-2389 Orci Av."),
  ("Iola","Figueroa","175-7153 Id, Rd."),
  ("Catherine","Slater","Ap #701-8957 Nulla. Street"),
  ("Zenia","Peck","Ap #296-7855 Tincidunt St."),
  ("Cailin","Reilly","426-3581 Pellentesque Rd."),
  ("Kiona","Bolton","Ap #409-9683 Venenatis Ave"),
  ("Rudyard","Moss","Ap #270-4374 Nec, St."),
  ("Rogan","Robinson","200-8838 Neque Avenue"),
  ("Geraldine","Marquez","Ap #186-8291 Adipiscing Ave"),
  ("Regan","Ramos","885-5049 Lobortis Road"),
  ("MacKenzie","Oneil","Ap #951-3199 Donec Rd."),
  ("Winter","Rios","P.O. Box 403, 9244 Blandit Avenue"),
  ("Wyoming","Frye","3813 Purus St."),
  ("Tamekah","Gross","P.O. Box 779, 8507 Mus. St."),
  ("Baxter","Velazquez","P.O. Box 952, 9991 Quis Street"),
  ("Charles","Boone","Ap #486-5727 Arcu. Rd."),
  ("Madeson","Warner","5635 Interdum Avenue"),
  ("Martena","Levy","Ap #124-2416 Aliquam Ave"),
  ("Nero","Gardner","880-7976 Urna, St."),
  ("Shelby","Clark","Ap #869-4672 Dapibus Avenue"),
  ("Ishmael","Evans","338-2762 Tristique Ave"),
  ("Kitra","Mathis","P.O. Box 640, 909 Est Rd."),
  ("Yasir","Osborn","Ap #117-9332 Molestie Road"),
  ("Alice","Landry","Ap #894-9863 Tortor, St."),
  ("Trevor","Hoover","P.O. Box 874, 925 Nunc St."),
  ("Ivor","Perry","Ap #424-1202 Adipiscing Avenue"),
  ("Breanna","Acevedo","8025 Dolor, Rd."),
  ("Bruno","Stephens","P.O. Box 551, 882 Proin Rd."),
  ("Colt","Bell","7398 Iaculis Rd."),
  ("Prescott","Duffy","P.O. Box 685, 4669 Dolor. St."),
  ("Lane","Hill","3646 Mi, Road"),
  ("Grady","Watkins","6946 Est. Rd."),
  ("Montana","Bentley","390-3711 Proin Ave"),
  ("Hedley","Douglas","Ap #237-5882 Nascetur St."),
  ("Brody","Whitney","Ap #197-7568 Ornare St."),
  ("Lane","Salazar","175-1455 Non, St."),
  ("Rhea","Barrera","Ap #974-4496 Dictum St."),
  ("Ignatius","O'Neill","941-7561 Integer Av."),
  ("Caldwell","Kline","8911 Accumsan St."),
  ("Amir","Rivas","Ap #349-830 Libero Av."),
  ("Maris","Keith","Ap #229-8138 Malesuada Street"),
  ("Grady","Simon","7760 Sapien. Ave"),
  ("Bevis","Estrada","897-7941 Donec Av."),
  ("Cassidy","Farmer","872-2273 Tellus Ave"),
  ("Clio","Faulkner","619-7898 Imperdiet Ave"),
  ("Graiden","Cox","937-9797 Taciti Street"),
  ("Brent","Hardin","Ap #819-520 Luctus Ave"),
  ("Yael","Jennings","Ap #919-3359 Risus. Road"),
  ("Wyatt","Benjamin","Ap #423-3068 Dictum St."),
  ("Colton","Pace","9520 Amet, Av."),
  ("Vernon","Foley","108-3587 Eros. Rd."),
  ("Connor","Brooks","657-471 Tristique Rd."),
  ("Felicia","Hale","386-9057 Enim Street"),
  ("Melvin","Maxwell","3995 Sollicitudin Av."),
  ("Josiah","Smith","P.O. Box 627, 2040 Nibh. Rd."),
  ("Sylvia","Cote","Ap #387-382 Sed Av."),
  ("Castor","Gill","146-7222 Integer Avenue"),
  ("Lars","Chen","Ap #630-2390 Diam Rd."),
  ("Hasad","Horn","987-8239 Egestas St."),
  ("Wade","Welch","P.O. Box 421, 284 Diam Ave"),
  ("Whilemina","Yang","792-9311 Vitae Street"),
  ("Maris","Richmond","Ap #381-3131 Odio. Road"),
  ("Martha","Pace","4126 Dictum Ave"),
  ("Fulton","Morse","172-6382 Aliquam Street"),
  ("Tate","Carney","345-1141 Eu Road"),
  ("Nora","Finley","Ap #823-5619 Cum Avenue"),
  ("Nelle","Arnold","350-6971 Sed Av."),
  ("Brielle","Hooper","836-8794 Sem Rd."),
  ("Kay","Pennington","970-6194 Vehicula Road"),
  ("Abraham","William","Ap #175-4135 Magna. Av."),
  ("Amir","Maldonado","Ap #955-5198 Massa Avenue"),
  ("Jordan","Parker","Ap #799-6096 Convallis, Street"),
  ("Pascale","Valenzuela","Ap #781-7531 Aliquet St."),
  ("Gregory","Guthrie","6590 Ut Street"),
  ("Dale","Snider","Ap #863-9851 Vitae Ave");

create table user_contact (
	UID INT NOT NULL,
    Contact VARCHAR(20) NOT NULL,
    FOREIGN KEY (UID) REFERENCES Users (UserID) on DELETE CASCADE,
    CONSTRAINT contact_valid CHECK (Contact like '(___) ___-____')
);

insert into user_contact (UID, Contact) values
  (1,"(506) 485-3361"),
  (2,"(506) 684-7083"),
  (3,"(441) 487-2786"),
  (4,"(975) 977-6588"),
  (5,"(474) 931-8544"),
  (6,"(324) 618-4257"),
  (7,"(768) 112-9382"),
  (8,"(610) 375-7689"),
  (9,"(265) 534-8886"),
  (10,"(979) 312-2271"),
  (11,"(891) 226-5212"),
  (12,"(555) 877-7898"),
  (13,"(743) 541-3138"),
  (14,"(663) 336-7528"),
  (15,"(831) 526-3449"),
  (16,"(741) 876-4576"),
  (17,"(572) 158-9412"),
  (18,"(483) 524-6496"),
  (19,"(277) 576-0713"),
  (20,"(831) 452-8677"),
  (21,"(615) 827-3151"),
  (22,"(887) 626-3319"),
  (23,"(836) 778-7868"),
  (24,"(466) 610-5194"),
  (25,"(844) 892-7279"),
  (26,"(554) 843-6145"),
  (27,"(908) 238-2566"),
  (28,"(119) 326-5221"),
  (29,"(609) 911-1757"),
  (30,"(413) 237-3531"),
  (31,"(724) 227-7565"),
  (32,"(421) 271-0878"),
  (33,"(963) 522-7751"),
  (34,"(494) 804-4136"),
  (35,"(976) 862-8771"),
  (36,"(502) 224-3472"),
  (37,"(368) 245-2234"),
  (38,"(361) 550-8740"),
  (39,"(385) 799-6932"),
  (40,"(432) 494-7278"),
  (41,"(440) 296-8779"),
  (42,"(283) 328-7794"),
  (43,"(874) 417-4143"),
  (44,"(180) 215-1856"),
  (45,"(413) 477-7488"),
  (46,"(566) 463-5758"),
  (47,"(933) 621-2997"),
  (48,"(362) 216-3360"),
  (49,"(635) 242-3428"),
  (50,"(650) 642-8718"),
  (51,"(262) 572-5128"),
  (52,"(728) 458-7833"),
  (53,"(626) 731-1179"),
  (54,"(656) 233-0645"),
  (55,"(516) 789-2857"),
  (56,"(525) 600-2021"),
  (57,"(849) 942-7113"),
  (58,"(931) 166-9729"),
  (59,"(191) 552-5146"),
  (60,"(502) 761-6487"),
  (61,"(329) 578-0156"),
  (62,"(813) 376-3553"),
  (63,"(749) 781-1186"),
  (64,"(777) 343-5489"),
  (65,"(846) 440-2688"),
  (66,"(955) 518-6684"),
  (67,"(382) 153-4581"),
  (68,"(881) 110-5280"),
  (69,"(357) 827-3735"),
  (70,"(525) 203-7251"),
  (71,"(679) 626-2187"),
  (72,"(876) 815-6259"),
  (73,"(449) 774-8827"),
  (74,"(565) 522-2814"),
  (75,"(645) 770-7588"),
  (76,"(386) 638-2812"),
  (77,"(576) 315-2412"),
  (78,"(456) 748-2464"),
  (79,"(341) 625-2618"),
  (80,"(515) 268-1134"),
  (81,"(351) 838-6618"),
  (82,"(954) 676-2883"),
  (83,"(475) 498-5763"),
  (84,"(635) 681-2518"),
  (85,"(439) 463-9723"),
  (86,"(356) 552-2641"),
  (87,"(212) 797-0450"),
  (88,"(730) 477-6064"),
  (89,"(235) 116-8275"),
  (90,"(417) 646-1374"),
  (91,"(270) 887-5507"),
  (92,"(750) 584-2376"),
  (93,"(440) 456-6261"),
  (94,"(613) 427-1718"),
  (95,"(321) 465-7276"),
  (96,"(967) 886-7206"),
  (97,"(308) 263-8388"),
  (98,"(881) 763-7247"),
  (99,"(650) 868-6463"),
  (100,"(674) 458-1625"),
  (101,"(557) 387-0286"),
  (102,"(498) 510-2346"),
  (103,"(907) 294-9648"),
  (104,"(439) 882-8158"),
  (105,"(341) 328-5012"),
  (106,"(327) 244-6776"),
  (107,"(437) 837-1817"),
  (108,"(214) 354-8450"),
  (109,"(803) 657-7555"),
  (110,"(438) 958-6613"),
  (111,"(854) 567-8368"),
  (112,"(552) 185-4634"),
  (113,"(156) 678-4231"),
  (114,"(647) 289-1493"),
  (115,"(343) 147-2865"),
  (116,"(477) 351-7868"),
  (117,"(627) 126-6197"),
  (118,"(444) 293-6842"),
  (119,"(479) 326-8506"),
  (120,"(234) 378-5172"),
  (121,"(544) 418-6682"),
  (122,"(247) 578-7875"),
  (123,"(389) 497-3271"),
  (124,"(419) 815-6252"),
  (125,"(324) 752-3822"),
  (126,"(783) 733-2263"),
  (127,"(478) 923-2921"),
  (128,"(624) 855-2584"),
  (129,"(316) 737-0659"),
  (130,"(566) 584-5817"),
  (131,"(765) 603-3838"),
  (132,"(248) 385-5554"),
  (133,"(624) 491-3019"),
  (134,"(884) 607-3428"),
  (135,"(646) 425-9317"),
  (136,"(552) 555-2239"),
  (137,"(337) 218-1059"),
  (138,"(720) 921-4566"),
  (139,"(685) 333-9767"),
  (140,"(821) 474-3823"),
  (141,"(827) 786-5314"),
  (142,"(618) 742-8427"),
  (143,"(797) 986-7486"),
  (144,"(539) 839-8766"),
  (145,"(141) 581-3261"),
  (146,"(553) 388-6942"),
  (147,"(145) 300-6016"),
  (148,"(532) 831-6686"),
  (149,"(814) 676-1661"),
  (150,"(910) 550-6115"),
  (151,"(243) 762-8250"),
  (152,"(364) 335-4384"),
  (153,"(409) 215-1717"),
  (154,"(535) 433-2547"),
  (155,"(682) 551-2188"),
  (156,"(126) 133-3673"),
  (157,"(657) 414-8379"),
  (158,"(923) 247-5525"),
  (159,"(728) 559-7444"),
  (160,"(332) 866-2360"),
  (161,"(900) 365-0528"),
  (162,"(435) 894-8136"),
  (163,"(286) 315-3663"),
  (164,"(598) 236-1075"),
  (165,"(978) 234-8133"),
  (166,"(557) 306-0857"),
  (167,"(920) 348-2312"),
  (168,"(599) 356-8949"),
  (169,"(575) 732-6842"),
  (170,"(774) 481-9374"),
  (171,"(171) 554-9260"),
  (172,"(567) 128-1359"),
  (173,"(194) 569-9756"),
  (174,"(151) 891-1193"),
  (175,"(240) 788-8867"),
  (176,"(284) 562-7389"),
  (177,"(171) 806-3725"),
  (178,"(883) 178-8291"),
  (179,"(438) 942-7823"),
  (180,"(285) 377-0663");

create table Inventory (
	InventoryID INT NOT NULL AUTO_INCREMENT,
    AdID INT NOT NULL,
    PRIMARY KEY (InventoryID),
    FOREIGN KEY (AdID) REFERENCES Admins (AdminID)
);

insert into Inventory (InventoryId, AdID) values
 (1, 1),
 (2, 1),
 (3, 1),
 (4, 1),
 (5, 2),
 (6, 2),
 (7, 2),
 (8, 2);

create table Category (
	CategoryID INT NOT NULL AUTO_INCREMENT,
	CategoryName VARCHAR(50) NOT NULL unique,
	AdID INT NOT NULL,
    PRIMARY KEY (CategoryID),
    FOREIGN KEY (AdID) REFERENCES Admins (AdminID)
);

insert into Category (CategoryName, AdID) values
('Automotive', 1), 
('Baby Care', 2), 
('Bags, Wallets & Belts', 1), 
('Beauty and Personal Care', 2), 
('Cameras & Accessories', 2), 
('Clothing', 1), 
('Computers', 2), 
('Footwear', 1), 
('Furniture', 1), 
('Gaming', 2), 
('Home & Kitchen', 1), 
('Home Decor & Festive Needs', 2), 
('Home Furnishing', 1), 
('Home Improvement', 2), 
('Jewellery', 1), 
('Kitchen & Dining', 2), 
('Mobiles & Accessories', 2), 
('Pens & Stationery', 2), 
('Pet Supplies', 1), 
('Sports & Fitness', 1), 
('Sunglasses', 2), 
('Tools & Hardware', 2), 
('Toys & School Supplies', 1), 
('Watches', 2);

create table Product (
	ProductID INT NOT NULL AUTO_INCREMENT,
	ProductName VARCHAR(100) NOT NULL UNIQUE,
    Cost INT NOT NULL,
    CID INT NOT NULL,
    SID INT NOT NULL,
    InID INT NOT NULL,
    PRIMARY KEY (ProductID),
    FOREIGN KEY (CID) REFERENCES Category (CategoryID) on DELETE CASCADE,
    FOREIGN KEY (SID) REFERENCES Seller (SellerID) on DELETE CASCADE,
    FOREIGN KEY (InID) REFERENCES Inventory (InventoryID),
    CONSTRAINT valid_cost CHECK (Cost > 0)
);

insert into Product (ProductName, Cost, CID, SID, InID) values
('K&N 1 Bike Spark Plug, 1 Air Filter-Honda CB Trigger Combo', 2999.0, 1, 42, 1), 
('RJVON H4 Led Bike Head Light RJ48386 LED Headlight With Bulb For Royal Enfield', 999.0, 1, 20, 2), 
('Woodman Steel Car Bumper Guard', 2100.0, 1, 17, 5), 
('Allure Auto CM 95 Car Mat Nissan Micra', 3150.0, 1, 1, 6), 
('3a AUTOCARE Car Mat Maruti Ciaz', 2400.0, 1, 21, 8), 
('Allure Auto CM 407 Car Mat Tata Victa', 2800.0, 1, 75, 2), 
('Allure Auto CM 1445 Car Mat Ford Ikon', 4900.0, 1, 7, 7), 
('Allure Auto CM 882 Car Mat Honda Accord', 4200.0, 1, 22, 2), 
('Allure Auto CM 124 Car Mat Tata Vista', 3150.0, 1, 21, 1), 
('AdroitZ Exclusive Barbie Doll Sunshade / curtain (set of 2) for Fiat Punto Sun Shade For Fiat Punto', 459.0, 1, 55, 7), 
('Vetra E00TY88 Multifunction Car Tray For Honda Accord Cup Holder Car Tray Table', 799.0, 1, 12, 3), 
('Favourite BikerZ FBZ 8780 112 dB Vehicle Horn', 599.0, 1, 52, 7), 
('Accessoreez Headlight LED Bulb for  HONDA CIVIC HYBRID', 4000.0, 1, 17, 3), 
('999store Medium Paper Sticker', 999.0, 2, 58, 8), 
('WallDesign Small Vinyl Sticker', 1040.0, 2, 72, 8), 
('Wallmantra Extra Large Vinyl Stickers Sticker', 2058.0, 2, 42, 6), 
('Johnsons Baby Powder, Pure Cornstarch, Aloe & Vitamin E, 22 Ounce (Pack of 2)', 5178.0, 2, 24, 2), 
('Dongli Striped Baby Boys Polo Neck T-Shirt', 1399.0, 2, 49, 3), 
('Toddla Baby Girls Gathered Dress', 999.0, 2, 3, 7), 
('JG Shoppe Neo S21 10 L Backpack', 1500.0, 3, 44, 1), 
('Czds India Shoulder Bag', 599.0, 3, 70, 6), 
('MOOI-ZAK Girls, Women Pink PU Sling Bag', 1499.0, 3, 60, 7), 
('KAN Long Travel Passport Organizer & Cheque Book Pouch Document Holder with Zip For Men and Women', 1695.0, 3, 1, 8), 
('Detak NSS-001', 999.0, 4, 9, 6), 
('Oxyglow Fruit Massage Cream With Vitamin-E & Pearl Facial Kit', 1310.0, 4, 74, 3), 
('Archies VJ-580 Combo Set', 418.0, 4, 18, 8), 
('Engage Combo Set', 540.0, 4, 55, 7), 
('Kolkata Knight Riders Combo Set', 380.0, 4, 23, 1), 
('Park Avenue Entice ,Impact - Sharp Deodorant Spray Combo Set', 410.0, 4, 30, 3), 
('Yardley Secret Crush and Lace Combo Set', 360.0, 4, 25, 8), 
('The balm Blush', 2299.0, 4, 10, 7), 
('Spe EW-73B  Lens Hood', 1250.0, 5, 40, 5), 
('PuppetNx Slim Fit Boys Jeans', 835.0, 6, 64, 6), 
('Allen Solly Solid Single Breasted Casual Boys Blazer', 2799.0, 6, 32, 5), 
('Betty Girls Maxi Dress', 2455.0, 6, 21, 6), 
('Sharleez Solid Womens A-line Red Skirt', 2999.0, 6, 30, 2), 
('Abstract Mood Solid Girls Black Track Pants', 999.0, 6, 55, 7), 
('Be 13 Printed Baby Boys Round Neck Grey, Blue T-Shirt', 1099.0, 6, 11, 1), 
('Tiny Seed Woolen Cap Cap', 1000.0, 6, 5, 5), 
('GetAbhi Striped Tie', 501.0, 6, 58, 7), 
('Wineberry Show Off Checkered Mens Boxer', 299.0, 6, 45, 7), 
('Police Slim Fit Mens Jeans', 1499.0, 6, 54, 2), 
('Navaksha Necktie Mens  Combo', 1550.0, 6, 63, 1), 
('Pecanz Mens Striped Casual Denim Shirt', 1795.0, 6, 57, 5), 
('Jogur Mens Solid Formal Shirt', 899.0, 6, 22, 1), 
('HugMe.fashion Full Sleeve Solid Mens Jacket', 19830.0, 6, 24, 8), 
('Uber Urban Slim Fit Mens Trousers', 4497.0, 6, 67, 2), 
('Fritzberg Printed Mens Round Neck T-Shirt', 799.0, 6, 5, 3), 
('Nimya Solid Mens Polo Neck T-Shirt', 3499.0, 6, 78, 6), 
('NodR Solid Mens V-neck T-Shirt', 599.0, 6, 1, 4), 
('Nucode Striped Mens Polo Neck T-Shirt', 1099.0, 6, 57, 6), 
('Numero Uno Striped Mens V-neck T-Shirt', 1399.0, 6, 28, 2), 
('Numero Uno Striped Mens Polo T-Shirt', 1599.0, 6, 79, 1), 
('Officers Choice Solid Mens Round Neck T-Shirt', 499.0, 6, 51, 4), 
('Okane Printed Mens Round Neck T-Shirt', 699.0, 6, 1, 3), 
('Orange Plum Printed Mens Round Neck T-Shirt', 699.0, 6, 69, 6), 
('Oviyon Solid Mens V-neck T-Shirt', 999.0, 6, 50, 3), 
('Teen Tees Graphic Print Mens Round Neck T-Shirt', 799.0, 6, 13, 7), 
('British Cross Argyle Round Neck Casual Mens Sweater', 1699.0, 6, 30, 7), 
('ISHWA Full Sleeve Graphic Print Mens Sweatshirt', 1899.0, 6, 13, 5), 
('Lotusa Printed sartan silk Womens Scarf', 1299.0, 6, 20, 1), 
('Lajo Womens Salwar and Dupatta Set', 5500.0, 6, 33, 4), 
('Pratami Cotton Silk Blend Solid Blouse Material', 199.0, 6, 28, 7), 
('Parijat Embroidered Womens Straight Kurta', 1957.0, 6, 1, 5), 
('Gee & Bee Casual Printed Womens Kurti', 2164.0, 6, 65, 5), 
('Tetalee Casual Printed Womens Kurti', 1196.0, 6, 42, 1), 
('Vipul Saree Printed Bhagalpuri Raw Silk Sari', 2100.0, 6, 46, 8), 
('Mustard Printed Womens Tunic', 1299.0, 6, 52, 3), 
('Clovia Side Lace Cotton In Navy Womens Full Coverage Bra', 699.0, 6, 52, 4), 
('Grafion Comfortable Womens Full Coverage Bra', 499.0, 6, 54, 5), 
('Grafion by Grafion - Comfort Feel Womens Full Coverage Bra', 599.0, 6, 13, 4), 
('Ladyland BOBBY Womens Full Coverage Bra', 749.0, 6, 21, 3), 
('Muquam Stretchable Bandeau Womens Tube Bra', 1199.0, 6, 5, 5), 
('Ploomz Fashion Womens Tube Bra', 900.0, 6, 63, 6), 
('Q-rious Accord Womens Full Coverage Bra', 309.0, 6, 75, 6), 
('S4S Stylish Womens Push-up Bra', 899.0, 6, 71, 1), 
('S4S Womens Full Coverage Bra', 849.0, 6, 25, 8), 
('ShowTime Womens Full Coverage, T-Shirt Bra', 599.0, 6, 67, 2), 
('Tia by Ten on Ten Bonnie Womens T-Shirt Bra', 999.0, 6, 52, 2), 
('Vaishna Fashion Womens Full Coverage Bra', 420.0, 6, 15, 5), 
('Younky Beige Womens Full Coverage Bra', 399.0, 6, 30, 3), 
('Vivaa Womens Camisole', 499.0, 6, 34, 4), 
('Selfcare Womens Thong Panty', 598.0, 6, 36, 6), 
('Mynte Solid Womens Cycling Shorts, Gym Shorts, Swim Shorts', 2495.0, 6, 14, 1), 
('Hugo Chavez Womens Maxi Dress', 2499.0, 6, 14, 5), 
('Jaipur Kala Kendra Womens A-line Dress', 999.0, 6, 45, 6), 
('Ladybug Womens Gathered Dress', 899.0, 6, 60, 1), 
('Mayra Womens A-line Dress', 1995.0, 6, 53, 2), 
('Msons Womens A-line Dress', 1742.0, 6, 71, 1), 
('Marusthali Printed Womens Wrap Around Skirt', 999.0, 6, 34, 6), 
('Civilized Showdown Womens Jeggings', 1099.0, 6, 79, 2), 
('Kjaggs Womens Leggings', 998.0, 6, 23, 7), 
('Tjaggies Womens Leggings', 798.0, 6, 19, 6), 
('Addyvero Womens Solid Casual, Formal Denim Shirt', 1299.0, 6, 56, 4), 
('Besiva Womens Solid Formal Shirt', 849.0, 6, 67, 3), 
('DeDeS Womens Solid Casual Shirt', 1399.0, 6, 23, 1), 
('Folklore Womens Solid Festive Shirt', 849.0, 6, 12, 7), 
('India Inc Womens Printed Casual Shirt', 200, 6, 21, 4), 
('Kumi Womens Solid Casual, Festive, Party Shirt', 700.0, 6, 43, 3), 
('Miss Rich Womens Solid Casual Shirt', 799.0, 6, 65, 5), 
('Ruhaans Womens Printed Casual Shirt', 999.0, 6, 46, 2), 
('@499 Casual, Festive, Formal, Lounge Wear, Party Sleeveless Embellished Womens Top', 698.0, 6, 61, 4), 
('Chkokko Party Short Sleeve Solid Womens Top', 999.0, 6, 52, 3), 
('Goodwill Impex Casual Sleeveless Printed Womens Top', 800.0, 6, 23, 7), 
('MERIL Casual Full Sleeve Printed Womens Top', 599.0, 6, 15, 6), 
('Retaaz Casual, Party, Festive Sleeveless Floral Print Womens Top', 2999.0, 6, 18, 1), 
('Tapyti Casual 3/4 Sleeve Solid Womens Top', 875.0, 6, 45, 8), 
('Western Route Casual Sleeveless Solid Womens Top', 799.0, 6, 59, 3), 
('Alobha Regular Fit Womens White Trousers', 1099.0, 6, 2, 1), 
('Zingalalaa LP-50 50 lm LED Corded Portable Projector', 6250.0, 7, 50, 4), 
('HP Pavilion DV7t-6100 Series 6 Cell Laptop Battery', 4999.0, 7, 51, 6), 
('PRINT SHAPES mind haker Laptop Skin with Mouse pad Combo Set', 999.0, 7, 70, 7), 
('GANPATI WHOLSALER Apple Iphone 6/6 Plus Apple Iphone 6/6 Plus USB USB Cable', 399.0, 7, 48, 4), 
('Star Wars R2-D2 830 USB USB Hub', 6000.0, 7, 47, 8), 
('Cubetek Airmobi iPlay2 Wifi Music Router', 3990.0, 7, 22, 1), 
('Tenda TE-F452', 9500.0, 7, 48, 1), 
('Shopizone BMW Wheel 32 GB  Pen Drive', 1999.0, 7, 17, 4), 
('Shopnetix Stylish & Comfort Mens Lace up Mocassins (SNX-4449) Casuals', 1499.0, 8, 20, 1), 
('Beanz Girls Flats', 1299.0, 8, 20, 1), 
('Blue Parrot Party Wear Shoes', 3999.0, 8, 44, 4), 
('MINDITDADDY Loafers', 1499.0, 8, 63, 1), 
('Brandvilla Brandvilla Loafers', 3000.0, 8, 74, 7), 
('Action Shoes Flip Flops', 249.0, 8, 53, 5), 
('Oggo Deo Bellies', 1399.0, 8, 30, 1), 
('Carlton London Boots', 1995.0, 8, 63, 8), 
('Niremo Loafers', 999.0, 8, 3, 5), 
('Kujaparis Casual', 699.0, 8, 3, 6), 
('My Foot Women Flats', 1599.0, 8, 20, 4), 
('Space Women Heels', 999.0, 8, 78, 3), 
('Catwalk Women Heels', 1895.0, 8, 28, 3), 
('Adorn Women Wedges', 899.0, 8, 51, 5), 
('Monaliza Women Wedges', 999.0, 8, 6, 5), 
('Walkaway Women Wedges', 1499.0, 8, 35, 5), 
('ARRA Engineered Wood 6 Seater Sofa', 44500.0, 9, 23, 2), 
('Pet Club51 PC303 L Pet Bed', 3000.0, 9, 9, 7), 
('Tech Yug BH-503 bluethooth headset Wireless Bluetooth Headset', 1499.0, 10, 64, 4), 
('Maharaja Whiteline Neo (MX-147) 500 W Mixer Grinder', 2999.0, 11, 59, 3), 
('iplay 196 inch Red, Green, Blue, White, Gold, Yellow Rice Lights', 1700.0, 12, 69, 3), 
('Cratly 5I Vase Filler', 499.0, 12, 16, 7), 
('Lal Haveli Decorative Hand Painted Iron African Lady Tealight Stand Showpiece  -  30.48 cm', 800.0, 12, 72, 2), 
('Ravishing Variety Statue Showpiece  -  17 cm', 799.0, 12, 56, 8), 
('Reiki Crystal Products Showpiece  -  6 cm', 2500.0, 12, 72, 3), 
('Tiedribbons Beautifull Mom Gifts Tile Showpiece  -  28 cm', 1599.0, 12, 3, 8), 
('Adaa Terracotta Hand Painted Wall Hanging Ganesha (Blue) Showpiece  -  22 cm', 470.0, 12, 33, 4), 
('Being Nawab 6 inch Glass Hookah', 499.0, 12, 47, 3), 
('Regent Analog 31 cm Dia Wall Clock', 1299.0, 12, 14, 7), 
('Creative Width Decor Small Vinyl Sticker Sticker', 499.0, 12, 44, 1), 
('DeStudio Tiny Wall Sticker', 598.0, 12, 45, 7), 
('Riva Carpets Cotton Free Bath Mat Classic Shag Bathmat-RI-04', 1899.0, 13, 74, 4), 
('Trident Cotton Set of Towels', 870.0, 13, 51, 3), 
('Ermani Export Printed Double Blanket Multicolor', 4499.0, 13, 80, 8), 
('Raymond Abstract Single Blanket Red', 3299.0, 13, 50, 3), 
('Aroma Comfort Polyester Brown Printed Eyelet Window Curtain', 699.0, 13, 9, 2), 
('HomeeHub Polyester Multicolor Self Design Eyelet Window Curtain', 999.0, 13, 35, 7), 
('Lushomes Animal Cushions Cover', 599.0, 13, 14, 5), 
('Furnishing Zone Plain Back Cushion', 999.0, 13, 52, 3), 
('House This Red 180 cm Table Runner', 399.0, 13, 70, 8), 
('Tycab 10 inch Black (250 mm x 3.6 mm) - 1 Pack of 100 Nylon Standard Cable Tie', 245.0, 14, 68, 6), 
('Anuradha Art Designer Brooch', 495.0, 15, 48, 7), 
('Shihibas Belly Button Piercing Brooch', 1499.0, 15, 56, 7), 
('Zaveri Pearls Zinc 18K Yellow Gold Bangle', 3190.0, 15, 41, 7), 
('Sukkhi Brass Yellow Gold Bangle Set', 1763.0, 15, 67, 1), 
('X Gold India Brass Bangle', 800.0, 15, 1, 3), 
('Sukkhi Copper Yellow Gold Bangle Set', 1397.0, 15, 60, 3), 
('Crunchy Fashion Alloy Bangle Set', 1499.0, 15, 58, 2), 
('Be You Sterling Silver Peridot Rhodium Tennis Bracelet', 9000.0, 15, 49, 6), 
('925 Silver Silver Bracelet', 3264.0, 15, 72, 3), 
('Jewelizer Leather Bracelet', 799.0, 15, 58, 7), 
('Pissara Alloy Cubic Zirconia Rhodium, 18K Yellow Gold Kada', 2697.0, 15, 5, 6), 
('Maayin Plain Heart - Silver Sterling Silver Sterling Silver Stud Earring', 466.0, 15, 43, 8), 
('Shashvat Jewels Designer & Elegant Silver Jewel Set', 6248.0, 15, 6, 4), 
('The Art Jewellery Eternal Ethnic Navratna Brass Jewel Set', 4699.0, 15, 38, 6), 
('Magic 22K Yellow Gold Plated Brass Chain', 6000.0, 15, 71, 1), 
('Aahana Creations Cubic Zirconia Yellow Gold Plated Alloy Necklace', 1600.0, 15, 45, 4), 
('Vinnis Pretty Please Metal, Acrylic, Alloy Necklace', 499.0, 15, 51, 5), 
('Voylla Alloy Necklace', 230.0, 15, 21, 4), 
('UpTown Alloy, Enamel Necklace', 450.0, 15, 51, 2), 
('Voylla Metal, Alloy Necklace', 600.0, 15, 59, 2), 
('Voylla Artificial Beaded Plain Alloy Necklace', 449.0, 15, 71, 3), 
('Urdiva Fashions Metal Necklace', 499.0, 15, 72, 6), 
('Joyeria Milan Alloy Necklace', 499.0, 15, 78, 5), 
('JDX Alloy Necklace', 1099.0, 15, 77, 3), 
('FashBlush Forever New Glam Alloy Necklace', 999.0, 15, 2, 6), 
('Etti ESJ15 Wood Necklace', 850.0, 15, 4, 1), 
('Jadoo Collections Alloy Necklace', 599.0, 15, 77, 3), 
('JDX metal Necklace', 450.0, 15, 57, 2), 
('Indsights Trendsvilla Brass Plated Alloy Necklace', 999.0, 15, 6, 3), 
('Jewelizer Alloy Necklace', 899.0, 15, 21, 2), 
('Imagine Products Colourfull Stylish Jewel Enamel Necklace', 699.0, 15, 28, 6), 
('Jewel Touch Personality Lip Pendant Alloy Necklace', 850.0, 15, 56, 4), 
('Giftwallas Crystal Necklace', 349.0, 15, 27, 5), 
('Galz4ever Blue Beaded Drop Chain Fashion Alloy Necklace', 469.0, 15, 75, 3), 
('Radhesh Creation Crystal Yellow Gold Plated Brass Nathiya', 900.0, 15, 62, 7), 
('Silvesto India Stone Pearl Silver Ring', 698.0, 15, 11, 3), 
('Kiara Jewellery Sterling Silver Cubic Zirconia Rhodium Ring', 3275.0, 15, 33, 7), 
('LinkedInLove White Gold Diamond White Gold 18 K Ring', 35609.0, 15, 5, 3), 
('Radiant Bay Striking Three Stone Yellow Gold Diamond 18 K Ring', 24548.0, 15, 75, 8), 
('Sakshi Jewels Tenera Gold Diamond Yellow Gold 18 K Ring', 39346.0, 15, 22, 1), 
('BlueStone The Victor Yellow Gold Diamond 18 K Ring', 32145.0, 15, 11, 1), 
('Karatcraft Lyncis Yellow Gold Diamond 18 K Ring', 38855.0, 15, 28, 3), 
('BlueStone Priyala Ring Yellow Gold Diamond, Ruby 18 K Ring', 41863.0, 15, 53, 6), 
('Radiant Bay Solitaire Charmer Yellow Gold Diamond 18 K Ring', 43321.0, 15, 51, 8), 
('Printland CMW1649 Ceramic Mug', 458.0, 16, 47, 1), 
('Prithish Leaf Me Alone, Im Bushed Ceramic Mug', 499.0, 16, 34, 1), 
('Prithish Wild And Free Ceramic Mug', 499.0, 16, 24, 3), 
('Rockmantra Gamming Wallpaper Ceramic Mug', 499.0, 16, 27, 8), 
('Alda Wok Glass Lid Kadhai', 1790.0, 16, 46, 2), 
('Suruchi Kadhai 2.5 L', 740.0, 16, 46, 2), 
('Pratha Wheel Pizza Cutter', 950.0, 16, 66, 8), 
('Ocean GO/ Capri Rock Glass', 1284.0, 16, 15, 5), 
('Generix pack of 5 Micro USB On-the-go For Mobile Phones & Tablets OTG Cable', 2495.0, 17, 65, 8), 
('Dyna Silver Heart Stereo Wireless Bluetooth Headset', 3299.0, 17, 53, 3), 
('i-KitPit Pouch for Lenovo A369i', 399.0, 17, 42, 5), 
('Nillkin NIMS09 Mirror Screen Guard for LG G3', 999.0, 17, 11, 7), 
('BMS Lifestyle Book Cover for Apple iPad Mini C157', 1599.0, 17, 41, 4), 
('DailyObjects Back Cover for Apple iPad Mini/Retina Display', 1999.0, 17, 48, 8), 
('Enthopia Back Cover for iPad 2, iPad 3, iPad 4', 2895.0, 17, 48, 2), 
('Enthopia Back Cover for iPad Mini, iPad Mini 2, iPad Mini Retina', 2895.0, 17, 74, 4), 
('Hoko Book Cover for Apple iPad 3 (The new iPad)', 2500.0, 17, 62, 8), 
('MHK Pouch for Apple iPad Air, Apple iPad Air 2, Apple 4th Generation iPad, Apple iPad 4', 2399.0, 17, 27, 8), 
('TheLostPuppy Back Cover for Apple iPad Air 2', 2199.0, 17, 52, 4), 
('TheLostPuppy Back Cover for Apple iPad Air 3', 2199.0, 17, 71, 4), 
('TheLostPuppy Back Cover for Apple iPad Air', 2199.0, 17, 46, 3), 
('Theskinmantra Sleeve for All versions of Apple ipad', 1499.0, 17, 16, 6), 
('Neo Gold Leaf Winne The Pooh New Combo Art Plastic Pencil Box', 475.0, 18, 69, 2), 
('Sasta 1 Compartments Wooden Pen Holder', 300.0, 18, 8, 8), 
('Tootpado Art Plastic Punches & Punching Machines', 299.0, 18, 47, 7), 
('Ling Song Tree Flowers Art Cloth Pencil Box', 450.0, 18, 78, 8), 
('Creative Spinach Blue Lion Fish Aquarium Toy Silicone Rubber Toy For Fish', 799.0, 19, 9, 2), 
('Gravolite Plain Yoga Cherry 7 mm', 1552.0, 20, 73, 3), 
('Wilson Championship Extra Duty Tennis Ball', 395.0, 20, 26, 3), 
('barbarik Wayfarer, Aviator Sunglasses', 2499.0, 21, 35, 8), 
('Green Girgit Plant Container Set', 600.0, 22, 11, 3), 
('Super Drool Stripes Plant Container Set', 1199.0, 22, 14, 5), 
('Color Palatte Hanging Planter Plant Container Set', 1320.0, 22, 50, 6), 
('Red Girgit Plant Container Set', 500.0, 22, 17, 7), 
('FAB-FLASH Fire Retrardant PVC 1.5 sq/mm Yellow 91 m Wire', 1599.0, 22, 51, 6), 
('Sigmatech - Terracotta Beads Cutter', 299.0, 23, 56, 4), 
('Bellazaara Hero Dotted Art Canvas Pencil Box', 550.0, 23, 80, 5), 
('Marvel Captain America Super Heros Art Metal Pencil Box', 350.0, 23, 57, 5), 
('Tootpado Signature Ben10 Print Art Canvas Pencil Box', 99.0, 23, 76, 1), 
('Crazy Deal Men, Women', 399.0, 24, 50, 7), 
('Firstrace 101-107 Analog Watch  - For Couple', 2899.0, 24, 29, 1), 
('Kms Ironman_Look_Led_Black11 Digital Watch  - For Men, Women, Girls, Boys', 1395.0, 24, 4, 6), 
('Maxima 26512PPGN FIBER COLLECTION Analog Watch  - For Men', 595.0, 24, 31, 3), 
('Perucci PC-310 Analog Watch  - For Men', 2500.0, 24, 60, 8), 
('Sonata 8925YL02 Analog Watch  - For Women', 599.0, 24, 52, 2), 
('Timewel 1100-N695B Analog Watch  - For Men', 855.0, 24, 23, 4);

create index productquick
on product(ProductID);

alter table product
add Quantity_sold INT NOT NULL DEFAULT 0;

update product set Quantity_sold = 99 where ProductID = 1; 
update product set Quantity_sold = 50 where ProductID = 2; 
update product set Quantity_sold = 12 where ProductID = 3; 
update product set Quantity_sold = 80 where ProductID = 4; 
update product set Quantity_sold = 7 where ProductID = 5; 
update product set Quantity_sold = 42 where ProductID = 6; 
update product set Quantity_sold = 3 where ProductID = 7; 
update product set Quantity_sold = 59 where ProductID = 8; 
update product set Quantity_sold = 79 where ProductID = 9; 
update product set Quantity_sold = 76 where ProductID = 10; 
update product set Quantity_sold = 94 where ProductID = 11; 
update product set Quantity_sold = 78 where ProductID = 12; 
update product set Quantity_sold = 28 where ProductID = 13; 
update product set Quantity_sold = 84 where ProductID = 14; 
update product set Quantity_sold = 10 where ProductID = 15; 
update product set Quantity_sold = 34 where ProductID = 16; 
update product set Quantity_sold = 36 where ProductID = 17; 
update product set Quantity_sold = 41 where ProductID = 18; 
update product set Quantity_sold = 49 where ProductID = 19; 
update product set Quantity_sold = 22 where ProductID = 20; 
update product set Quantity_sold = 38 where ProductID = 21; 
update product set Quantity_sold = 23 where ProductID = 22; 
update product set Quantity_sold = 15 where ProductID = 23; 
update product set Quantity_sold = 67 where ProductID = 24; 
update product set Quantity_sold = 65 where ProductID = 25; 
update product set Quantity_sold = 73 where ProductID = 26; 
update product set Quantity_sold = 78 where ProductID = 27; 
update product set Quantity_sold = 41 where ProductID = 28; 
update product set Quantity_sold = 26 where ProductID = 29; 
update product set Quantity_sold = 95 where ProductID = 30; 
update product set Quantity_sold = 27 where ProductID = 31; 
update product set Quantity_sold = 35 where ProductID = 32; 
update product set Quantity_sold = 19 where ProductID = 33; 
update product set Quantity_sold = 84 where ProductID = 34; 
update product set Quantity_sold = 5 where ProductID = 35; 
update product set Quantity_sold = 1 where ProductID = 36; 
update product set Quantity_sold = 73 where ProductID = 37; 
update product set Quantity_sold = 36 where ProductID = 38; 
update product set Quantity_sold = 14 where ProductID = 39; 
update product set Quantity_sold = 9 where ProductID = 40; 
update product set Quantity_sold = 52 where ProductID = 41; 
update product set Quantity_sold = 0 where ProductID = 42; 
update product set Quantity_sold = 97 where ProductID = 43; 
update product set Quantity_sold = 67 where ProductID = 44; 
update product set Quantity_sold = 64 where ProductID = 45; 
update product set Quantity_sold = 34 where ProductID = 46; 
update product set Quantity_sold = 98 where ProductID = 47; 
update product set Quantity_sold = 6 where ProductID = 48; 
update product set Quantity_sold = 12 where ProductID = 49; 
update product set Quantity_sold = 33 where ProductID = 50; 
update product set Quantity_sold = 84 where ProductID = 51; 
update product set Quantity_sold = 34 where ProductID = 52; 
update product set Quantity_sold = 90 where ProductID = 53; 
update product set Quantity_sold = 92 where ProductID = 54; 
update product set Quantity_sold = 3 where ProductID = 55; 
update product set Quantity_sold = 97 where ProductID = 56; 
update product set Quantity_sold = 77 where ProductID = 57; 
update product set Quantity_sold = 46 where ProductID = 58; 
update product set Quantity_sold = 49 where ProductID = 59; 
update product set Quantity_sold = 93 where ProductID = 60; 
update product set Quantity_sold = 45 where ProductID = 61; 
update product set Quantity_sold = 15 where ProductID = 62; 
update product set Quantity_sold = 93 where ProductID = 63; 
update product set Quantity_sold = 14 where ProductID = 64; 
update product set Quantity_sold = 96 where ProductID = 65; 
update product set Quantity_sold = 97 where ProductID = 66; 
update product set Quantity_sold = 74 where ProductID = 67; 
update product set Quantity_sold = 55 where ProductID = 68; 
update product set Quantity_sold = 77 where ProductID = 69; 
update product set Quantity_sold = 95 where ProductID = 70; 
update product set Quantity_sold = 2 where ProductID = 71; 
update product set Quantity_sold = 76 where ProductID = 72; 
update product set Quantity_sold = 59 where ProductID = 73; 
update product set Quantity_sold = 38 where ProductID = 74; 
update product set Quantity_sold = 30 where ProductID = 75; 
update product set Quantity_sold = 43 where ProductID = 76; 
update product set Quantity_sold = 2 where ProductID = 77; 
update product set Quantity_sold = 44 where ProductID = 78; 
update product set Quantity_sold = 47 where ProductID = 79; 
update product set Quantity_sold = 55 where ProductID = 80; 
update product set Quantity_sold = 91 where ProductID = 81; 
update product set Quantity_sold = 90 where ProductID = 82; 
update product set Quantity_sold = 60 where ProductID = 83; 
update product set Quantity_sold = 45 where ProductID = 84; 
update product set Quantity_sold = 23 where ProductID = 85; 
update product set Quantity_sold = 52 where ProductID = 86; 
update product set Quantity_sold = 33 where ProductID = 87; 
update product set Quantity_sold = 25 where ProductID = 88; 
update product set Quantity_sold = 4 where ProductID = 89; 
update product set Quantity_sold = 61 where ProductID = 90; 
update product set Quantity_sold = 8 where ProductID = 91; 
update product set Quantity_sold = 99 where ProductID = 92; 
update product set Quantity_sold = 94 where ProductID = 93; 
update product set Quantity_sold = 28 where ProductID = 94; 
update product set Quantity_sold = 21 where ProductID = 95; 
update product set Quantity_sold = 1 where ProductID = 96; 
update product set Quantity_sold = 61 where ProductID = 97; 
update product set Quantity_sold = 17 where ProductID = 98; 
update product set Quantity_sold = 23 where ProductID = 99; 
update product set Quantity_sold = 43 where ProductID = 100; 
update product set Quantity_sold = 48 where ProductID = 101; 
update product set Quantity_sold = 80 where ProductID = 102; 
update product set Quantity_sold = 53 where ProductID = 103; 
update product set Quantity_sold = 48 where ProductID = 104; 
update product set Quantity_sold = 72 where ProductID = 105; 
update product set Quantity_sold = 9 where ProductID = 106; 
update product set Quantity_sold = 70 where ProductID = 107; 
update product set Quantity_sold = 29 where ProductID = 108; 
update product set Quantity_sold = 23 where ProductID = 109; 
update product set Quantity_sold = 1 where ProductID = 110; 
update product set Quantity_sold = 39 where ProductID = 111; 
update product set Quantity_sold = 1 where ProductID = 112; 
update product set Quantity_sold = 6 where ProductID = 113; 
update product set Quantity_sold = 71 where ProductID = 114; 
update product set Quantity_sold = 62 where ProductID = 115; 
update product set Quantity_sold = 36 where ProductID = 116; 
update product set Quantity_sold = 82 where ProductID = 117; 
update product set Quantity_sold = 28 where ProductID = 118; 
update product set Quantity_sold = 78 where ProductID = 119; 
update product set Quantity_sold = 40 where ProductID = 120; 
update product set Quantity_sold = 48 where ProductID = 121; 
update product set Quantity_sold = 11 where ProductID = 122; 
update product set Quantity_sold = 78 where ProductID = 123; 
update product set Quantity_sold = 67 where ProductID = 124; 
update product set Quantity_sold = 40 where ProductID = 125; 
update product set Quantity_sold = 36 where ProductID = 126; 
update product set Quantity_sold = 14 where ProductID = 127; 
update product set Quantity_sold = 60 where ProductID = 128; 
update product set Quantity_sold = 72 where ProductID = 129; 
update product set Quantity_sold = 79 where ProductID = 130; 
update product set Quantity_sold = 49 where ProductID = 131; 
update product set Quantity_sold = 95 where ProductID = 132; 
update product set Quantity_sold = 82 where ProductID = 133; 
update product set Quantity_sold = 82 where ProductID = 134; 
update product set Quantity_sold = 50 where ProductID = 135; 
update product set Quantity_sold = 34 where ProductID = 136; 
update product set Quantity_sold = 29 where ProductID = 137; 
update product set Quantity_sold = 92 where ProductID = 138; 
update product set Quantity_sold = 47 where ProductID = 139; 
update product set Quantity_sold = 94 where ProductID = 140; 
update product set Quantity_sold = 38 where ProductID = 141; 
update product set Quantity_sold = 41 where ProductID = 142; 
update product set Quantity_sold = 25 where ProductID = 143; 
update product set Quantity_sold = 58 where ProductID = 144; 
update product set Quantity_sold = 69 where ProductID = 145; 
update product set Quantity_sold = 59 where ProductID = 146; 
update product set Quantity_sold = 54 where ProductID = 147; 
update product set Quantity_sold = 82 where ProductID = 148; 
update product set Quantity_sold = 97 where ProductID = 149; 
update product set Quantity_sold = 94 where ProductID = 150; 
update product set Quantity_sold = 51 where ProductID = 151; 
update product set Quantity_sold = 98 where ProductID = 152; 
update product set Quantity_sold = 68 where ProductID = 153; 
update product set Quantity_sold = 28 where ProductID = 154; 
update product set Quantity_sold = 28 where ProductID = 155; 
update product set Quantity_sold = 64 where ProductID = 156; 
update product set Quantity_sold = 50 where ProductID = 157; 
update product set Quantity_sold = 83 where ProductID = 158; 
update product set Quantity_sold = 16 where ProductID = 159; 
update product set Quantity_sold = 11 where ProductID = 160; 
update product set Quantity_sold = 52 where ProductID = 161; 
update product set Quantity_sold = 3 where ProductID = 162; 
update product set Quantity_sold = 3 where ProductID = 163; 
update product set Quantity_sold = 41 where ProductID = 164; 
update product set Quantity_sold = 39 where ProductID = 165; 
update product set Quantity_sold = 33 where ProductID = 166; 
update product set Quantity_sold = 22 where ProductID = 167; 
update product set Quantity_sold = 32 where ProductID = 168; 
update product set Quantity_sold = 74 where ProductID = 169; 
update product set Quantity_sold = 42 where ProductID = 170; 
update product set Quantity_sold = 77 where ProductID = 171; 
update product set Quantity_sold = 39 where ProductID = 172; 
update product set Quantity_sold = 88 where ProductID = 173; 
update product set Quantity_sold = 20 where ProductID = 174; 
update product set Quantity_sold = 90 where ProductID = 175; 
update product set Quantity_sold = 90 where ProductID = 176; 
update product set Quantity_sold = 68 where ProductID = 177; 
update product set Quantity_sold = 45 where ProductID = 178; 
update product set Quantity_sold = 65 where ProductID = 179; 
update product set Quantity_sold = 100 where ProductID = 180; 
update product set Quantity_sold = 79 where ProductID = 181; 
update product set Quantity_sold = 34 where ProductID = 182; 
update product set Quantity_sold = 63 where ProductID = 183; 
update product set Quantity_sold = 17 where ProductID = 184; 
update product set Quantity_sold = 38 where ProductID = 185; 
update product set Quantity_sold = 24 where ProductID = 186; 
update product set Quantity_sold = 82 where ProductID = 187; 
update product set Quantity_sold = 74 where ProductID = 188; 
update product set Quantity_sold = 60 where ProductID = 189; 
update product set Quantity_sold = 3 where ProductID = 190; 
update product set Quantity_sold = 92 where ProductID = 191; 
update product set Quantity_sold = 15 where ProductID = 192; 
update product set Quantity_sold = 43 where ProductID = 193; 
update product set Quantity_sold = 63 where ProductID = 194; 
update product set Quantity_sold = 88 where ProductID = 195; 
update product set Quantity_sold = 53 where ProductID = 196; 
update product set Quantity_sold = 49 where ProductID = 197; 
update product set Quantity_sold = 20 where ProductID = 198; 
update product set Quantity_sold = 15 where ProductID = 199; 
update product set Quantity_sold = 100 where ProductID = 200; 
update product set Quantity_sold = 40 where ProductID = 201; 
update product set Quantity_sold = 98 where ProductID = 202; 
update product set Quantity_sold = 42 where ProductID = 203; 
update product set Quantity_sold = 86 where ProductID = 204; 
update product set Quantity_sold = 96 where ProductID = 205; 
update product set Quantity_sold = 11 where ProductID = 206; 
update product set Quantity_sold = 77 where ProductID = 207; 
update product set Quantity_sold = 25 where ProductID = 208; 
update product set Quantity_sold = 89 where ProductID = 209; 
update product set Quantity_sold = 35 where ProductID = 210; 
update product set Quantity_sold = 19 where ProductID = 211; 
update product set Quantity_sold = 65 where ProductID = 212; 
update product set Quantity_sold = 29 where ProductID = 213; 
update product set Quantity_sold = 5 where ProductID = 214; 
update product set Quantity_sold = 18 where ProductID = 215; 
update product set Quantity_sold = 29 where ProductID = 216; 
update product set Quantity_sold = 96 where ProductID = 217; 
update product set Quantity_sold = 29 where ProductID = 218; 
update product set Quantity_sold = 48 where ProductID = 219; 
update product set Quantity_sold = 81 where ProductID = 220; 
update product set Quantity_sold = 93 where ProductID = 221; 
update product set Quantity_sold = 62 where ProductID = 222; 
update product set Quantity_sold = 2 where ProductID = 223; 
update product set Quantity_sold = 13 where ProductID = 224; 
update product set Quantity_sold = 42 where ProductID = 225; 
update product set Quantity_sold = 85 where ProductID = 226; 
update product set Quantity_sold = 36 where ProductID = 227; 
update product set Quantity_sold = 98 where ProductID = 228; 
update product set Quantity_sold = 36 where ProductID = 229; 
update product set Quantity_sold = 51 where ProductID = 230; 
update product set Quantity_sold = 94 where ProductID = 231; 
update product set Quantity_sold = 73 where ProductID = 232; 
update product set Quantity_sold = 39 where ProductID = 233; 
update product set Quantity_sold = 66 where ProductID = 234; 
update product set Quantity_sold = 98 where ProductID = 235; 
update product set Quantity_sold = 56 where ProductID = 236; 
update product set Quantity_sold = 35 where ProductID = 237; 
update product set Quantity_sold = 30 where ProductID = 238; 
update product set Quantity_sold = 66 where ProductID = 239; 
update product set Quantity_sold = 18 where ProductID = 240; 
update product set Quantity_sold = 95 where ProductID = 241; 
update product set Quantity_sold = 73 where ProductID = 242; 
update product set Quantity_sold = 19 where ProductID = 243; 
update product set Quantity_sold = 79 where ProductID = 244; 
update product set Quantity_sold = 85 where ProductID = 245; 
update product set Quantity_sold = 65 where ProductID = 246; 
update product set Quantity_sold = 10 where ProductID = 247; 
update product set Quantity_sold = 2 where ProductID = 248; 

create table Cart (
	UID INT NOT NULL,
    PID INT NOT NULL,
    Quantity INT NOT NULL,
    FOREIGN KEY (UID) REFERENCES Users (UserID) on DELETE CASCADE,
    FOREIGN KEY (PID) REFERENCES Product (ProductID) on DELETE CASCADE,
    CONSTRAINT valid_quantity CHECK (Quantity > 0)
);

insert into Cart (UID, PID, Quantity) values
  (129,89,4),
  (30,192,5),
  (108,92,2),
  (80,63,4),
  (91,51,5),
  (134,136,4),
  (43,135,2),
  (79,187,3),
  (166,91,2),
  (123,32,2),
  (14,91,2),
  (32,28,5),
  (116,120,1),
  (78,226,5),
  (10,206,5),
  (143,121,1),
  (89,201,2),
  (62,146,4),
  (11,78,4),
  (167,143,4),
  (29,202,4),
  (68,132,3),
  (41,53,5),
  (28,232,1),
  (117,28,5),
  (88,189,5),
  (75,130,3),
  (114,138,4),
  (12,80,4),
  (108,185,4),
  (28,31,2),
  (89,67,3),
  (116,213,5),
  (150,129,5),
  (22,99,5),
  (155,93,3),
  (14,79,1),
  (134,122,3),
  (28,48,3),
  (168,222,4),
  (28,119,3),
  (157,137,2),
  (133,170,4),
  (118,82,1),
  (87,32,3),
  (55,203,4),
  (65,21,2),
  (74,5,5),
  (43,97,2),
  (63,98,4),
  (154,158,4),
  (167,77,3),
  (42,182,2),
  (23,199,2),
  (88,84,4),
  (45,21,2),
  (169,116,1),
  (154,130,2),
  (123,63,3),
  (119,88,3),
  (23,139,2),
  (54,58,2),
  (71,52,2),
  (163,156,2),
  (6,17,5),
  (12,81,4),
  (48,212,2),
  (10,79,5),
  (92,112,3),
  (2,193,3),
  (83,123,4),
  (105,61,4),
  (68,73,2),
  (146,59,3),
  (3,33,3),
  (70,44,2),
  (5,124,5),
  (117,92,2),
  (43,44,4),
  (135,4,3),
  (25,180,4),
  (120,164,2),
  (60,175,3),
  (148,227,2),
  (28,117,2),
  (34,168,1),
  (155,185,3),
  (152,116,2),
  (94,186,1),
  (56,238,2),
  (154,16,4),
  (64,76,3),
  (66,108,1),
  (152,161,1),
  (112,215,3),
  (145,28,3),
  (127,40,2),
  (37,114,2),
  (156,16,3),
  (120,161,4);

create index cartquick
on cart(UID, PID);

create table inventory_products (
	InID INT NOT NULL,
    PID INT NOT NULL UNIQUE,
    Quantity INT NOT NULL,
    FOREIGN KEY (InID) REFERENCES Inventory (InventoryID),
    FOREIGN KEY (PID) REFERENCES Product (ProductID) on DELETE CASCADE,
    CONSTRAINT quantity_valid CHECK (Quantity >= 0)
);

insert into inventory_products values
(1, 1, 10), 
(1, 9, 63), 
(1, 20, 86), 
(1, 28, 52), 
(1, 38, 82), 
(1, 43, 88), 
(1, 45, 18), 
(1, 53, 20), 
(1, 61, 78), 
(1, 66, 92), 
(1, 76, 65), 
(1, 84, 16), 
(1, 87, 77), 
(1, 89, 18), 
(1, 96, 37), 
(1, 106, 15), 
(1, 109, 64), 
(1, 115, 52), 
(1, 116, 60), 
(1, 118, 80), 
(1, 119, 42), 
(1, 121, 54), 
(1, 124, 96), 
(1, 147, 22), 
(1, 162, 82), 
(1, 173, 94), 
(1, 184, 67), 
(1, 198, 18), 
(1, 199, 99), 
(1, 203, 39), 
(1, 204, 23), 
(1, 241, 92), 
(1, 243, 56), 
(2, 2, 17), 
(2, 6, 84), 
(2, 8, 75), 
(2, 17, 75), 
(2, 36, 95), 
(2, 42, 90), 
(2, 47, 75), 
(2, 52, 69), 
(2, 78, 12), 
(2, 79, 28), 
(2, 88, 12), 
(2, 91, 37), 
(2, 101, 98), 
(2, 134, 95), 
(2, 140, 11), 
(2, 153, 92), 
(2, 165, 65), 
(2, 177, 43), 
(2, 178, 91), 
(2, 186, 59), 
(2, 188, 75), 
(2, 207, 59), 
(2, 208, 64), 
(2, 217, 40), 
(2, 225, 65), 
(2, 229, 73), 
(2, 247, 76), 
(3, 11, 30), 
(3, 13, 92), 
(3, 18, 51), 
(3, 25, 24), 
(3, 29, 58), 
(3, 48, 79), 
(3, 55, 14), 
(3, 57, 30), 
(3, 68, 42), 
(3, 72, 83), 
(3, 81, 8), 
(3, 95, 93), 
(3, 99, 30), 
(3, 103, 73), 
(3, 108, 52), 
(3, 129, 40), 
(3, 130, 88), 
(3, 137, 49), 
(3, 138, 52), 
(3, 142, 68), 
(3, 145, 27), 
(3, 150, 39), 
(3, 152, 62), 
(3, 156, 27), 
(3, 163, 44), 
(3, 164, 98), 
(3, 167, 43), 
(3, 179, 41), 
(3, 182, 18), 
(3, 185, 59), 
(3, 187, 53), 
(3, 192, 99), 
(3, 194, 62), 
(3, 196, 29), 
(3, 200, 94), 
(3, 205, 26), 
(3, 212, 88), 
(3, 223, 55), 
(3, 230, 42), 
(3, 231, 52), 
(3, 233, 47), 
(3, 245, 99), 
(4, 50, 84), 
(4, 54, 37), 
(4, 62, 87), 
(4, 69, 22), 
(4, 71, 97), 
(4, 82, 25), 
(4, 94, 76), 
(4, 98, 98), 
(4, 102, 44), 
(4, 110, 56), 
(4, 113, 46), 
(4, 117, 62), 
(4, 120, 66), 
(4, 128, 17), 
(4, 136, 70), 
(4, 144, 77), 
(4, 149, 62), 
(4, 171, 61), 
(4, 174, 86), 
(4, 176, 75), 
(4, 190, 55), 
(4, 215, 53), 
(4, 218, 71), 
(4, 221, 33), 
(4, 222, 28), 
(4, 238, 43), 
(4, 248, 40), 
(5, 3, 85), 
(5, 32, 99), 
(5, 34, 70), 
(5, 39, 90), 
(5, 44, 28), 
(5, 60, 23), 
(5, 64, 85), 
(5, 65, 61), 
(5, 70, 88), 
(5, 73, 62), 
(5, 80, 78), 
(5, 85, 92), 
(5, 100, 50), 
(5, 123, 63), 
(5, 126, 48), 
(5, 131, 87), 
(5, 132, 62), 
(5, 133, 93), 
(5, 155, 51), 
(5, 175, 54), 
(5, 181, 74), 
(5, 191, 20), 
(5, 210, 64), 
(5, 213, 40), 
(5, 234, 59), 
(5, 239, 85), 
(5, 240, 68), 
(6, 4, 49), 
(6, 16, 69), 
(6, 21, 81), 
(6, 24, 43), 
(6, 33, 27), 
(6, 35, 33), 
(6, 49, 22), 
(6, 51, 70), 
(6, 56, 85), 
(6, 74, 20), 
(6, 75, 99), 
(6, 83, 53), 
(6, 86, 69), 
(6, 90, 71), 
(6, 93, 54), 
(6, 105, 37), 
(6, 111, 58), 
(6, 127, 70), 
(6, 158, 45), 
(6, 166, 84), 
(6, 169, 99), 
(6, 172, 65), 
(6, 180, 58), 
(6, 183, 73), 
(6, 189, 83), 
(6, 201, 89), 
(6, 224, 61), 
(6, 235, 30), 
(6, 237, 57), 
(6, 244, 26), 
(7, 7, 11), 
(7, 10, 14), 
(7, 12, 35), 
(7, 19, 66), 
(7, 22, 54), 
(7, 27, 68), 
(7, 31, 64), 
(7, 37, 99), 
(7, 40, 80), 
(7, 41, 56), 
(7, 58, 53), 
(7, 59, 57), 
(7, 63, 50), 
(7, 92, 99), 
(7, 97, 70), 
(7, 104, 35), 
(7, 112, 27), 
(7, 122, 52), 
(7, 135, 58), 
(7, 139, 77), 
(7, 146, 40), 
(7, 148, 65), 
(7, 154, 37), 
(7, 159, 84), 
(7, 160, 82), 
(7, 161, 90), 
(7, 168, 15), 
(7, 193, 37), 
(7, 195, 46), 
(7, 214, 48), 
(7, 227, 77), 
(7, 236, 41), 
(7, 242, 61), 
(8, 5, 45), 
(8, 14, 30), 
(8, 15, 75), 
(8, 23, 98), 
(8, 26, 90), 
(8, 30, 84), 
(8, 46, 80), 
(8, 67, 42), 
(8, 77, 18), 
(8, 107, 61), 
(8, 114, 30), 
(8, 125, 58), 
(8, 141, 86), 
(8, 143, 18), 
(8, 151, 86), 
(8, 157, 93), 
(8, 170, 30), 
(8, 197, 56), 
(8, 202, 70), 
(8, 206, 23), 
(8, 209, 52), 
(8, 211, 27), 
(8, 216, 46), 
(8, 219, 74), 
(8, 220, 27), 
(8, 226, 95), 
(8, 228, 94), 
(8, 232, 16), 
(8, 246, 21);

create table Payment (
	PaymentID INT NOT NULL AUTO_INCREMENT,
	Amount INT NOT NULL,
	UID INT NOT NULL,
	PRIMARY KEY (PaymentID),
    FOREIGN KEY (UID) REFERENCES Users (UserID) on DELETE CASCADE,
    CONSTRAINT valid_amount CHECK (Amount > 0)
);

insert into Payment(Amount, UID) values
(399.0, 16), 
(44500.0, 147), 
(495.0, 29), 
(2999.0, 4), 
(1550.0, 10), 
(1899.0, 53), 
(1196.0, 39), 
(495.0, 136), 
(999.0, 77), 
(469.0, 145), 
(1995.0, 128), 
(1000.0, 97), 
(1957.0, 117), 
(4497.0, 105), 
(499.0, 122), 
(3190.0, 113), 
(4699.0, 135), 
(35609.0, 92), 
(698.0, 54), 
(9500.0, 26), 
(1995.0, 34), 
(499.0, 12), 
(798.0, 128), 
(495.0, 6), 
(899.0, 9), 
(3999.0, 108), 
(399.0, 122), 
(598.0, 133), 
(9500.0, 67), 
(999.0, 63), 
(1250.0, 134), 
(899.0, 54), 
(2164.0, 121), 
(495.0, 106), 
(999.0, 124), 
(2299.0, 75), 
(999.0, 43), 
(499.0, 87), 
(2100.0, 9), 
(4499.0, 23), 
(899.0, 144), 
(4497.0, 84), 
(3275.0, 6), 
(999.0, 150), 
(850.0, 75), 
(999.0, 101), 
(799.0, 61), 
(999.0, 92), 
(599.0, 71), 
(4497.0, 43), 
(2999.0, 128), 
(599.0, 15), 
(35609.0, 108), 
(1700.0, 61), 
(299.0, 27), 
(999.0, 68), 
(499.0, 48), 
(1299.0, 112), 
(800.0, 95), 
(799.0, 41), 
(9500.0, 14), 
(6000.0, 109), 
(4900.0, 124), 
(1699.0, 73), 
(899.0, 94), 
(1399.0, 54), 
(800.0, 1), 
(469.0, 73), 
(999.0, 47), 
(3275.0, 73), 
(418.0, 97), 
(1099.0, 142), 
(199.0, 136), 
(999.0, 72), 
(1499.0, 122), 
(900.0, 96), 
(6000.0, 7), 
(6000.0, 142), 
(1599.0, 133), 
(1099.0, 7);

create table Orders (
	OrderID INT NOT NULL AUTO_INCREMENT,
    OrderDate DATE NOT NULL,
    UID INT NOT NULL,
    PID INT NOT NULL,
    CoID INT NOT NULL,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (UID) REFERENCES Users (UserID) on DELETE CASCADE,
    FOREIGN KEY (PID) REFERENCES Payment (PaymentID),
    FOREIGN KEY (CoID) REFERENCES Courier (CourierID)
);

insert into Orders(OrderDate, UID, PID, CoID) values
('2022-3-4', 16, 1, 8), 
('2022-11-12', 147, 2, 2), 
('2022-1-10', 29, 3, 2), 
('2022-10-20', 4, 4, 1), 
('2022-6-3', 10, 5, 4), 
('2022-10-2', 53, 6, 2), 
('2022-4-9', 39, 7, 7), 
('2022-2-5', 136, 8, 6), 
('2022-1-10', 77, 9, 8), 
('2022-12-10', 145, 10, 6), 
('2022-1-4', 128, 11, 6), 
('2022-3-11', 97, 12, 3), 
('2022-3-12', 117, 13, 4), 
('2022-8-2', 105, 14, 3), 
('2022-11-20', 122, 15, 5), 
('2022-2-18', 113, 16, 2), 
('2022-3-19', 135, 17, 7), 
('2022-8-1', 92, 18, 2), 
('2022-1-19', 54, 19, 5), 
('2022-1-25', 26, 20, 8), 
('2022-8-4', 34, 21, 1), 
('2022-4-6', 12, 22, 4), 
('2022-2-12', 128, 23, 5), 
('2022-10-18', 6, 24, 5), 
('2022-10-17', 9, 25, 5), 
('2022-11-15', 108, 26, 1), 
('2022-7-6', 122, 27, 1), 
('2022-10-1', 133, 28, 1), 
('2022-12-3', 67, 29, 2), 
('2022-5-18', 63, 30, 7), 
('2022-1-11', 134, 31, 3), 
('2022-12-4', 54, 32, 2), 
('2022-5-11', 121, 33, 4), 
('2022-4-15', 106, 34, 7), 
('2022-9-23', 124, 35, 3), 
('2022-3-19', 75, 36, 6), 
('2022-12-25', 43, 37, 7), 
('2022-10-11', 87, 38, 5), 
('2022-9-12', 9, 39, 5), 
('2022-5-6', 23, 40, 8), 
('2022-5-22', 144, 41, 7), 
('2022-5-3', 84, 42, 7), 
('2022-5-18', 6, 43, 1), 
('2022-12-25', 150, 44, 6), 
('2022-2-17', 75, 45, 1), 
('2022-2-21', 101, 46, 3), 
('2022-6-3', 61, 47, 1), 
('2022-1-16', 92, 48, 1), 
('2022-7-19', 71, 49, 7), 
('2022-10-7', 43, 50, 7), 
('2022-9-12', 128, 51, 2), 
('2022-8-16', 15, 52, 2), 
('2022-10-7', 108, 53, 6), 
('2022-4-13', 61, 54, 7), 
('2022-6-21', 27, 55, 6), 
('2022-4-8', 68, 56, 8), 
('2022-3-15', 48, 57, 1), 
('2022-9-18', 112, 58, 4), 
('2022-5-16', 95, 59, 3), 
('2022-12-11', 41, 60, 2), 
('2022-12-5', 14, 61, 8), 
('2022-7-25', 109, 62, 7), 
('2022-6-11', 124, 63, 8), 
('2022-8-14', 73, 64, 4), 
('2022-5-23', 94, 65, 7), 
('2022-8-10', 54, 66, 4), 
('2022-7-13', 1, 67, 5), 
('2022-7-23', 73, 68, 1), 
('2022-8-17', 47, 69, 8), 
('2022-2-25', 73, 70, 4), 
('2022-10-3', 97, 71, 8), 
('2022-6-10', 142, 72, 1), 
('2022-4-10', 136, 73, 7), 
('2022-5-16', 72, 74, 4), 
('2022-2-7', 122, 75, 3), 
('2022-5-17', 96, 76, 3), 
('2022-6-10', 7, 77, 8), 
('2022-9-4', 142, 78, 4), 
('2022-1-16', 133, 79, 7), 
('2022-12-19', 7, 80, 4);

create table product_in_order (
	OID INT NOT NULL,
    PID INT NOT NULL,
    FOREIGN KEY (OID) REFERENCES Orders (OrderID),
    FOREIGN KEY (PID) REFERENCES Product (ProductID)
);

insert into product_in_order values
(1, 81), 
(2, 134), 
(3, 159), 
(4, 137), 
(5, 43), 
(6, 60), 
(7, 66), 
(8, 159), 
(9, 24), 
(10, 192), 
(11, 88), 
(12, 39), 
(13, 64), 
(14, 47), 
(15, 82), 
(16, 161), 
(17, 172), 
(18, 196), 
(19, 102), 
(20, 116), 
(21, 88), 
(22, 147), 
(23, 93), 
(24, 159), 
(25, 87), 
(26, 120), 
(27, 81), 
(28, 148), 
(29, 116), 
(30, 126), 
(31, 32), 
(32, 188), 
(33, 65), 
(34, 159), 
(35, 132), 
(36, 31), 
(37, 2), 
(38, 54), 
(39, 67), 
(40, 151), 
(41, 188), 
(42, 47), 
(43, 195), 
(44, 90), 
(45, 184), 
(46, 79), 
(47, 58), 
(48, 86), 
(49, 21), 
(50, 47), 
(51, 36), 
(52, 155), 
(53, 196), 
(54, 138), 
(55, 41), 
(56, 156), 
(57, 82), 
(58, 146), 
(59, 140), 
(60, 141), 
(61, 116), 
(62, 173), 
(63, 7), 
(64, 59), 
(65, 188), 
(66, 18), 
(67, 104), 
(68, 192), 
(69, 37), 
(70, 195), 
(71, 26), 
(72, 182), 
(73, 63), 
(74, 24), 
(75, 133), 
(76, 193), 
(77, 114), 
(78, 114), 
(79, 53), 
(80, 38);

