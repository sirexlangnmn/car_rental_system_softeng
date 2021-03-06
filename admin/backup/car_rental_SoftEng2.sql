

CREATE TABLE `announcement` (
  `announcement_id` int(11) NOT NULL AUTO_INCREMENT,
  `annouce_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `annouce_place` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `annouce_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `details` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`announcement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `client` (
  `client_id` int(15) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `middlename` varchar(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_what` varchar(500) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `event_where` varchar(100) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO event VALUES("1","SoftEng Project on Process","2017-09-30","10:39:00","Kahit saan, bahala");
INSERT INTO event VALUES("2","Testing","2017-07-13","12:59:00","Testing location");
INSERT INTO event VALUES("3","dad","0001-02-12","12:12:00","dada");





CREATE TABLE `member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_name` varchar(15) NOT NULL,
  `specialty` varchar(15) NOT NULL,
  `member_status` varchar(10) NOT NULL,
  `member_contact` varchar(30) NOT NULL,
  `member_address` varchar(100) NOT NULL,
  `member_pic` varchar(100) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

INSERT INTO member VALUES("22","Federex Potolin","FastAndFurious","active","09090909909","jan lang po v^_^v","rex1x1.PNG");
INSERT INTO member VALUES("23","Aaron Santos","Mechanic","Inactive","09090909909","sa tabi lang","santos.png");





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

INSERT INTO menu VALUES("18","Toyota Altis","9","Cars","White","1000.00","46996627.jpg","Available");
INSERT INTO menu VALUES("19","INNOVA","9","Cars","Black","1100.00","44220422.jpg","Available");
INSERT INTO menu VALUES("21","Toyota Hi Ace","0","Cars","White, Good for Family outing","2500.00","89681411.jpg","Reserve");
INSERT INTO menu VALUES("22","Chevrolet Tavera","0","Cars","White","1100.00","8.jpg","Available");
INSERT INTO menu VALUES("24","Foton Traveller Deluxe Blue","0","Cars","Malaki","2000.00","Audi_A4.jpg","Available");
INSERT INTO menu VALUES("25","Mitsubishi Montero","0","Cars","hkhkh","3500.00","Audi_Q7.jpg","Available");
INSERT INTO menu VALUES("26","Mitsubishi Montero","0","Cars","ffkdfs","4500.00","Bendz_GLA.jpg","Available");
INSERT INTO menu VALUES("27","Toyota Vios","0","Cars","fffs","2800.00","Bendz_Vito.jpg","Available");
INSERT INTO menu VALUES("28","Hyundai Accent","0","Cargo Truck","afafa","2800.00","bm_x6.jpg","Available");
INSERT INTO menu VALUES("29","Toyota Vios","0","Cars","ddada","4800.00","BMW_3S.jpg","Available");
INSERT INTO menu VALUES("30","Toyota Grandia","0","Cars","jlj","3500.00","BMW_X6M.jpg","Available");
INSERT INTO menu VALUES("31","Nissan NV350","0","Cars","fsfs","4300.00","car1.jpg","Available");
INSERT INTO menu VALUES("32","Toyota Altis","0","Cars","jjh","4500.00","car3.jpg","Available");
INSERT INTO menu VALUES("33","Foton Traveller White","0","Cars","hjhkhkj","4200.00","Corolla.jpg","Available");
INSERT INTO menu VALUES("34","Honda Civic","0","Cars","ghfghg","2300.00","CX3.jpg","Available");
INSERT INTO menu VALUES("35","Hyundai Accent","0","Cars","jkhkjkj","2300.00","CX3.jpg","Reserve");
INSERT INTO menu VALUES("36","Mitsubishi Montero","0","Cars","mbmbm","1200.00","Duster.jpg","Available");
INSERT INTO menu VALUES("37","nissanNV350","0","Cars","fsffs","1200.00","Ford-E_150.jpg","Available");
INSERT INTO menu VALUES("38","Toyota Altis","0","Cars","hgj","1400.00","Highlander.jpg","Available");
INSERT INTO menu VALUES("39","Mitsubishi Montero","0","Cars","hhkhjk","2600.00","Legend_45.jpg","Available");
INSERT INTO menu VALUES("40","Mitsubishi Montero","0","Cars","gffa","2700.00","Navara.jpg","Available");
INSERT INTO menu VALUES("41","Toyota Altis","0","Cars","hjkhhjk","2800.00","Sportage.jpg","Available");
INSERT INTO menu VALUES("42","Mitsubishi Montero","0","Cargo Truck","kk","3400.00","Volvo_V40.jpg","Available");
INSERT INTO menu VALUES("43","Foton Traveller Deluxe White","0","Cars","jj","2220.00","Volvo_XC60.jpg","Available");
INSERT INTO menu VALUES("44","Toyota Grandia","0","Cars","jjkl","1900.00","VW_Amarok.JPG","Available");
INSERT INTO menu VALUES("45","Toyota Grandia","0","Cars","jjljl","5000.00","VW_Carra.jpg","Available");





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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO payment VALUES("1","4500","89","2017-08-01");
INSERT INTO payment VALUES("2","40500","89","2017-08-01");
INSERT INTO payment VALUES("3","1800","88","2017-08-01");
INSERT INTO payment VALUES("4","500","107","2017-08-05");
INSERT INTO payment VALUES("5","5000","107","2017-08-05");
INSERT INTO payment VALUES("6","2500","103","2017-08-10");
INSERT INTO payment VALUES("7","20000","103","2017-08-16");





CREATE TABLE `r_details` (
  `r_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `r_noncombo_details` (
  `r_noncombo_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_non_id` int(11) NOT NULL,
  `menu` int(11) NOT NULL,
  PRIMARY KEY (`r_noncombo_details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `r_venue` varchar(100) NOT NULL,
  `member_id` int(11) NOT NULL,
  `payable` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `r_status` varchar(10) NOT NULL,
  `date_reserved` date NOT NULL,
  `r_code` varchar(10) NOT NULL,
  `pax` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `modeofpayment` varchar(50) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;

INSERT INTO reservation VALUES("87","2017-08-10","00:12:00","asd2","asd1","09123456782","asd@gmail.com","asd address","Personal","Laguna","Black","vacation","0","31500.00","31500.00","pending","2017-08-01","u97p0nyCb2","7","4500.00","Cash");
INSERT INTO reservation VALUES("88","2017-08-10","00:12:00","aa2","aa1","09091234567","aa@gmail.com","aa adress","Personal","Cavite","Black","vacation","0","18000.00","16200.00","Approved","2017-08-01","A4aiczKxW4","9","2000.00","Bank to Bank");
INSERT INTO reservation VALUES("89","2017-08-15","00:12:00","bb2","bb1","09123456782","bb@gmail.com","bb adrr","Personal","Laguna","Black","vacation","0","45000.00","0.00","Finished","2017-08-01","1A2aR5ussV","10","4500.00","Bank to Bank");
INSERT INTO reservation VALUES("90","2017-08-15","00:12:00","aa2","aa1","09091234567","aa@gmail.com","aa address","Personal","Laguna","Black","vacation","0","81000.00","81000.00","pending","2017-08-01","LWtAdNjBSm","18","4500.00","Bank to Bank");
INSERT INTO reservation VALUES("91","2017-08-16","01:11:00","ff2","ff1","09091234567","f@gmail.com","ff add","Personal","Valenzuela","Black","vacation","0","27500.00","27500.00","pending","2017-08-01","tthbUb8p6w","11","2500.00","Cash");
INSERT INTO reservation VALUES("92","2017-08-18","11:11:00","sss","ss","09123456782","ss@gmail.com","ssss","Personal","Manila","Black","vacationg","0","67200.00","67200.00","pending","2017-08-01","ragPV3eAVc","14","4800.00","Pera Padala");
INSERT INTO reservation VALUES("93","2017-08-17","00:01:00","w","w","09123456782","w@gmail.com","w add","Personal","Cavite","Black","vac","0","5500.00","5500.00","pending","2017-08-01","YvF38hL9Wp","5","1100.00","Pera Padala");
INSERT INTO reservation VALUES("94","2017-08-13","01:01:00","s","s","09123456782","s@gmail.com","s","Personal","Bulacan","Black","c","0","49500.00","49500.00","pending","2017-08-01","q2ubY1DZPg","11","4500.00","Pera Padala");
INSERT INTO reservation VALUES("95","2017-08-25","00:12:00","xx","xx","09123456782","xx@gmail.com","xx adres","Personal","Makati","Black","vaca","0","6000.00","6000.00","Approved","2017-08-01","eu4BDY6kHU","3","2000.00","Bank to Bank");
INSERT INTO reservation VALUES("96","2017-08-29","00:12:00","ss11","ss22","09091234567","ss@gmail.com","ss add","Personal","Makati","Black","vac","0","9000.00","9000.00","Cancelled","2017-08-01","","2","4500.00","Pera Padala");
INSERT INTO reservation VALUES("97","2017-08-23","02:12:00","last","last","09123456782","last@gamil.com","last add","Personal","Valenzuela","Black","vac","0","33600.00","33600.00","pending","2017-08-01","vGxmtzRVKa","12","2800.00","Bank to Bank");
INSERT INTO reservation VALUES("98","0000-00-00","00:00:00","sa","sa","09091234567","asd@gmail.com","sa","","","","","0","0.00","0.00","","2017-08-01","eAoxILYb6C","0","0.00","");
INSERT INTO reservation VALUES("99","2017-08-17","00:12:00","kakaka","kaka","09091234567","kaka@gmail.com","kaka addre","Rent with Driver","Manila","Black","vacation","0","0.00","0.00","","2017-08-01","QLxDWtGzB5","3","0.00","");
INSERT INTO reservation VALUES("100","2017-08-24","00:12:00","a","a","09091234567","asd@gmail.com","a","Personal","Quezon City","Black","a","0","22400.00","22400.00","","2017-08-01","sjXpWkaw2v","8","2800.00","");
INSERT INTO reservation VALUES("101","2017-08-11","00:12:00","a","a","09123456782","asd@gmail.com","a","Rent with Driver","Quezon City","Black","vac","0","0.00","0.00","","2017-08-01","G6LBcSsOMU","5","0.00","");
INSERT INTO reservation VALUES("102","2017-08-23","00:12:00","a","a","09123456782","asd@gmail.com","a","Self Driven","Quezon City","Black","jkjk","0","0.00","0.00","","2017-08-01","9HDapH8eo7","3","0.00","");
INSERT INTO reservation VALUES("103","2017-08-22","00:12:00","alkdada","dlakd","09123456782","asd@gmail.com","aldkadlak","Rent with Driver","Quezon City","Black","kljfkslj","0","22500.00","0.00","Finished","2017-08-01","7wGeDKOq10","5","4500.00","Bank to Bank");
INSERT INTO reservation VALUES("104","2017-08-17","00:12:00","pogi","rex","09098202040","rex@gmail.com","jan lang","Self Driven","Bulacan","Black","pasyal","0","20000.00","20000.00","pending","2017-08-01","mYPOnCc9Jp","10","2000.00","Bank to Bank");
INSERT INTO reservation VALUES("105","2017-08-31","00:12:00","Clarin","Sean ","9998877649","alangmagawa@gmail.com","Kingspoint Bagbag Novaliches Quezon City","Rent with Driver","Quezon City","blue","vacation","0","13800.00","13800.00","pending","2017-08-02","kMK6nPpVqx","6","2300.00","Cash");
INSERT INTO reservation VALUES("106","2017-08-07","00:11:00","potolin","rex","09091234567","asd@gmail.com","san bartolome","Self Driven","Laguna","Black","vacation","0","5000.00","5000.00","pending","2017-08-03","T2SNwHSVig","5","1000.00","Bank to Bank");
INSERT INTO reservation VALUES("107","2017-08-16","00:12:00","potolin","rex","09123456782","asd@gmail.com","address","Self Driven","Manila","Black","vacation","0","5500.00","0.00","Finished","2017-08-05","aezvRrtdfs","5","1100.00","Pera Padala");
INSERT INTO reservation VALUES("108","2017-08-19","00:12:00","a","a","09090909090","a@gmail.com","a","Self Driven","Quezon City","Black","Personal Use","0","22500.00","22500.00","pending","2017-08-10","pBh5wHS70u","5","4500.00","Cash");
INSERT INTO reservation VALUES("109","2017-08-24","00:12:00","b","b","12090909090","b@gmail.com","dadaa","Self Driven","Cavite","Red","Business Purpose","0","126000.00","126000.00","pending","2017-08-10","VUH4K5CitE","30","4200.00","Bank to Bank");
INSERT INTO reservation VALUES("110","2017-08-16","01:33:00","maintenance","maintenance","09989898989","maintenance@gmail.com","maintenancedsadads","Rent with Driver","Outside Metro Manila","Red","Lipat Bahay","0","36000.00","36000.00","pending","2017-08-10","NtY2oGLyi3","30","1200.00","Pera Padala");
INSERT INTO reservation VALUES("111","2017-08-24","00:12:00","test14","test14","09090990900","test14@gmail.com","test14 address","Rent with Driver","Outside Metro Manila","Black","Personal Use","0","21000.00","21000.00","pending","2017-08-14","q4WmbprEHr","5","4200.00","Pera Padala");
INSERT INTO reservation VALUES("112","2017-08-24","02:12:00","t15","t15","09090909909","t15@gmail.com","t15add","Self Driven","Outside Metro Manila","Black","Personal Use","0","35000.00","35000.00","pending","2017-08-15","2Qfo74dLPL","10","3500.00","Bank to Bank");
INSERT INTO reservation VALUES("113","2017-08-23","15:33:00","adad","dada","09090909909","dakdjad@gmail.com","ddadad","Self Driven","Batangas","Yellow","Personal Use","0","42000.00","42000.00","pending","2017-08-17","21lelD9ude","10","4200.00","");
INSERT INTO reservation VALUES("114","2017-08-21","12:59:00","vals","ange","9124683944","vange0521@gmail.com","quezon city","Self Driven","Valenzuela","Black","Travel Vacation","0","28000.00","28000.00","pending","2017-08-17","ZdPponD7UR","10","2800.00","Pera Padala");
INSERT INTO reservation VALUES("115","2017-08-24","00:12:00","adada","daddada","09090909909","asd@gmail.com","afsfsfjsj","Self Driven","Cavite","Orange","Travel Vacation","0","2400.00","2400.00","","2017-08-18","xtxKfNhlGs","2","1200.00","");
INSERT INTO reservation VALUES("116","0000-00-00","00:00:00","sada","adad","09","as@gmail.com","adad","","","","","0","0.00","0.00","","2017-08-18","j4nddYJLv6","0","0.00","");
INSERT INTO reservation VALUES("117","2017-08-31","02:12:00","dadadass","adaddada","09090909909","asdsdada@gmail.com","jdkajdkajajlaj","Rent with Driver","Laguna","Blue","Travel Vacation","0","14400.00","14400.00","","2017-08-19","uB8iq6wyVq","12","1200.00","");
INSERT INTO reservation VALUES("118","0000-00-00","00:00:00","bago naadad","bago na ","09090909909","hahaahha@gmail.com","adada","","","","","0","0.00","0.00","","2017-08-21","gSKpAyY475","0","0.00","");
INSERT INTO reservation VALUES("119","2017-08-30","02:12:00","dadada","dada","09090909909","s@gmail.com","dadadadsdsa","","Outside Metro Manila","Yellow","Business Purpose","0","12000.00","12000.00","pending","2017-08-21","4gm5NuMvUl","10","1200.00","Pera Padala");
INSERT INTO reservation VALUES("120","2017-08-31","02:12:00","pogi","rex","09090909909","rex@gmail.com","dadadad","Self Driven","Outside Metro Manila","Black","Government Purpose","0","11000.00","11000.00","pending","2017-08-21","eb7uqSJJcG","10","1100.00","Bank to Bank");
INSERT INTO reservation VALUES("121","2017-08-31","04:44:00","offline","offline","09090909909","off@gmail.com","dadsa","Self Driven","Manila","Black","Travel Vacation","0","11000.00","11000.00","pending","2017-08-23","RZ9MSYE6yg","10","1100.00","Bank to Bank");
INSERT INTO reservation VALUES("122","0000-00-00","00:00:00","dada","dad","09090909909","adas@gmail.com","dad","","","","","0","0.00","0.00","","2017-08-24","QMrrhXYyg8","0","0.00","");
INSERT INTO reservation VALUES("123","0000-00-00","00:00:00","dadas","dasda","09090909909","ssa@gmail.com","dad","","","","","0","0.00","0.00","","2017-08-24","ro5kCxWl6t","0","0.00","");
INSERT INTO reservation VALUES("124","0000-00-00","00:00:00","dadas","dasda","09090909909","ssa@g","dad","","","","","0","0.00","0.00","","2017-08-24","kkpfXT24gA","0","0.00","");
INSERT INTO reservation VALUES("125","2017-08-30","06:06:00","oltest","oltest","09090909909","oltest@gmail.com","oltest add","Self Driven","Batangas","Blue","Government Purpose","0","25000.00","25000.00","pending","2017-08-24","4rSP47OOt9","10","2500.00","Bank to Bank");
INSERT INTO reservation VALUES("126","2017-08-30","02:12:00","off2l","off2f","09090909909","off2@gmail.com","off2 add","Self Driven","Laguna","Grey","Government Purpose","0","35000.00","35000.00","pending","2017-08-24","oUxVACMisi","10","3500.00","Pera Padala");
INSERT INTO reservation VALUES("127","2017-09-06","11:11:00","last","last","09090909909","last@gmail.com","last","Self Driven","Outside Metro Manila","Red","Travel Vacation","0","28000.00","28000.00","pending","2017-08-29","HFC0KwJTzq","10","2800.00","Pera Padala");
INSERT INTO reservation VALUES("128","2017-09-15","11:11:00","qq","qq","09090909909","qq@gmail.com","qq","Self Driven","Outside Metro Manila","Grey","Travel Vacation","0","11000.00","11000.00","pending","2017-08-30","a9jLR3tz2C","10","1100.00","Cash");
INSERT INTO reservation VALUES("129","2017-09-19","14:11:00","qq","qq","09090909909","qq@gmail.com","qq","Self Driven","Batangas","Black","Business Purpose","0","28000.00","28000.00","pending","2017-08-30","hm5mb8QnsS","10","2800.00","Bank to Bank");
INSERT INTO reservation VALUES("130","2017-09-15","11:11:00","qs","qs","09090909909","qs@gmail.com","qs","Self Driven","Bulacan","Blue","Business Purpose","0","20000.00","20000.00","pending","2017-08-30","OOCVhs8dhU","10","2000.00","Bank to Bank");
INSERT INTO reservation VALUES("131","2017-09-12","14:11:00","juanr","junar","09090909909","junar@gmail.com","junar","Self Driven","Batangas","Red","Travel Vacation","0","43000.00","43000.00","pending","2017-08-30","5eq8A35NV3","10","4300.00","Pera Padala");
INSERT INTO reservation VALUES("132","0000-00-00","00:00:00","dada","ada","09090909909","adas@gmail.com","ddasda","","","","","0","0.00","0.00","","2017-08-30","snZCTZ2BkW","0","0.00","");
INSERT INTO reservation VALUES("133","2017-09-15","11:11:00","testing","testing","09090909909","testing@gmail.com","testing","Self Driven","Cavite","Red","Occasion","0","12000.00","12000.00","pending","2017-08-31","v4Yij92zk9","10","1200.00","Pera Padala");





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



