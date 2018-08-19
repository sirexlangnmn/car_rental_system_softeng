

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
  `member_name` varchar(50) NOT NULL,
  `specialty` varchar(15) NOT NULL,
  `member_status` varchar(10) NOT NULL,
  `member_contact` varchar(30) NOT NULL,
  `member_address` varchar(100) NOT NULL,
  `resume` varchar(50) NOT NULL,
  `id_1` varchar(50) NOT NULL,
  `id_2` varchar(50) NOT NULL,
  `member_pic` varchar(100) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

INSERT INTO member VALUES("22","Federex Potolin","FastAndFurious","active","09090909909","SAN BARTOLOME","","","","rex1x1.PNG");
INSERT INTO member VALUES("23","Aaron Santos","Out of Town","Inactive","09092349011","BAGBAG","","","","santos.png");
INSERT INTO member VALUES("24","John Carl Peralta","Out of Town","active","09090909090","Nagkaisang Nayon","","","","ACUYONG.png");
INSERT INTO member VALUES("25","FREDERICK DIMAYUGA","Out of Town","active","09090909091","BAHAY TORO","","","","rex1x1.PNG");
INSERT INTO member VALUES("26","Jober Bautista","Vehicle Driver","active","09090909092","Bagbag","","","","BELMONTE.jpg");
INSERT INTO member VALUES("27","Jomai Tegio","Vehicle Driver","active","09090909093","Gulod","","","","CAUGIUIRAN.jpg");
INSERT INTO member VALUES("28","Yuji Santos","Vehicle Driver","active","09090909094","Foresthill","","","","CANANEA.jpg");
INSERT INTO member VALUES("29","Resty Decalao","Vehicle Driver","active","09090909095","Congressional","","","","BRAZA.jpg");
INSERT INTO member VALUES("30","Sean Clarin","Out of Town","active","09090909096","Paramount","","","","CUALES.jpg");
INSERT INTO member VALUES("31","Junar Cuales","Vehicle Driver","active","09090909097","Sta. Lucia","","","","GANTE.jpg");
INSERT INTO member VALUES("32","Albeth Camay","Vehicle Driver","active","09090909098","Fairview","","","","rex1x1.PNG");
INSERT INTO member VALUES("33","Louse Alonzo","Vehicle Driver","active","09090909099","North Fairview","","","","LORETO.jpg");
INSERT INTO member VALUES("34","Joshua Valencia","Vehicle Driver","active","09090909010","SAN BARTOLOME","","","","NESTAL.jpg");
INSERT INTO member VALUES("35","Johnpaul Villania","Vehicle Driver","active","09090909011","Commonwealth","","","","Pedrosa.jpg");
INSERT INTO member VALUES("36","Noah Jeremiah Tito","Vehicle Driver","active","09090909013","Payatas","","","","PERALTA.jpg");
INSERT INTO member VALUES("37","Ronnel Dela Cruz","Vehicle Driver","active","09090909014","Holy Spirit","","","","Shander.png");
INSERT INTO member VALUES("38","Arthur Arellaga","Vehicle Driver","active","09090909015","Commonwealth","","","","SANTOS.png");
INSERT INTO member VALUES("39","Jayvee Hernandez","Vehicle Driver","active","09090909016","Tandang Sora","","","","BELMONTE.jpg");
INSERT INTO member VALUES("40","Marwinjave Torreon","Vehicle Driver","active","09090909017","Kaybiga","","","","BRAZA.jpg");
INSERT INTO member VALUES("41","Paul John Judan","Vehicle Driver","active","09092349018","Baesa","","","","CAUGIUIRAN.jpg");
INSERT INTO member VALUES("42","Aeroll Pagba","Vehicle Driver","active","09090909020","Pingkian","","","","8.jpg");
INSERT INTO member VALUES("43","Phillip Orencia","Vehicle Driver","active","09092349022","Kapitan","","","","AMUYOT.jpg");
INSERT INTO member VALUES("44","Gerald Equiz","Vehicle Driver","active","09090909023","Kingspoint","","","","CUALES.jpg");
INSERT INTO member VALUES("45","Jeric Braza","Vehicle Driver","active","09090909024","Holy Cross","","","","Shander.png");
INSERT INTO member VALUES("46","Kevin Cocson","Vehicle Driver","active","09090909025","Malinta Exit","","","","Monas.png");
INSERT INTO member VALUES("47","Arjell Villodres","Vehicle Driver","active","09090909036","Valenzuela","","","","SANTOS.png");
INSERT INTO member VALUES("48","James Cananea","Vehicle Driver","active","09090909033","San Mateo","","","","Pedrosa.jpg");
INSERT INTO member VALUES("49","Randy Santiago","Vehicle Driver","active","09090909088","Caloocan","","","","NESTAL.jpg");
INSERT INTO member VALUES("50","Ryan Madrigal","Vehicle Driver","active","09090909044","Lagro","","","","Relente.jpg");
INSERT INTO member VALUES("51","Angelito Benin","Vehicle Driver","active","09090909456","Greenfield","","","","rex1x1.PNG");
INSERT INTO member VALUES("52","Ako lang nmn","driver","Inactive","09090909909","kaljakldja","","","","8.jpg");
INSERT INTO member VALUES("53","Jose Ada Maria","Mechanic","Active","09090909909","Pasay","","","","8.jpg");
INSERT INTO member VALUES("54","Tata Oro","Mechanic","active","09090909909","Jan lang po ^_^","","","","ron.jpg");
INSERT INTO member VALUES("55","Ako","Mechanic","active","09092349011","Pasay","","","","8.jpg");





CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) NOT NULL,
  `body_no` varchar(10) NOT NULL,
  `subcat_name` varchar(30) NOT NULL,
  `menu_desc` varchar(100) NOT NULL,
  `plate_no` varchar(10) NOT NULL,
  `manufacturer` varchar(15) NOT NULL,
  `car_model` varchar(15) NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `menu_price` decimal(10,2) NOT NULL,
  `menu_pic` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `remarks` varchar(35) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

INSERT INTO menu VALUES("18","Toyota Altis","018","Cars","The appealing new look of the Altis carries on the Corolla heritage into the future and advances you","YUN 921","TOYOTA","ALTIS","Kevin Cocson","1000.00","46996627.jpg","Available","");
INSERT INTO menu VALUES("19","INNOVA","008","Cars","The 2nd generation Innova�s front fascia is more aggressive with its LED projectors combined with ","TYU 960","TOYOTA","INNOVA","Arthur Arellaga","1100.00","44220422.jpg","Available","Schedule Reservation Now");
INSERT INTO menu VALUES("21","Toyota Hi Ace","022","Van","White, Good for Family outing","CON 9028","TOYOTA","HI ACE","Paul John Judan","2500.00","89681411.jpg","Reserve","Aug 23, 2017  to  Sept 03, 2017");
INSERT INTO menu VALUES("22","Chevrolet Tavera","001","SUV","White, 6 Passenger Capacity, Automatic","AAA111","MITSUBISHI","MONTERO","Aeroll Pagba","1100.00","8.jpg","Available","Schedule Reservation Now");
INSERT INTO menu VALUES("24","Foton Traveller Deluxe Blue","002","Van","While the bubble roof grants it bus-like interior space, it does give it a rather odd appearance.","ANA 125","FOTON","DELUXE","FREDERICK DIMAYUGA","2000.00","Audi_A4.jpg","Reserve","Aug 23, 2017  to  Sept 03, 2017");
INSERT INTO menu VALUES("25","Mitsubishi Montero","014","Cars","Toyota Motor Philippines launched the all-new Innova featuring a redesigned exterior that visibly se","TIM 102","MITSUBISHI","MONTERO","John Carl Peralta","3500.00","Audi_Q7.jpg","Available","");
INSERT INTO menu VALUES("26","Mitsubishi Montero","010","SUV","Inside the all-new Montero Sport beats a powerful heart in the form of the first-of-its-kind Euro-4 ","WYE 562","MITSUBISHI","MONTERO","James Cananea","4500.00","Bendz_GLA.jpg","Available","Schedule Reservation Now");
INSERT INTO menu VALUES("27","Toyota Vios","024","Cars","Your safety is Toyotas utmost priority. This is why the Vios is equipped with airbags for both drive","HSU 4438","TOYOTA","VIOS","Randy Santiago","2800.00","Bendz_Vito.jpg","Available","");
INSERT INTO menu VALUES("28","Hyundai Accent","007","Sedan","One of the most popular choices for most budget-conscious and/or beginning drivers, as well as those","POT 890","HYUNDAI","ACCENT","Arjell Villodres","2800.00","bm_x6.jpg","Available","Schedule Reservation Now");
INSERT INTO menu VALUES("29","Toyota Vios","023","Cars","Comfortable seats cradle all passengers. Plus, a MirrorLink System makes sure you enjoy your road tr","WQT 8921","TOYOTA","VIOS","Randy Santiago","4800.00","BMW_3S.jpg","Available","");
INSERT INTO menu VALUES("30","Toyota Grandia","019","Van","The Toyota Hiace remains to be one of the sought after vans in the Philippines. A clean exterior wit","REN 2967","TOYOTA","GRANDIA","Louse Alonzo","3500.00","BMW_X6M.jpg","Available","");
INSERT INTO menu VALUES("31","Nissan NV350","015","Van","Sturdy construction with clean, modern looks creates the perfect combination for your everyday needs","MOV 291","NISSAN","VAN","Johnpaul Villania","4300.00","car1.jpg","Available","");
INSERT INTO menu VALUES("33","Foton Traveller White","004","Cars","The Foton which is described as versatile is suitable for use for various functions; travelling with","ADE 567","FOTON","TRAVELLER","Aeroll Pagba","4200.00","Corolla.jpg","Available","Schedule Reservation Now");
INSERT INTO menu VALUES("34","Honda Civic","005","Cars","its character lines are sharp and well-defined. This aerodynamic styling is further improved by its ","LTO 964","HONDA","CIVIC","Albeth Camay","2300.00","CX3.jpg","Available","Schedule Reservation Now");
INSERT INTO menu VALUES("35","Hyundai Accent","006","Cars","One of the most popular choices for most budget-conscious and/or beginning drivers, as well as those","ERA 341","HYUNDAI","ACCENT","Angelito Benin","2300.00","CX3.jpg","Available","Schedule Reservation Now");
INSERT INTO menu VALUES("36","Mitsubishi Montero","013","SUV","Toyota Motor Philippines launched the all-new Innova featuring a redesigned exterior that visibly se","NUM 222","MITSUBISHI","MONTERO","Jober Bautista","1200.00","Duster.jpg","Available","");
INSERT INTO menu VALUES("37","NissanNV350","0016","Van","Sturdy construction with clean, modern looks creates the perfect combination for your everyday needs","VAY 1721","NISSAN","VAN","Joshua Valencia","1200.00","Ford-E_150.jpg","Available","");
INSERT INTO menu VALUES("38","Toyota Altis","017","Cars","A luxurious drive awaits inside the new Altis. Its attractive blue lighting and chrome accents compl","ART 1290","TOYOTA","ALTIS","Junar Cuales","1400.00","Highlander.jpg","Available","");
INSERT INTO menu VALUES("39","Mitsubishi Montero","012","SUV","Toyota Motor Philippines launched the all-new Innova featuring a redesigned exterior that visibly se","RYE","MITSUBISHI","MONTERO","Jeric Braza","2600.00","Legend_45.jpg","Available","");
INSERT INTO menu VALUES("40","Mitsubishi Montero","011","SUV","gffaToyota Motor Philippines launched the all-new Innova featuring a redesigned exterior that visibl","YUR 782","MITSUBISHI","MONTERO","Jayvee Hernandez","2700.00","Navara.jpg","Available","Schedule Reservation Now");
INSERT INTO menu VALUES("42","Mitsubishi Montero","009","SUV","Inside the all-new Montero Sport beats a powerful heart in the form of the first-of-its-kind Euro-4 ","PRO 478","MITSUBISHI","MONTERO","Gerald Equiz","3400.00","Volvo_V40.jpg","Available","Schedule Reservation Now");
INSERT INTO menu VALUES("43","Foton Traveller Deluxe White","003","Cars","Automatic, 6 pax, Diesel, 2 Luggage ","NUU 125","Kawasaki","A5","Federex Potolin","2220.00","Volvo_XC60.jpg","Available","Schedule Reservation Now");
INSERT INTO menu VALUES("44","Toyota Grandia","020","Van","The Hiace comes standard with airbags, ABS, vehicle immobilizer, and security alarm.","WIT 7821","TOYOTA","GRANDIA","Marwinjave Torreon","1900.00","VW_Amarok.JPG","Available","");
INSERT INTO menu VALUES("45","Toyota Grandia","021","Van","The Super Grandia model can take up to 11 while 15-people can fit inside the Commuter variant.","SOT 3627","TOYOTA","GRANDIA","Noah Jeremiah Tito","5000.00","VW_Carra.jpg","Available","");





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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO payment VALUES("1","4500","89","2017-08-01");
INSERT INTO payment VALUES("2","40500","89","2017-08-01");
INSERT INTO payment VALUES("3","1800","88","2017-08-01");
INSERT INTO payment VALUES("4","500","107","2017-08-05");
INSERT INTO payment VALUES("5","5000","107","2017-08-05");
INSERT INTO payment VALUES("6","2500","103","2017-08-10");
INSERT INTO payment VALUES("7","20000","103","2017-08-16");
INSERT INTO payment VALUES("8","42000","113","2017-09-01");
INSERT INTO payment VALUES("9","20000","132","2017-09-01");
INSERT INTO payment VALUES("10","28000","135","2017-09-01");





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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;

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
INSERT INTO reservation VALUES("113","2017-08-23","15:33:00","adad","dada","09090909909","dakdjad@gmail.com","ddadad","Self Driven","Batangas","Yellow","Personal Use","0","42000.00","0.00","Approved","2017-08-17","21lelD9ude","10","4200.00","");
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
INSERT INTO reservation VALUES("127","2017-09-09","11:11:00","trial","trial","09090909909","trial@gmail.com","trial","Self Driven","Outside Metro Manila","Red","Business Purpose","0","23000.00","23000.00","pending","2017-08-29","uAJpAarIdm","10","2300.00","Bank to Bank");
INSERT INTO reservation VALUES("128","2017-09-20","11:11:00","dada","da","90909909909","das@gmail.com","ada","Self Driven","Quezon City","Red","Travel Vacation","0","35000.00","35000.00","pending","2017-08-30","PtqABwvgTp","10","3500.00","Bank to Bank");
INSERT INTO reservation VALUES("129","2017-09-14","11:11:00","qq","qq","09090909909","qq@gmail.com","qq","Self Driven","Outside Metro Manila","Red","Business Purpose","0","20000.00","20000.00","pending","2017-08-30","V2RZ3bwQ2n","10","2000.00","Pera Padala");
INSERT INTO reservation VALUES("130","2017-09-15","11:11:00","adas","ad","09090909909","adas@gmail.com","ada","Self Driven","Outside Metro Manila","Black","Business Purpose","0","35000.00","35000.00","pending","2017-08-30","VDvOiZYGDC","10","3500.00","Bank to Bank");
INSERT INTO reservation VALUES("131","2017-09-21","11:11:00","aug30","aug30","09090909909","aug30@gmail.com","aug30","Self Driven","Valenzuela","Black","Government Purpose","0","28000.00","28000.00","pending","2017-08-30","UOvTZpCbj8","10","2800.00","Cash");
INSERT INTO reservation VALUES("132","2017-09-20","00:21:00","adal","adaf","09909090909","adas@gmail.com","aadad","Self Driven","Batangas","Red","Lipat Bahay","0","28000.00","8000.00","Approved","2017-09-01","EWB0e6AI61","10","2800.00","Cash");
INSERT INTO reservation VALUES("133","2017-09-19","11:11:00","qq","qq","09090909909","qq@gmail.com","qq","Self Driven","Batangas","White","Travel Vacation","0","35000.00","35000.00","pending","2017-09-01","iTV0Q5v5Tx","10","3500.00","Bank to Bank");
INSERT INTO reservation VALUES("134","2017-09-14","11:11:00","dd","dd","09090909909","dd@gmail.com","dd","Self Driven","Laguna","Red","Business Purpose","0","45000.00","45000.00","Cancelled","2017-09-01","1pg8AyLsNr","10","4500.00","Bank to Bank");
INSERT INTO reservation VALUES("135","2017-09-22","11:11:00","aa","aa","09090909909","aa@gmail.com","aa","Self Driven","Batangas","White","Government Purpose","0","28000.00","0.00","Approved","2017-09-01","V5GxreUZid","10","2800.00","Pera Padala");





CREATE TABLE `subcategory` (
  `subcat_id` int(11) NOT NULL AUTO_INCREMENT,
  `subcat_name` varchar(30) NOT NULL,
  PRIMARY KEY (`subcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO subcategory VALUES("1","SUV");
INSERT INTO subcategory VALUES("10","Sedan");
INSERT INTO subcategory VALUES("11","Van");





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



