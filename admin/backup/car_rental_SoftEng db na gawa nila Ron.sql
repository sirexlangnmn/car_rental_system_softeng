

CREATE TABLE `announcement` (
  `announcement_id` int(11) NOT NULL AUTO_INCREMENT,
  `annouce_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `annouce_place` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `annouce_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `details` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`announcement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO category VALUES("9","Vehicle");





CREATE TABLE `client` (
  `client_id` int(15) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contact_number` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `zip` int(40) NOT NULL,
  `country` varchar(40) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `combo` (
  `combo_id` int(11) NOT NULL AUTO_INCREMENT,
  `combo_name` varchar(100) NOT NULL,
  `combo_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`combo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO combo VALUES("1","Car 2","5000.00");
INSERT INTO combo VALUES("2","Jeep 1","800.00");
INSERT INTO combo VALUES("3","Taxi 1","1500.00");
INSERT INTO combo VALUES("4","LBT1","2.00");





CREATE TABLE `combo_details` (
  `combo_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `combo_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`combo_details_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO combo_details VALUES("8","1","5");
INSERT INTO combo_details VALUES("9","2","7");
INSERT INTO combo_details VALUES("10","3","11");
INSERT INTO combo_details VALUES("12","4","9");





CREATE TABLE `event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_what` varchar(500) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `event_where` varchar(100) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO event VALUES("1","SoftEng Project on Process","2017-09-30","10:39:00","Kahit saan, bahala");
INSERT INTO event VALUES("2","Testing","2017-07-13","12:59:00","Testing location");





CREATE TABLE `member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_name` varchar(15) NOT NULL,
  `specialty` varchar(15) NOT NULL,
  `member_status` varchar(10) NOT NULL,
  `member_contact` varchar(30) NOT NULL,
  `member_address` varchar(100) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) NOT NULL,
  `cat_id` int(30) NOT NULL,
  `subcat_name` varchar(30) NOT NULL,
  `menu_desc` varchar(100) NOT NULL,
  `menu_price` decimal(10,2) NOT NULL,
  `menu_pic` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

INSERT INTO menu VALUES("18","Volkswagen Up","0","Cars","Volkswagen High Up 1.0 TSI 90PS five-speed manual","2000.00","46996627.jpg","Available");
INSERT INTO menu VALUES("19","Volvo S40","0","Cars","Volvo S40 Sedan offers 2.5L inline 5-cylinder, Turbo engine with 5 speed automatic transmission. It ","3000.00","44220422.jpg","Available");
INSERT INTO menu VALUES("21","Audi A4","0","Cars"," A4 is a truly moving work of art. With a standard 190-hp turbocharged engine and available 252-hp t","3000.00","89681411.jpg","Available");
INSERT INTO menu VALUES("22","Audi S4","0","Cars","This luxury sport sedan isn’t one to wait around. The redesigned Audi S4 — with its turbocharged","2300.00","8.jpg","Available");
INSERT INTO menu VALUES("23","BMW X6M","0","Cars","4 doors, 5 passengers, all-wheel drive; 14 (Est)/19 (Est) mpg city/hwy (est)

4.4-liter turbocharg","3000.00","BMW_X6M.jpg","Available");
INSERT INTO menu VALUES("24","Audi A3","0","Cars","The front-drive car gets a 186-hp turbo four and a seven-speed automatic; the Quattro version comes ","4000.00","Audi_A4.jpg","Reserve");
INSERT INTO menu VALUES("25","Audi Q7","0","Cars","When it comes to a luxury SUV, your only options should be power and more power. The Audi Q7 is driv","3500.00","Audi_Q7.jpg","Available");
INSERT INTO menu VALUES("26","Mercedes Benz GLA","0","Cars","Taut, trim and muscular, the GLA is big on style even in its smallest details. New front and rear st","5500.00","Bendz_GLA.jpg","Available");
INSERT INTO menu VALUES("27","Mercedes Benz Vito","0","Cars","Mercedes-Benz is striving to attain a leading position in the mid-size van segment with its new Vito","3800.00","Bendz_Vito.jpg","Available");
INSERT INTO menu VALUES("28","BMW X6","0","Cars","By the time imitators come along, the X6 is long gone. With its aggressively tuned TwinPower Turbo e","3800.00","bm_x6.jpg","Reserve");
INSERT INTO menu VALUES("29","BMW 3S","0","Cars","The 1975 debut of the BMW 3 Series was more than a revelation – it was a revolution. And after mor","4800.00","BMW_3S.jpg","Reserve");
INSERT INTO menu VALUES("33","Toyota Altis","0","Cars","1.6L engine with 120 hp or the 2.0L 143 hp engine, available in a 5-speed manual or CVT automatic tr","2500.00","Corolla.jpg","Available");
INSERT INTO menu VALUES("34","Mazda CX3","0","Cars","The all-new Mazda CX-3 comes with the Active Driving Display","2500.00","CX3.jpg","Reserve");
INSERT INTO menu VALUES("35","Mazda CX3","0","Cars","The all-new Mazda CX-3 comes with the Active Driving Display","3000.00","CX3.jpg","Available");
INSERT INTO menu VALUES("36","Dacia Duster","0","Cars","4 x 20W Radio with CD player including MP3 CD reader with steering-column mounted fingertip controls","2000.00","Duster.jpg","Reserve");
INSERT INTO menu VALUES("37","Ford E-150","0","Cars","The largest in Ford PH’s fleet, and the oldest nameplate in the American auto maker’s Philippine","4500.00","Ford-E_150.jpg","Available");
INSERT INTO menu VALUES("38","Toyota Highlander","0","Cars","Highlander features an available direct-injected 3.5-liter V6 engine, plus a Direct Shift-8AT (8-spe","5000.00","Highlander.jpg","Available");
INSERT INTO menu VALUES("39","Toyota Hilux","0","Cars","The Hilux is equipped with a silent, state-of-the-art, 4-cylinder, 2.8L GD engine that provides more","3000.00","Legend_45.jpg","Available");
INSERT INTO menu VALUES("40","Nissan Navara","0","Cars","A 2.5L 16 valve engine runs the Navarra and starts at 163 hp with 403 Nm of torque for the base mode","3000.00","Navara.jpg","Reserve");
INSERT INTO menu VALUES("42","Volvo V40","0","Cars","The Volvo V40 is the compact hatchback that’s perfectly suited for life in the city. With agile ha","3200.00","Volvo_V40.jpg","Available");
INSERT INTO menu VALUES("43","Volvo XC60","0","Cars","With a turbocharged and supercharged engine, the XC60 offers performance equivalent to six and even ","2800.00","Volvo_XC60.jpg","Available");
INSERT INTO menu VALUES("44","Volkswagen Amarok","0","Cars","The Amarok. Attractive, isn’t she? But let’s face it, appearances don’t count for much when it","3500.00","VW_Amarok.JPG","Reserve");
INSERT INTO menu VALUES("45","Volkswagen Carra","0","Cars","Elegant and Good Car","3000.00","VW_Carra.jpg","Reserve");





CREATE TABLE `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO message VALUES("1","test5","test5@gmail.com","Reklamo","COmments","2017-07-23 00:49:15");
INSERT INTO message VALUES("2","test14","test14@gmail.com","test14","coammrfalfael","2017-07-30 01:40:57");
INSERT INTO message VALUES("3","Jeric Braza","junar@gmail.com","payment","O5FEKmKC2G ito na po yung transaction number","2017-08-31 02:59:00");





CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

INSERT INTO payment VALUES("1","2000","42","2017-04-28");
INSERT INTO payment VALUES("2","2","42","2017-07-16");
INSERT INTO payment VALUES("3","2","42","2017-07-16");
INSERT INTO payment VALUES("4","2","45","2017-07-16");
INSERT INTO payment VALUES("5","7500","66","2017-07-24");
INSERT INTO payment VALUES("6","10","64","2017-07-24");
INSERT INTO payment VALUES("7","10","64","2017-07-24");
INSERT INTO payment VALUES("8","500","66","2017-07-24");
INSERT INTO payment VALUES("9","700","66","2017-07-24");
INSERT INTO payment VALUES("10","700","66","2017-07-24");
INSERT INTO payment VALUES("11","1","64","2017-07-24");
INSERT INTO payment VALUES("12","1","64","2017-07-24");
INSERT INTO payment VALUES("13","2","73","2017-07-25");
INSERT INTO payment VALUES("14","500","73","2017-07-25");
INSERT INTO payment VALUES("15","850","65","2017-07-27");
INSERT INTO payment VALUES("16","35000","75","2017-07-27");
INSERT INTO payment VALUES("17","5000","78","2017-07-29");
INSERT INTO payment VALUES("18","600","81","2017-07-29");
INSERT INTO payment VALUES("19","-10000","75","2017-07-29");
INSERT INTO payment VALUES("20","-10000","75","2017-07-29");
INSERT INTO payment VALUES("21","-10000","75","2017-07-29");
INSERT INTO payment VALUES("22","20000","78","2017-07-29");
INSERT INTO payment VALUES("23","20000","80","2017-07-29");
INSERT INTO payment VALUES("24","4","82","2017-07-29");
INSERT INTO payment VALUES("25","20000","77","2017-07-29");
INSERT INTO payment VALUES("26","15000","84","2017-08-31");
INSERT INTO payment VALUES("27","15000","84","2017-08-31");
INSERT INTO payment VALUES("28","1000","84","2017-08-31");
INSERT INTO payment VALUES("29","1500","85","2017-08-31");





CREATE TABLE `r_combo` (
  `r_combo_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `r_details_id` int(11) NOT NULL,
  PRIMARY KEY (`r_combo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `r_details` (
  `r_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `combo_id` int(11) NOT NULL,
  `r_nop` int(10) NOT NULL,
  `r_total` decimal(10,2) NOT NULL,
  `r_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`r_details_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO r_details VALUES("1","53","0","0","1000.00","0.00");
INSERT INTO r_details VALUES("2","54","0","0","1000.00","0.00");
INSERT INTO r_details VALUES("3","54","0","0","1000.00","0.00");
INSERT INTO r_details VALUES("4","54","0","0","6000.00","0.00");
INSERT INTO r_details VALUES("5","55","0","0","2000.00","0.00");
INSERT INTO r_details VALUES("6","55","0","0","0.00","0.00");
INSERT INTO r_details VALUES("7","1","0","0","0.00","0.00");





CREATE TABLE `r_noncombo` (
  `r_non_id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `serve` int(11) NOT NULL,
  PRIMARY KEY (`r_non_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO r_noncombo VALUES("1","53","5","1");
INSERT INTO r_noncombo VALUES("2","54","5","1");
INSERT INTO r_noncombo VALUES("3","54","5","1");
INSERT INTO r_noncombo VALUES("4","54","5","6");
INSERT INTO r_noncombo VALUES("5","55","5","2");





CREATE TABLE `reservation` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `r_date` date NOT NULL,
  `r_time` time NOT NULL,
  `r_last` varchar(30) NOT NULL,
  `r_first` varchar(30) NOT NULL,
  `r_contact` varchar(30) NOT NULL,
  `r_email` varchar(50) NOT NULL,
  `r_address` varchar(100) NOT NULL,
  `r_type` varchar(30) NOT NULL,
  `r_ocassion` varchar(50) NOT NULL,
  `r_motif` varchar(30) NOT NULL,
  `member_id` int(11) NOT NULL,
  `r_venue` varchar(100) NOT NULL,
  `payable` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `r_status` varchar(10) NOT NULL,
  `date_reserved` date NOT NULL,
  `r_code` varchar(10) NOT NULL,
  `pax` int(11) NOT NULL,
  `combo_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `modeofpayment` varchar(50) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

INSERT INTO reservation VALUES("75","2017-07-31","05:00:00","test1","test1","09098202040","test1@gmail.com","test 1 adress","Personal","Valenzuela","Black","0","Wedding","25000.00","20000.00","","2017-07-27","vVUZoz0H7X","5","1","5000.00","Cash");
INSERT INTO reservation VALUES("76","0000-00-00","00:00:00","1","1","12345678873","asd@gmail.com","1","","","","0","","0.00","0.00","","2017-07-29","k9j2UnXtFm","0","0","0.00","");
INSERT INTO reservation VALUES("77","2017-08-16","12:12:00","a1","a1","09090909090","a1@gmail.com","a1address","Personal","Makati","Black","0","Family Vacation","25000.00","5000.00","Approved","2017-07-29","uXo0DsZYLy","5","1","5000.00","Pera Padala");
INSERT INTO reservation VALUES("78","2017-07-29","12:12:00","a","a","09098202040","a@gmail.com","a","Personal","Valenzuela","2","0","Vacation","25000.00","0.00","Finished","2017-07-29","bL2SUI5oDi","5","1","5000.00","Pera Padala");
INSERT INTO reservation VALUES("79","0000-00-00","00:00:00","a","a","09098202040","a@gmail.com","a","","","","0","","0.00","0.00","","2017-07-29","dnpvGepdcL","0","0","0.00","");
INSERT INTO reservation VALUES("80","2017-08-01","12:12:00","testa1","testa1","09091234567","testa1@gmail.com","testa1 address","Personal","Makati","Black","0","Vacation","25000.00","5000.00","Approved","2017-07-29","O5FEKmKC2G","5","1","5000.00","Pera Padala");
INSERT INTO reservation VALUES("81","2017-08-02","13:21:00","testa2","testa2","09123456782","testa2@gmail.com","testa2 address","Uber","Manila","White","0","Livelihood","5600.00","5000.00","Cancelled","2017-07-29","dekJVizNHM","7","2","800.00","Bank to Bank");
INSERT INTO reservation VALUES("82","2017-08-03","12:12:00","testa3","testa3","09091234567","testa3@gmail.com","testa3 address","Cargo","Quezon City","anycolor","0","Lipat Bahay","4.00","0.00","Cancelled","2017-07-29","tviUKt6b0l","2","4","2.00","Cash");
INSERT INTO reservation VALUES("83","0000-00-00","00:00:00","a","a","09123456782","asd@gmail.com","a","","","","0","","0.00","0.00","","2017-07-29","CdeexhMHMl","0","0","0.00","");
INSERT INTO reservation VALUES("84","2017-09-04","12:30:00","Wick","John","09876543212","jcperalta123789@gmail.com","Novaliches, Q.C","Self Driven","Outside Metro Manila","Orange","0","Personal Use","15000.00","-16000.00","Finished","2017-08-31","c2bVKuoQqE","5","0","3000.00","Cash");
INSERT INTO reservation VALUES("85","2017-09-15","11:11:00","ada","dada","09090909909","dakdjad@gmail.com","dad","Self Driven","Manila","Green","0","Business Purpose","38000.00","36500.00","Approved","2017-08-31","2bLKOkfCbe","10","0","3800.00","Bank to Bank");
INSERT INTO reservation VALUES("86","2017-08-31","17:31:00","Braza","Jeric","09364079592","junar@gmail.com","Q.C","Rent with Driver","Outside Metro Manila","Grey","0","Personal Use","4000.00","4000.00","pending","2017-08-31","4xoDQqPtqA","2","0","2000.00","Bank to Bank");





CREATE TABLE `subcategory` (
  `subcat_id` int(11) NOT NULL AUTO_INCREMENT,
  `subcat_name` varchar(30) NOT NULL,
  PRIMARY KEY (`subcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO subcategory VALUES("1","Cars");
INSERT INTO subcategory VALUES("2","Jeep");
INSERT INTO subcategory VALUES("3","Taxi");
INSERT INTO subcategory VALUES("10","Cargo Truck");





CREATE TABLE `tb_discount` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `price` int(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `tb_history` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `user_id` int(15) NOT NULL,
  `action` varchar(40) NOT NULL,
  `date` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `tb_price` (
  `excess_id` int(15) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `prices` varchar(40) NOT NULL,
  `time` int(15) NOT NULL,
  PRIMARY KEY (`excess_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `tb_reserve` (
  `reserveID` int(15) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(40) NOT NULL,
  `menu_id` int(30) NOT NULL,
  `days_no` varchar(40) NOT NULL,
  `total` varchar(40) NOT NULL,
  `totalamount` varchar(40) NOT NULL,
  `partial` varchar(40) NOT NULL,
  `balance` varchar(40) NOT NULL,
  `excess_id` varchar(40) NOT NULL,
  `arrival` varchar(40) NOT NULL,
  `departure` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL,
  `request` varchar(40) NOT NULL,
  `transaction_code` varchar(40) NOT NULL,
  `modeofpayment` varchar(40) NOT NULL,
  `discount` int(40) NOT NULL,
  `incharge` varchar(40) NOT NULL,
  `Date` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`reserveID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `team` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(50) NOT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `team_member` (
  `team_member_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  PRIMARY KEY (`team_member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO user VALUES("1","Federex A. Potolin","admin","123","active");
INSERT INTO user VALUES("2","Federex A. Potolin","federexpotolin","federexpotolin","active");
INSERT INTO user VALUES("3","Princess Mae Zorca","princesszorca","princesszorca","active");



