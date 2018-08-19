

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO member VALUES("1","Oro","Tata","active","12345678873","dadadadadasdasdas");
INSERT INTO member VALUES("2","Driver LN1","Diver FN1","active","09098202040","vnnvjalkjdlkjlkfjaklfjslajsdklfj");
INSERT INTO member VALUES("3","test12","test12","active","09123456782","dhahajkdhajk");
INSERT INTO member VALUES("4","test11","test11","active","09091234567","test11");
INSERT INTO member VALUES("5","test112","test112","active","09123456782","test112 assa");
INSERT INTO member VALUES("6","test15","Makati","active","09090987654","try00");
INSERT INTO member VALUES("7","1","1","active","1112121212","212121212");





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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

INSERT INTO menu VALUES("2","Bakareta","2","pork","Pork Adobo","100.00","indian-food-platter.jpg","");
INSERT INTO menu VALUES("18","Toyota Altis","9","Cars","White","1000.00","46996627.jpg","");
INSERT INTO menu VALUES("19","INNOVA","9","Cars","Black","1100.00","44220422.jpg","");
INSERT INTO menu VALUES("21","Toyota Hi Ace","9","Cars","White, Good for Family outing","2500.00","89681411.jpg","");
INSERT INTO menu VALUES("22","Chevrolet Tavera","9","Cars","White","1100.00","8.jpg","");
INSERT INTO menu VALUES("23","BMW_X6M","9","Cars","White","4500.00","BMW_X6M.jpg","Reserve");
INSERT INTO menu VALUES("24","xCar1","9","Cars","fnfnsfsnf,m","2000.00","Audi_A4.jpg","");
INSERT INTO menu VALUES("25","xCar2","9","Cars","hkhkh","3500.00","Audi_Q7.jpg","");
INSERT INTO menu VALUES("26","xCar3","9","Cars","ffkdfs","4500.00","Bendz_GLA.jpg","");
INSERT INTO menu VALUES("27","xCar5","9","Cars","fffs","2800.00","Bendz_Vito.jpg","");
INSERT INTO menu VALUES("28","xCar4","9","Cars","afafa","2800.00","bm_x6.jpg","");
INSERT INTO menu VALUES("29","xCar6","9","Cars","ddada","4800.00","BMW_3S.jpg","");
INSERT INTO menu VALUES("30","xCar7","9","Cars","jlj","3500.00","BMW_X6M.jpg","");
INSERT INTO menu VALUES("31","xCar8","9","Cars","fsfs","4300.00","car1.jpg","");
INSERT INTO menu VALUES("32","xCar9","9","Cars","jjh","4500.00","car3.jpg","");
INSERT INTO menu VALUES("33","xCar10","9","Cars","hjhkhkj","4200.00","Corolla.jpg","");
INSERT INTO menu VALUES("34","xCar11","9","Cars","ghfghg","2300.00","CX3.jpg","");
INSERT INTO menu VALUES("35","xCar12","9","Cars","jkhkjkj","2300.00","CX3.jpg","");
INSERT INTO menu VALUES("36","xCar13","9","Cars","mbmbm","1200.00","Duster.jpg","");
INSERT INTO menu VALUES("37","xCar14","9","Cars","fsffs","1200.00","Ford-E_150.jpg","");
INSERT INTO menu VALUES("38","xCar15","9","Cars","hgj","1400.00","Highlander.jpg","");
INSERT INTO menu VALUES("39","xCar16","9","Cars","hhkhjk","2600.00","Legend_45.jpg","");
INSERT INTO menu VALUES("40","xCar17","9","Cars","gffa","2700.00","Navara.jpg","");
INSERT INTO menu VALUES("41","xCar18","9","Cars","hjkhhjk","2800.00","Sportage.jpg","");
INSERT INTO menu VALUES("42","xCar19","9","Cars","kk","3400.00","Volvo_V40.jpg","");
INSERT INTO menu VALUES("43","xCar20","9","Cars","jj","2220.00","Volvo_XC60.jpg","");
INSERT INTO menu VALUES("44","xCar21","9","Cars","jjkl","1900.00","VW_Amarok.JPG","");
INSERT INTO menu VALUES("45","xCar23","9","Cars","jjljl","5000.00","VW_Carra.jpg","");
INSERT INTO menu VALUES("48","try00","9","Jeep","try00","100000.00","Lighthouse.jpg","");
INSERT INTO menu VALUES("49","1","9","Cargo Truck","2","3.00","Chrysanthemum.jpg","Available");





CREATE TABLE `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO message VALUES("1","test5","test5@gmail.com","Reklamo","COmments","2017-07-22 09:49:15");
INSERT INTO message VALUES("2","test14","test14@gmail.com","test14","coammrfalfael","2017-07-29 10:40:57");





CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

INSERT INTO reservation VALUES("75","2017-07-31","05:00:00","test1","test1","09098202040","test1@gmail.com","test 1 adress","Personal","Valenzuela","Black","0","Wedding","25000.00","20000.00","","2017-07-27","vVUZoz0H7X","5","1","5000.00","Cash");
INSERT INTO reservation VALUES("76","0000-00-00","00:00:00","1","1","12345678873","asd@gmail.com","1","","","","0","","0.00","0.00","","2017-07-29","k9j2UnXtFm","0","0","0.00","");
INSERT INTO reservation VALUES("77","2017-08-16","12:12:00","a1","a1","09090909090","a1@gmail.com","a1address","Personal","Makati","Black","0","Family Vacation","25000.00","5000.00","Approved","2017-07-29","uXo0DsZYLy","5","1","5000.00","Pera Padala");
INSERT INTO reservation VALUES("78","2017-07-29","12:12:00","a","a","09098202040","a@gmail.com","a","Personal","Valenzuela","2","0","Vacation","25000.00","0.00","Finished","2017-07-29","bL2SUI5oDi","5","1","5000.00","Pera Padala");
INSERT INTO reservation VALUES("79","0000-00-00","00:00:00","a","a","09098202040","a@gmail.com","a","","","","0","","0.00","0.00","","2017-07-29","dnpvGepdcL","0","0","0.00","");
INSERT INTO reservation VALUES("80","2017-08-01","12:12:00","testa1","testa1","09091234567","testa1@gmail.com","testa1 address","Personal","Makati","Black","0","Vacation","25000.00","5000.00","Approved","2017-07-29","O5FEKmKC2G","5","1","5000.00","Pera Padala");
INSERT INTO reservation VALUES("81","2017-08-02","13:21:00","testa2","testa2","09123456782","testa2@gmail.com","testa2 address","Uber","Manila","White","0","Livelihood","5600.00","5000.00","Cancelled","2017-07-29","dekJVizNHM","7","2","800.00","Bank to Bank");
INSERT INTO reservation VALUES("82","2017-08-03","12:12:00","testa3","testa3","09091234567","testa3@gmail.com","testa3 address","Cargo","Quezon City","anycolor","0","Lipat Bahay","4.00","0.00","Cancelled","2017-07-29","tviUKt6b0l","2","4","2.00","Cash");
INSERT INTO reservation VALUES("83","0000-00-00","00:00:00","a","a","09123456782","asd@gmail.com","a","","","","0","","0.00","0.00","","2017-07-29","CdeexhMHMl","0","0","0.00","");





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



