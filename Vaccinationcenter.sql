create database Vaccinationcenter;
use Vaccinationcenter;
drop database Vaccinationcenter;

create table Street_Address(
Street varchar(60) not null,
Area varchar(60) not null,
District varchar(60) not null,
primary key(Street));

insert into Street_Address (Street,Area,District) values
('St3456','Kfarmatta','Aley'),
('St2322','Hamra','Beirut'),
('St9809','Baabda','Baabda'),
('St5767','Achrafieh','Beirut'),
('St3890','Choueifat','Aley'),
('St5411','Hamzieh','Beirut'),
('St0092','Aley','Aley'),
('St1111','Bliss','Beirut'),
('St6363','Byblos','Byblos'),
('St4521', 'QaraounLake' , 'Bekaa'),
('St3721', 'AinElRemeneh', 'Beirut'),
('St2320', 'MarMikhael', 'Beirut'),
('St5431', 'Spears',' Beirut'),
('St1256', 'BcharaElKhoury', 'Beirut'),
('St6801', 'Barbeer', 'Beirut'),
('St2091', 'JibJennine', 'Bekaa'),
('St2709', 'Fanar', 'MountLebanon'),
('St8521','Saint-Tharese','Baabda'),
('St7140','Gemayze','Beirut'),
('St4078','Ebba','Nabatieh'),
('St8495','Nabi Othamn','Zahle'),
('St5289','Khalde','Aley'),
('St2105','Verdun','Beirut'),
('St3266','Koraytem','Beirut'),
('St4125','Arez','Bsharri'),
('St2837','Faraya','Keserwan'),
('St8713','Jnah','Beirut');
 
 select * from Street_Address;
 
create table Person(
ID int not null ,
Gender varchar(10) not null,
Date_of_birth date not null,
First_name varchar(15) not null,
Middle_name varchar(15) not null,
Last_name varchar(15) not null,
Street varchar(15) not null,
primary key(ID),
foreign key(Street) references Street_Address(Street),
check(year(Date_of_birth)<=2005));

insert into Person(ID,Gender,Date_of_birth,First_name,Middle_name,Last_name,Street) values
(0102,'Male','2002-01-21','Anwar','Safwan','Khaddaj','St3456'),
(8596,'Female','2001-09-15','Reine','John','Mosleh','St2322'),
(5554,'Female','1989-04-05','Farah','Safwan','Khaddaj','St3456'),
(1236,'Male','1987-03-23','George','Peter','John','St9809'),
(5649,'Female','1950-04-29','Dalia','Antonio','Daou','St5767'),
(8523,'Female','1960-11-18','Nada','Jason','Rahbani','St3890'),
(6974,'Female','1945-01-29','Rena','Walid','Khoury','St5411'),
(2365,'Female','1956-12-23','Yasma','Jad','Younes','St0092'),
(8888,'Male','1944-08-05','Hadi','Mustafa','Hanna','St1111'),
(1235,'Male','1990-09-03','Charbel','Bahaa','Idriss','St6363'),
(1002, 'Female','2002-02-02','Marian','Joseph', 'Abou Fares', 'St4521'),
(0904, 'Female','1969-11-12', 'Norma', 'Atef', 'Mitri' , 'St4521' ),
(1009, 'Male', '1995-12-01', 'Jad', 'Naji','Ghannam', 'St3721' ),
(2093, 'Female', '2000-02-08', 'Rita', 'Joseph', 'Abou Fares', 'St4521'),
(2096, 'Female','1994-01-01', 'Nour', 'Joseph', 'Abou Fares', 'St4521'),
(0801, 'Female', '1955-05-04', 'Sara', 'Kasem','Yassine' , 'St2091'),
(1003, 'Male', '2000-08-01', 'Ahmad', 'Fouad', 'Kaddoura', 'St2709'),
(3082, 'Male','1994-07-09','Jimmy', 'Samer', 'Kenaan', 'St6801'),
(2001, 'Male', '1998-09-11', 'Dany', 'Jawad', 'dabaja', 'St1256'),
(0710, 'Male',  '1961-01-01','Joseph','Jamil','Abou Fares', 'St4521'),
(6789,'Female','2001-08-16','Carmen','Akram','Kaouk','St8521'),
(7985,'Female','1975-04-01','Jihan','Mohammad','Nazha','St8495'),
(1290,'Male','2001-08-16','Karim','Akram','Kaouk','St4078'),
(4536,'Male','1966-09-19','Akram','Mohammad','Kaouk','St7140'),
(8175,'Female','2001-12-01','Ludmila','Haidar','Semaan','St5289'),
(7896,'Female','1970-07-05','Maha','Mohammad','Nazha','St2105'),
(1523,'Male','1990-10-23','Loay','Yaacoub','Khodor','St8713'),
(4739,'Female','1985-06-15','Aya','Ali','Kaouk','St3266'),
(2066,'Male','1950-01-02','Hasan','Sameer','Tarhini','St4125'),
(3465,'Female','1982-04-18','Suzy','Jamal','Ghraizi','St2837');

#Employee
insert into Person(ID,Gender,Date_of_birth,First_name,Middle_name,Last_name,Street) values
(8901, 'Female', '1988-02-06', 'Soaad', 'Mohamad', 'Al Ahmad', 'St4521'),
(8865, 'Male', '1980-09-08', 'Ali', 'Ahmad', 'Safadi', 'St1256'),
(7865, 'Male', '1987-10-06', 'Johny', 'Kamal', 'Serhal', 'St1256'),
(9071, 'Male', '1990-12-12','Joya', 'George', 'Saba', 'St4521'),
(2222, 'Male', '1989-11-12', 'Amin', 'Karim', 'Mansour', 'St5431'),
(3211, 'Male', '1990-04-12', 'Sam', 'Hadi', 'Raad', 'St2709'),
(2175, 'Female', '1985-03-02', 'Margo', 'Anis' , 'Khoury', 'St2709'),
(8751, 'Male', '1986-11-09', 'Elie','Dani', 'Jedaan', 'St4521'),
(2015, 'Male', '1987-09-06', 'Ali', 'Hasan ', 'Ayoub', 'St4521'),
(3699, 'Female', '1989-05-23', 'Bouthaina', 'Atef', 'Hatem', 'St2709'),
(5871, 'Female', '1995-06-27', 'Sarah', 'Gabi', 'Chalhoub', 'St3721'),
(2210, 'Female', '1996-10-09', 'Diana', 'Charbel' , 'Abou Arbid', 'St3721'),
(7105, 'Female ', '1996-11-27', 'Sandy', 'Bchara', 'Kenaan', 'St5431'),
(8885, 'Male', '1994-08-11', 'Jamil', 'Fadi', 'Khorfan', 'St2709'),
(6635, 'Male','1978-12-03', 'George', 'Kamal', 'Baroud', 'St5431'),
(5512, 'Female', '1976-11-11', 'Jinan', 'Loay', 'Jadallah', 'St1256'),
(9846, 'Female', '1965-11-09', 'Dana', 'Ali', 'Sobh', 'St1256'),
(8745, 'Male', '1982-07-09', 'Jihad', 'Tarek', 'Gharib', 'St2709'),
(2943, 'Male', '1980-09-09', 'Akram', 'Kiyan', 'Selfani', 'St3456'),
(9865, 'Female', '1987-10-09','Norma', 'Milad', 'Selfani', 'St3456'),
(2367,'Female', '1990-11-04','Jinan', 'Mohamad', 'Awad', 'St5431'),
(5484, 'Female','1993-08-08-','Rasha', 'Nayef', 'Omais', 'St2322'),
(2009,'Female','1976-10-25', 'Jana', 'Ahmad','Itawi', 'St2322'),
(2212,'Female', '1977-12-25', 'Randa', 'Joseph', 'Sarrouh', 'St3890'),
(9686,'Male', '1972-12-15', 'Ahmad', 'Ralph', 'Houmani', 'St3890'),
(8856,'Male', '1982-12-01','Majd', 'Ali', 'Saleh', 'St1111');

select * from Person;

create table Person_Phone_number(
ID int not null,
Phone_number int ,
primary key(ID,Phone_number),
foreign key(ID) references Person(ID));

insert into Person_Phone_number(ID,Phone_number) values
(0102,70528025),
(0102,70563266),
(0102,71895698),
(8596,76963523),
(5554,76456125),
(1236,71785454),
(5649,71444252),
(5649,76666366),
(8523,70785422),
(6974,71125466),
(2365,76986534),
(8888,78456982),
(1235,70125486),
(1002, 78817445),
(1002, 76342267),
(0904, 71168964),
(1009, 79006543),
(2093, 81765209),
(2096, 70981347),
(0801, 70911233),
(0801, 76555111),
(1003, 78999716),
(1003, 78009176),
(3082, 03256871),
(2001, 70990880),
(0710, 03361800),
(0710, 70351992),
(0710, 03451229),
(6789,76605188),
(7985,70898521),
(1290,71497919),
(4536,03680533),
(8175,76781222),
(7896,70512963),
(1523,01852366),
(4739,76552301),
(2066,03265891),
(2066,70120888),
(3465,71851772),
(3465,01578962);

#Employee
insert into Person_Phone_number (ID, Phone_number) values
(8901,76618827), 
(8865,80688865),
(7865,72347865),
(9071,03566071),
(2222,78032222),
(3211,71853211),
(2175,78602175),
(8751,71715432),
(2015,71172015),
(3699,70983699),
(5871,78655972),
(5871,70707070),
(2210,03542542),
(7105,71120112),
(8885,78138990),
(6635,76659901),  
(5512,71228555),
(9846,71111111),
(8745,03221112),
(2943,71161166),
(9865,78819918),
(2367,78992229),
(5484,76555475),
(2212,71589000),
(9686,70968631),
(2009,81209019),
(8856,87992213);

select * from Person_Phone_number;

create table Phases(
Phase_number int(1) not null,
Phase_duration varchar(15) not null,
Category varchar(50) not null,
primary key(Phase_number));

insert into Phases(Phase_number,Phase_duration,Category) values
(1,'2 weeks','Healthcare workers'),
(2,'3 weeks','Aged 65 and older'),
(3,'3 weeks','Aged 55-64'),
(4,'3 weeks','All others that did not catch Covid-19 in the past'),
(5,'2 weeks','Citizens who caught Covid-19 in the past');

create table Vaccine(
Brand varchar(35) not null,
Type varchar(15) not null,
Efficacy decimal(4,2),
Storage_temp varchar(5) not null,
Nb_of_doses int(1) not null,
Days_between_doses int(2),
Age_restriction int(2) not null,
primary key (Brand));

insert into Vaccine(Brand,Type,Efficacy,Storage_temp,Nb_of_doses,Days_between_doses,Age_restriction) values
('Pfizer-BioNTech','mRNA',95,'-70C',2,21,16),
('Moderna','mRNA',94,'-20C',2,28,18),
('Astrazeneca-Oxford','Viral vector',63.09,'2-8C',2,56,18),
('Russian Gamaleya Sputnik 5','Viral vector',91.6,'2-8C',2,21,18),
('Johnson & Johnson Janssen','Viral vector',66,'2-8C',1,null,18),
('Sinopharm Chinese','Subunit',79,'2-8C',2,21,18);

create table Patient(
ID int not null,
Vaccine_preference varchar(35),
Allergies varchar(50),
Covid_positive boolean not null,
Health_condition varchar(50),
Phase_number int(1),
primary key(ID),
foreign key(ID) references Person(ID),
foreign key(Vaccine_preference) references Vaccine(Brand),
foreign key(Phase_number) references Phases(Phase_number));

insert into Patient(ID,Vaccine_preference,Allergies,Covid_positive,Health_condition,Phase_number) values
(0102,'Pfizer-BioNTech',null,false,null,4),
(8596,'Moderna','Drug',true,'Cholesterol',4),
(5554,'Moderna',null,false,'High blood pressure',4),
(1236,'Pfizer-BioNTech',null,false,'High blood pressure',4),
(5649,'Pfizer-BioNTech',null,true,null,2),
(8523,'Pfizer-BioNTech','Pollen',false,null,3),
(6974,'Sinopharm Chinese','Insect',false,'Diabetes',2),
(2365,'Astrazeneca-Oxford','Pollen',false,'Cholesterol',2),
(8888,'Russian Gamaleya Sputnik 5',null,false,'High blood pressure',2),
(1235,'Johnson & Johnson Janssen','Mold',false,null,4),

(1002, 'Pfizer-BioNTech', null, false, 'Cholesterol', 4),
(0904, 'Moderna', 'Animal', false, 'High Blood Pressure', 2),
(1009, 'Pfizer-BioNTech', null, false, 'Anemia', 4),
(2093, 'Pfizer-BioNTech', 'Plant', false, 'Asthma', 4 ),
(2096, 'Pfizer-BioNTech', null, false, 'Cholesterol', 4),
(0801, 'Pfizer-BioNTech', null, false, 'Anemia', 2),
(1003, 'Pfizer-BioNTech', null, false, null, 4),
(3082, 'Pfizer-BioNTech', null, false, null, 4),
(2001, 'Pfizer-BioNTech', null, true, 'High Blood Pressure', 5),
(0710, 'Pfizer-BioNTech',null, false, 'Diabetes, High Blood Pressure', 2),

(6789,'Pfizer-BioNTech',null,false,'High Blood Pressure',4),
(7985,'Moderna','Pollen',false,'Cholesterol',4),
(1290,'Astrazeneca-Oxford','Drug',false,null,4),
(4536,'Russian Gamaleya Sputnik 5',null,false,'Diabetes',3),
(8175,'Johnson & Johnson Janssen','Drug',true,'Asthma',4),
(7896,'Pfizer-BioNTech','Latex',false,null,1),
(1523,'Johnson & Johnson Janssen','Mold',true,'Asthma',4),
(4739,'Sinopharm Chinese','Insect',false,'Asthma',4),
(2066,'Sinopharm Chinese','Pollen',false,'Cholsterol',2),
(3465,'Moderna',null,false,null,1);

#Employee
insert into Patient(ID, Vaccine_preference, Allergies, Covid_positive, Health_condition, Phase_number) values
 (8901, 'Pfizer-BioNTech', null, false, 'Cholesterol', 4),
 (8865, 'Moderna', 'Animal', false, 'High Blood Pressure', 4),
 (7865, 'Pfizer-BioNTech', null, false, 'Anemia', 4),
 (9071, 'Pfizer-BioNTech', 'Plant', false, 'Asthma', 4 ),
 (2222, 'Pfizer-BioNTech', null, false, 'Cholesterol', 4),
 (3211, 'Pfizer-BioNTech', null, false, 'Anemia', 4),
 (2175, 'Pfizer-BioNTech', null, false, null, 4),
 (8751, 'Pfizer-BioNTech', null, false, null, 4),
 (2015, 'Pfizer-BioNTech', null, true, 'High Blood Pressure', 4),
 (3699, 'Pfizer-BioNTech',null, false, 'Diabetes, High Blood Pressure', 4),
 (5871, 'Pfizer-BioNTech', null, false, 'Cholesterol', 4),
 (2210, 'Moderna', 'Animal', false, 'High Blood Pressure', 4),
 (7105, 'Pfizer-BioNTech', null, false, 'Anemia', 4),
 (8885, 'Pfizer-BioNTech', 'Plant', false, 'Asthma', 4 ),
 (6635, 'Pfizer-BioNTech', null, false, 'Cholesterol', 1),
 (5512, 'Pfizer-BioNTech', null, false, 'Anemia', 1),
 (9846, 'Pfizer-BioNTech', null, false, null, 1),
 (8745, 'Pfizer-BioNTech', null, false, null, 1),
 (2943, 'Pfizer-BioNTech', null, true, 'High Blood Pressure', 5),
 (9865, 'Pfizer-BioNTech',null, false, 'Diabetes, High Blood Pressure', 1),
 (2367, 'Pfizer-BioNTech', null, false, 'Cholesterol', 1),
 (5484, 'Pfizer-BioNTech', null, false, 'Anemia', 1),
 (2009, 'Pfizer-BioNTech', null, false, null, 1),
 (2212, 'Pfizer-BioNTech', null, false, null, 1),
 (9686, 'Pfizer-BioNTech', null, true, 'High Blood Pressure', 5),
 (8856, 'Pfizer-BioNTech',null, false, 'Diabetes, High Blood Pressure', 1);
 
 
 select * from Patient;
 
 
create table Emergency_contact_name(
Emergency_Phone_number int not null,
Emergency_First_name varchar(30) not null,
Emergency_Middle_name varchar(30) not null,
Emergency_Last_name varchar(30) not null,
primary key(Emergency_Phone_number));

insert into Emergency_contact_name(Emergency_Phone_number,Emergency_First_name,Emergency_Middle_name,Emergency_Last_name) values
(70896173,'Farah','Safwan','Khaddaj'),
(89564662,'Jamal','John','Mosleh'),
(03898693,'Safwan','Anwar','Khaddaj'),
(70524151,'Anthony','Peter','John'),
(78546595,'Wissam','Andrew','Daou'),
(03696666,'Maria','Sinan','Mitri'),
(76595325,'Angela','Marcel','Kaouk'),
(70236533,'Jana','Walid','Khoury'),
(71444244,'Amir','Jad','Younes'),
(78632202,'Nour','Rayan','Hanna'),
(03555555,'Nadi','Ali','Idriss'),
(76214563,'Ralf','Amin','Idriss'),

(71098453, 'Karim', 'Issam', 'Mitri'),
(71288673, 'Karim', 'Issam', 'Mitri'),
(71288563, 'Norma', 'Atef', 'Mitri'),
(71168963, 'Norma', 'Atef', 'Mitri'),
(71098444, 'Norma', 'Atef', 'Mitri'),
(70532145, 'Mona','Atef', 'Mitri'),
(71168965, 'Karim', 'Issam', 'Mitri'),
(03361800, 'Joseph', 'Jamil', 'Abou Fares'),
(79053146, 'Sam', 'Dani', 'AlTurk'),
(03222123, 'Lamar', 'Fouad', 'Kaddoura'),
(79086111, 'Jalal', 'Nizar', 'Awad'),
(78816446, 'Khalil', 'Nassim', 'Dabaja'),
(78817445, 'Marian', 'Joseph', 'Abou Fares' ),
(03317710, 'Elie', 'Jamil', 'Abou Fares'),

(03680533,'Akram','Mohammad','Kaouk'),
(71852987,'Fatima','Mohammad','Nazha'),
(70898521,'Jihan','Mohammad','Nazha'),
(03859612,'Kamal','Mohammad','Kaouk'),
(76587111,'Nathalie','Natasha','Semaan'),
(03811266,'Samira','Jaafar','Darwich'),
(70129985,'Ali','Yaacoub','Khodor'),
(01785119,'Hiba','Yaacoub','Khodor'),
(70581236,'Ibtesam','Hasan','Mouwayse'),
(70589999,'Fatima','Sameer','Tarhini'),
(03215662,'Amal','Jason','Ghraizi'),
(71587002,'Sally','Habib','Fayad');

select * from Emergency_contact_name;

create table Emergency_contact(
Patient_ID int not null,
Emergency_Phone_number int not null,
Relationship varchar(35) not null,
primary key(Patient_ID,Emergency_Phone_number),
foreign key(Patient_ID) references Patient(ID),
foreign key(Emergency_Phone_number) references Emergency_contact_name(Emergency_Phone_number));

insert into Emergency_contact(Patient_ID,Emergency_Phone_number,Relationship) values
(0102,70896173,'Sister'),
(8596,89564662,'Brother'),
(5554,03898693,'Father'),
(1236,70524151,'Brother'),
(5649,78546595,'Father'),
(8523,03696666,'Neighbor'),
(8523,76595325,'Mother'),
(6974,70236533,'Sister'),
(2365,71444244,'Brother'),
(8888,78632202,'Father'),
(1235,03555555,'Father'),
(1235,76214563,'Father'),

 ( 1002, 71098453,'Cousin'), 
 (1002, 71288673, 'Cousin'),
 ( 2093, 71098444,'Mother'), 
 (2093, 71288673, 'Cousin'),
 ( 2096, 71098453,'Cousin'), 
 (2096, 71288673, 'Father'),
 (1002,71168965,  'Cousin'),
 ( 1002, 71098444,'Mother'),
 ( 2093, 71168965,'Cousin'),
 (0904,70532145, 'Sister'),
 (0904,78817445,  'Sister'),
 ( 1009,70532145, 'Mother'),
 (2096, 03361800, 'Father'),
 (0801,79053146,  'Friend'),
 ( 1003,03222123, 'Sister'),
 (3082, 79086111, 'Neighbor'),
 (2001,78816446,  'Cousin'),
 (0710,78817445,  'Daughter' ),
 (0710,03317710,'Brother' ) ,
 
(6789,03680533,'Father'),
(7985,71852987,'Sister'),
(1290,70898521,'Mother'),
(4536,03859612,'Brother'),
(8175,76587111,'Mother'),
(7896,03811266,'Friend'),
(7896,71852987,'Sister'),
(1523,70129985,'Brother'),
(1523,01785119,'Sister'),
(4739,70581236,'Mother'),
(2066,70589999,'Sister'),
(3465,03215662,'Cousin'),
(3465,71587002,'Friend');

select * from Emergency_contact;

create table Evaluation_form(
ID int not null,
Symptoms varchar(100) not null,
Reason_of_vaccination varchar(100) not null,
Rating int not null,
primary key(ID,Symptoms,Reason_of_vaccination,Rating),
foreign key(ID) references Patient(ID),
check(Rating in (1,2,3,4,5)));

insert into Evaluation_form(ID,Symptoms,Reason_of_vaccination,Rating) values
(0102,'No symptoms','I did it for my community',5),
(8596,'Pain at injection site','I did it for my sick sister',4),
(5554,'No symptoms','I did it for my family',4),
(1236,'Headache and a bit of fever','I did it for my society',3),
(5649,'sore muscles','I did it to go back to normal life',4),
(8523,'Pain at injection site and chills','I did it for my grandparents',5),
(6974,'Fever, tiredness, and nausea','I did it for my children',2),
(2365,'a bit of pain','I did it for my community',3),
(2365,'a bit of pain and nausea','I did it for my community',3),
(8888,'None','I did it for my society',5),
(1235,'None','I did it for my family and to go back to normal life',5),
(1002, 'none', 'I did it for my mother', 5),
(0904, 'Headache, Fever', 'I did it for my kids', 4),
(1009, 'diarrhea', 'I did it for my grandpa', 3),
(2093, 'No symptoms', 'I did it to go back to normal life', 4),
(2096, 'Severe cold', 'I did it for my parents and friends', 2),
(0801, 'None', 'I did it for my Family and friends', 5),
(1003, 'Stomachache', 'I did it for my fiance', 5),
(3082, 'Fever, diarrhea', 'I did it for my country', 4),
(2001, 'none', 'I did it for my sick daughter', 5),
(2001,' backpain, nausea', 'I did it for my family', 3),
(0710, 'headache, Tiredness','I did it for my society', 5),
(6789,'none','I did it for my mother',5),
(7985,'Headache','I did it for my husband',3),
(1290,'Chest Pain and Vomiting','I did it for my father',4),
(4536,'none','I did it for my wife',5),
(8175,'Vomiting and Headache','I did it for my family',2),
(7896,'Nausea','I did it for my sick daughter',5),
(1523,'none','I did it for my community',3),
(4739,'Diarrhea and Muscle Pain','I did it for my friend',4),
(2066,'Chest Pain and Blood Clot','I did it for my grandchildren',5),
(3465,'Muscle Pain and Headache','I did it for my parents',5);

select * from Evaluation_form;

create table Emergency_room(
Emergency_room_ID int not null,
MedicalEquipment_description varchar(300),
Bed_number int not null ,
primary key(Emergency_room_ID));

insert into Emergency_room(Emergency_room_ID,MedicalEquipment_description,Bed_number) values
(1,'4 Needles, 2 wheelchairs, 2 Oxygen tanks, 3 protective equipment(gloves, aprons, eyewear, facemasks), 5 IV bags, and 2 Thermometers',2),
(2,'2 Needles, 2 wheelchairs, 2 protective equipment(gloves, aprons, eyewear,2 IV bag, and 1 Thermometer',2);

create table Resides_in(
ID int not null,
Emergency_room_ID int not null,
Date_in date not null,
Date_out date,
primary key (ID),
foreign key (ID) references Patient(ID),
foreign key (Emergency_room_ID) references Emergency_Room(Emergency_room_ID));

insert into Resides_in (ID, Emergency_Room_ID, Date_in, Date_out) values
(0710, 2, '2021-03-27', '2021-03-28'),
(2066,1,'2021-02-06','2021-02-08');
 
create table Department(
Dept_name varchar(15) not null,
floor_number int(2) not null,
primary key (Dept_name));

insert into Department(Dept_name,floor_number) values
('Social Media',1),
('IT',1),
('Medical',2),
('Administration',2);

create table Employee(
ID int not null,
Salary_per_hour long not null,
number_of_hours int(2) not null,
Dept_name varchar(15) not null,
primary key (ID),
foreign key (ID) references Person(ID),
foreign key (Dept_name) references Department (Dept_name),
check(number_of_hours>=6));

insert into  Employee(ID,Salary_per_hour ,number_of_hours,Dept_name) values
(8901, 15, 8, 'Administration'),
(8865, 16, 9, 'Administration'),
(7865, 14, 8, 'Administration'),
(9071, 15, 9, 'Administration'),
(2222, 20, 6, 'IT'),
(3211, 20, 7, 'IT'),
(2175,25, 10,'Social Media'),
(8751, 30, 9, 'IT'),
(2015, 35, 7,'Medical'),
(3699, 24, 8,'Administration'),
(5871,19, 6, 'Social Media'),
(2210,25, 6, 'Social Media'),
(7105,23, 7, 'Social Media'),
(8885, 24, 6, 'Social Media'),
(6635,52, 10, 'Medical' ),  
(5512,50, 10, 'Medical'),
(9846,50, 9, 'Medical'),
(8745,45, 11, 'Medical'),
(2943,21,6,'Medical'),
(9865,22,6,'Medical'),
(2367,19,7,'Medical'),
(5484,20, 6, 'Medical'),
(2212,21,7,'Medical'),
(9686,19,6,'Medical'),
(2009,20,9,'Medical'),
(8856,21,12,'Medical');

create table Doctor(
ID int not null,
Office_number int(3),
Specialization varchar(30) not null,
primary key (ID),
foreign key(ID) references Employee(ID));

insert into Doctor(ID,Office_number,Specialization) values
(6635,100,'Cardiology'),  
(5512,101,'Neurology'),
(9846,102,'Pulmonology'),
(8745,103,'General Health');

create table Nurse(
ID int not null,
Shift_start_time time not null,
Shift_end_time time not null,
Doctor_ID int not null,
primary key(ID,Shift_start_time),
foreign key(Doctor_ID) references Doctor(ID),
foreign key(ID) references Employee(ID));

insert into Nurse(ID,Shift_start_time,Shift_end_time,Doctor_ID) values
(2943,'08:00:00','14:00:00',6635),
(9865,'14:00:00','20:00:00',6635),
(2367,'08:00:00','15:00:00',6635),
(5484,'15:00:00','20:00:00',8745),
(5484,'08:00:00','09:00:00',9846),
(2212,'09:00:00','16:00:00',9846),
(9686,'17:00:00','20:00:00',9846),
(9686,'08:00:00','11:00:00',8745),
(2009,'11:00:00','20:00:00',8745),
(8856,'8:00:00','20:00:00',8745);

create table Vaccine_operation_dates(
Brand varchar(35) not null,
Date1 timestamp not null,
Date2 timestamp,
primary key (Brand,Date1),
foreign key (Brand) references Vaccine(Brand));

insert into Vaccine_operation_dates(Brand,Date1,Date2) values
('Pfizer-BioNTech','2021-04-15 08:15:00','2021-05-06 08:15:00'),
('Moderna','2021-04-15 09:10:00','2021-05-13 09:10:00'),
('Moderna','2021-04-15 10:00:00','2021-05-13 10:00:00'),
('Pfizer-BioNTech','2021-03-03 09:20:15','2021-03-24 09:20:15'),
('Pfizer-BioNTech','2021-03-25 12:06:00','2021-04-15 12:06:00'),
('Sinopharm Chinese','2021-03-04 10:05:00','2021-03-25 10:05:00'),
('Astrazeneca-Oxford','2021-03-04 10:20:00','2021-05-29 10:20:00'),
('Russian Gamaleya Sputnik 5','2021-03-03 09:20:00','2021-03-24 09:20:00'),
('Johnson & Johnson Janssen','2021-04-20 09:09:00',null),
('Moderna', '2021-04-15 09:15:00', '2021-05-13 09:15:00' ),
('Pfizer-BioNTech', '2021-04-15 09:00:00',  '2021-05-06 09:00:00'),
('Pfizer-BioNTech', '2021-04-20 08:10:00' , '2021-05-11 08:10:00'),
('Pfizer-BioNTech', '2021-03-02 10:00:00', '2021-03-23 10:00:00'),
('Pfizer-BioNTech','2021-05-02 12:00:00', '2021-05-23 12:00:00'),
('Pfizer-BioNTech','2021-04-17 13:20:00', '2021-05-08 13:20:00'),
('Pfizer-BioNTech','2021-05-10 13:00:00', '2021-05-31 13:00:00'),
('Pfizer-BioNTech','2021-04-15 09:30:00','2021-05-06 09:30:00'),
('Pfizer-BioNTech','2021-04-16 10:15:00','2021-05-07 10:15:00'),
('Astrazeneca-Oxford','2021-04-16 10:15:00','2021-06-11 10:15:00'),
('Russian Gamaleya Sputnik 5','2021-03-14 14:00:00','2021-04-04 14:00:00'),
('Johnson & Johnson Janssen','2021-04-15 09:30:00',null),
('Pfizer-BioNTech','2021-02-14 12:00:00','2021-03-07 12:00:00'),
('Johnson & Johnson Janssen','2021-05-4 8:00:00',null),
('Sinopharm Chinese','2021-04-25 10:45:00','2021-05-16 10:45:00'),
('Sinopharm Chinese','2021-03-15 15:30:00','2021-04-05 15:30:00'),
('Moderna','2021-02-25 08:40:00','2021-03-25 08:40:00');

insert into Vaccine_operation_dates(Brand,Date1,Date2) values 
('Pfizer-BioNTech',  '2021-04-14 10:00:00', '2021-05-05 10:00:00'),
('Moderna', '2021-04-14 10:20:00', '2021-05-08 10:20:00'),
('Pfizer-BioNTech', '2021-04-14 10:45:00', '2021-05-05 10:45:00'),
('Moderna', '2021-05-13 08:00:00', '2021-05-07 08:00:00' ),
('Pfizer-BioNTech', '2021-05-13 08:00:00', '2021-06-03 08:00:00'),
('Pfizer-BioNTech', '2021-05-13 08:20:00', '2021-06-03 08:00:00'),
('Pfizer-BioNTech', '2021-04-14 10:20:00', '2021-05-05 10:20:00'),
('Pfizer-BioNTech', '2021-04-16 13:00:00',  '2021-05-07 13:00:00'),
( 'Moderna', '2021-04-18 14:15:00','2021-05-16 14:15:00'),
('Pfizer-BioNTech', '2021-05-01 10:20:00',  '2021-05-22 10:20:00'),
('Pfizer-BioNTech', '2021-05-01 10:00:00', '2021-05-22 10:00:00' ),
( 'Pfizer-BioNTech',  '2021-04-16 13:45:00', '2021-05-07 13:45:00'),
('Pfizer-BioNTech', '2021-05-16 13:40:00', '2021-06-06 13:40:00'),
('Pfizer-BioNTech','2021-02-16 13:00:00', '2021-03-09 13:00:00' ),
( 'Pfizer-BioNTech', '2021-02-16 13:20:00','2021-03-09 13:20:00' ),
('Pfizer-BioNTech', '2021-02-16 14:20:00', '2021-03-09 14:20:00');

select * from Vaccine_operation_dates;

create table Vaccine_operation(
ID int not null,																		
Doctor_ID int not null, 	 															
Brand varchar(35) not null,															
Date1 timestamp not null,															
Dose1_taken boolean,														
Dose2_taken boolean,														
primary key (ID),
foreign key (ID) references Patient(ID),
foreign key (Doctor_ID) references Doctor(ID),
foreign key (Brand,Date1) references Vaccine_operation_dates(Brand,Date1));

insert into Vaccine_operation(ID, Doctor_ID, Brand, Date1, Dose1_taken, Dose2_taken) values
(0102,5512,'Pfizer-BioNTech','2021-04-15 08:15:00',true,true),
(8596,9846,'Moderna','2021-04-15 09:10:00',true,false),
(5554,9846,'Moderna','2021-04-15 10:00:00',true,true),
(1236,8745,'Pfizer-BioNTech','2021-04-15 08:15:00',true,false),
(5649,6635,'Pfizer-BioNTech','2021-03-03 09:20:15',true,true),
(8523,6635,'Pfizer-BioNTech','2021-03-25 12:06:00',true,true),
(6974,6635,'Sinopharm Chinese','2021-03-04 10:05:00',true,false),
(2365,5512,'Astrazeneca-Oxford','2021-03-04 10:20:00',true,false),
(8888,8745,'Russian Gamaleya Sputnik 5','2021-03-03 09:20:00',true,true),
(1235,9846,'Johnson & Johnson Janssen','2021-04-20 09:09:00',true,false),
(1002, 6635, 'Moderna', '2021-04-15 09:15:00', true, false),
(0904, 5512, 'Moderna', '2021-04-15 09:15:00', true, true),
(1009, 9846, 'Pfizer-BioNTech', '2021-04-15 09:00:00',true, true), 
(2093, 8745,'Pfizer-BioNTech', '2021-04-15 09:00:00', true, true),
(2096, 6635, 'Pfizer-BioNTech', '2021-04-20 08:10:00', true, true),
(0801, 5512,'Pfizer-BioNTech', '2021-03-02 10:00:00', true, true),
(1003, 9846,'Pfizer-BioNTech','2021-05-02 12:00:00', true, true),
(3082, 8745,'Pfizer-BioNTech','2021-04-17 13:20:00', false, false),
(2001, 6635,'Pfizer-BioNTech','2021-05-10 13:00:00', true, true),
(0710, 5512,'Pfizer-BioNTech','2021-04-17 13:20:00', true, true),
(6789,9846,'Pfizer-BioNTech','2021-04-15 09:30:00',true,true),
(7985,5512,'Pfizer-BioNTech','2021-04-16 10:15:00',true,false),
(1290,9846,'Astrazeneca-Oxford','2021-04-16 10:15:00',false,false),
(4536,8745,'Russian Gamaleya Sputnik 5','2021-03-14 14:00:00',true,true),
(8175,6635,'Johnson & Johnson Janssen','2021-04-15 09:30:00',true,null),
(7896,9846,'Pfizer-BioNTech','2021-02-14 12:00:00',true,true),
(1523,5512,'Johnson & Johnson Janssen','2021-05-4 8:00:00',true,null),
(4739,5512,'Sinopharm Chinese','2021-04-25 10:45:00',true,true),
(2066,9846,'Sinopharm Chinese','2021-03-15 15:30:00',true,false),
(3465,8745,'Moderna','2021-02-25 08:40:00',true,true);

#employee
insert into Vaccine_operation (ID, Doctor_ID, Brand, Date1, Dose1_taken, Dose2_taken) values   
 (8901, 6635, 'Pfizer-BioNTech', '2021-04-14 10:00:00', true, true),
 (8865, 6635, 'Moderna', '2021-04-14 10:20:00', true, true),
 (7865, 6635, 'Pfizer-BioNTech', '2021-04-14 10:45:00', true, true),
 (9071, 6635, 'Moderna', '2021-05-13 08:00:00', true, true ),
 (2222, 5512,'Pfizer-BioNTech', '2021-05-13 08:00:00', true, true),
 (3211, 5512,'Pfizer-BioNTech', '2021-05-13 08:20:00', true, true ),
 (2175, 5512, 'Pfizer-BioNTech', '2021-04-14 10:00:00', true, true), 
 (8751, 5512, 'Pfizer-BioNTech', '2021-04-14 10:20:00', true, true),
 (2015, 9846,'Pfizer-BioNTech', '2021-04-14 10:20:00', true, true),
 (3699, 9846, 'Pfizer-BioNTech','2021-05-13 08:20:00', true, true),
 (5871, 9846, 'Pfizer-BioNTech', '2021-04-16 13:00:00', true, true),
 (2210, 8745, 'Moderna', '2021-04-18 14:15:00', true, true),
 (7105, 8745, 'Pfizer-BioNTech', '2021-05-01 10:20:00', true, true),
 (8885, 8745, 'Pfizer-BioNTech', '2021-05-01 10:00:00', true, true ),
 (6635, 9846, 'Pfizer-BioNTech','2021-05-01 10:00:00', true, true),
 (5512,8745, 'Pfizer-BioNTech',  '2021-04-16 13:00:00', true, true),
 (9846,8745, 'Pfizer-BioNTech',  '2021-04-16 13:45:00', true, true),
 (8745, 9846, 'Pfizer-BioNTech', '2021-04-16 13:45:00', true, true),
 (2943, 5512, 'Pfizer-BioNTech', '2021-05-16 13:40:00', true, true),
 (9865, 5512, 'Pfizer-BioNTech','2021-02-16 13:00:00', true, true),
  (2367, 5512, 'Pfizer-BioNTech', '2021-02-16 13:20:00', true, true ),
 (5484, 9846, 'Pfizer-BioNTech', '2021-02-16 13:20:00', true, true),
 (2009, 8745, 'Pfizer-BioNTech', '2021-02-16 13:20:00', true, true),
 (2212, 9846,  'Pfizer-BioNTech', '2021-02-16 14:20:00', true, true),
 (9686, 6635, 'Pfizer-BioNTech', '2021-05-16 13:40:00', true, true),
 (8856, 6635, 'Pfizer-BioNTech','2021-02-16 13:20:00', true, true);

select * from Vaccine_operation;

create table Vaccine_Company (
Vaccine_company_name varchar(30) not null,
Country varchar (15) not null,
Email varchar (50),
primary key (Vaccine_company_name));

insert into Vaccine_Company(Vaccine_company_name,Country,Email) values
('BioNTech, Pfizer','US','help@pfizer.com'),
('Moderna','US','help@moderna.com'),
('Astrazeneca-Oxford','United Kingdom','help@astrazneneca.com'),
('Gamaleya Research Institute','Russia','info@gamaleya.org'),
('Johnson & Johnson','US','media-relations@its.jnj.com'),
('Sinopharm, Beijing Institute','China','office@sinopharm.com');

create table Vaccine_Company_phone(
Vaccine_company_name varchar(30) not null,
Phone_number varchar(15) not null,
primary key (vaccine_company_name, phone_number),
foreign key (Vaccine_company_name) references Vaccine_Company(Vaccine_company_name));

insert into Vaccine_Company_phone(Vaccine_company_name,Phone_number) values
('BioNTech, Pfizer',2127332323),
('Moderna',7851203698),
('Astrazeneca-Oxford',4408000320501),
('Gamaleya Research Institute',74991933001),
('Johnson & Johnson',7325240400),
('Sinopharm, Beijing Institute',861062026699);

create table Requested_from(
Vaccine_Company_name varchar(30) not null,
Vaccine_brand varchar(35) not null,
Date_of_shipment date not null,
Quantity int not null,
primary key(Vaccine_Company_name,Vaccine_brand,Date_of_shipment),
foreign key(Vaccine_Company_name) references Vaccine_Company(Vaccine_Company_name),
foreign key(Vaccine_brand) references Vaccine(Brand));

insert into Requested_from (Vaccine_Company_name,Vaccine_brand,Date_of_shipment,Quantity) values
('BioNTech, Pfizer','Pfizer-BioNTech','2021-02-13',56000),
('Moderna','Moderna','2021-02-14',45600),
('Astrazeneca-Oxford','Astrazeneca-Oxford','2021-02-10',34000),
('Gamaleya Research Institute','Russian Gamaleya Sputnik 5','2021-02-14',23450),
('Johnson & Johnson','Johnson & Johnson Janssen','2021-02-13',14500),
('Sinopharm, Beijing Institute','Sinopharm Chinese','2021-02-13',20000),
('BioNTech, Pfizer','Pfizer-BioNTech','2021-03-03',21000);

create table Inventory_room(
Inventory_room_ID char(3) not null,
Vaccine_brand varchar(35) not null,
Quantity int not null,
Capacity int not null,
primary key(Inventory_room_ID),
foreign key(Vaccine_brand) references Vaccine(Brand));

insert into Inventory_room(Inventory_room_ID,Vaccine_brand,Capacity,Quantity) values
('IR1','Pfizer-BioNTech',80000,77000),
('IR2','Moderna',50000,45600),
('IR3','Astrazeneca-Oxford',40000,34000),
('IR4','Johnson & Johnson Janssen',20000,14500),
('IR5','Sinopharm Chinese',30000,20000),
('IR6','Russian Gamaleya Sputnik 5',30000,23450);

create table Receptionist_deskinfo(
Office_desknb int(2) not null,
Extension_nb long,
primary key(Office_desknb));

insert into Receptionist_Deskinfo ( Office_Desknb, Extension_nb) values
(01, 1416),
(02, 1723);

create table Receptionist(
ID int not null,
Office_desknb int(2) not null,
primary key (ID), 
foreign key(ID) references Employee(ID),
foreign key (Office_desknb) references Receptionist_deskinfo (Office_desknb));

insert into Receptionist( ID,Office_Desknb) values
(8901,01),
(8865,01),
(7865,02),
(9071,02);

create table Manager(
ID int not null,
Dept_name varchar(15) not null, 
primary key(ID),
foreign key(ID) references Employee(ID),
foreign key (Dept_name) references Department (Dept_name));

insert into Manager(ID,Dept_name) values 
(2175,'Social Media'),
(8751,'IT'),
(2015,'Medical'),
(3699,'Administration');

create table IT (
ID int not null,
primary key (ID),
foreign key(ID) references Employee(ID));

insert into IT (ID) values 
(2222),
(3211);

create table Social_Media_Specialist(
ID int not null,
Social_media_application varchar(15) not null,
primary key(ID),
foreign key(ID) references Employee(ID));

insert into Social_Media_Specialist(ID,Social_media_application) values
(5871,'Instagram'),
(2210,'Facebook'),
(7105,'Twitter'),
(8885, 'LinkedIn');

#Queries and indices:

#Scenario 1: Calculate the ratio of people who showed up to take the first dose of the vaccine after registration.
create index Vaccine_dose1 on Vaccine_operation(dose1_taken);

select (count(dose1_taken)/(select count(*) from Vaccine_Operation)) as ratio_of_showing_up
from Vaccine_Operation
where dose1_taken=true;

#Scenario 2: Select full names and phone numbers of patients who rated less than 2 in the evaluation form.
create index Ratingindex on Evaluation_form(Rating) using BTree;

Select distinct First_name, Middle_name, Last_name, Phone_number
From Person natural join Person_Phone_number natural join Evaluation_form
Where Rating<=2;

#Scenario 3:Update the inventory of Moderna vaccine by decreasing its quantity according to the list of people who showed up to take the vaccine.

#old quantity:
select Quantity 
from Inventory_room 
where Vaccine_brand='Moderna';

Update Inventory_room
set Quantity=Quantity-(select count(dose1_taken) From Vaccine_Operation Where Brand='Moderna' and dose1_taken=true)-(select count(dose2_taken) From Vaccine_Operation Where Brand='Moderna' and dose2_taken=true)
where Vaccine_brand='Moderna';

#new quantity
select Quantity 
from Inventory_room 
where Vaccine_brand='Moderna';

#Scenario 5: Count the number of patients who entered the emergency rooms.
Select count(ID)
From Resides_In;

#Scenario 6: Select the favorite vaccine for the patients (vaccine brand with the most number of requests by the patients).
create index Vaccine_preferenceIndex on Patient(Vaccine_preference);

Select Vaccine_preference
From Patient
Group by (Vaccine_preference)
Having count(*)>= all (select count(*) from Patient Group by (Vaccine_preference));

#Scenario 7: Select the ID of the doctor with no nurse.
select ID
from Doctor
where ID not in(select distinct Doctor_ID from Nurse);

#Scenario 8: Select the ID of the doctor with the highest number of vaccine operations performed.
create index VaccineoperationsIndex on Vaccine_Operation(Doctor_ID);

select Doctor_ID 
from Vaccine_Operation
Group by(Doctor_ID)
Having count(*)>= all (select count(*) from Vaccine_Operation Group by (Doctor_ID));

#name of the doctor
select concat(First_name,' ',Middle_name,' ',Last_name) as Name
from Vaccine_Operation join Person on (Doctor_ID=Person.ID)
Group by(Doctor_ID)
Having count(*)>= all (select count(*) from Vaccine_Operation Group by (Doctor_ID));

#Scenario 9:Select the nurse of the month(with highest number of hours)
select concat(First_name,' ',Middle_name,' ',Last_name) as Name
from Employee natural join Person
where ID in (select ID from Nurse) and number_of_hours>=all(select number_of_hours from Employee where ID in(select ID from Nurse));


#Scenario 10: Count the number of vaccinated patients in each phase
Select Phase_number, count(*) as count
From Patient
Group by Phase_number;

#Scenario 11: Select the vaccine company with the least quantity of doses requested.
Select Vaccine_Company_name,sum(Quantity) as Quantity
From Requested_From
Group by Vaccine_Company_name
Having sum(Quantity)<=all (select sum(Quantity)
				  From Requested_From
				  Group by Vaccine_Company_name);

#Scenario 12:Select the IDs and full names of the patients in descending order whose first name starts with the letter R and the vaccine brand chosen is Moderna.
create index Personindex on Person(First_name);

Select ID,concat(First_name,' ',Middle_name,' ',Last_name) as Name
From Patient natural join Person
Where First_name LIKE 'R%' and Vaccine_preference='Moderna'
Order by ID DESC;

#Views that will be used for privileges:

create view socialmediaemployees as 
select *
from Employee natural join Person natural join Social_Media_Specialist
where Dept_name='Social Media';


create view ITemployees as
select *
from Employee natural join Person natural join IT
where Dept_name='IT'; 


create view Doctorsinfo as
select *
from Employee natural join Person natural join Doctor 
where Dept_name='Medical';


create view Nursesinfo as
select *
from Employee natural join Person natural join Nurse
where Dept_name='Medical';


create view administrationemployees as 
select *
from Employee natural join Person natural join Receptionist
where Dept_name='Administration';


create view Patientsinfo as
select *
from Patient natural join Person;


create view EvaluationFormSocialMedia as
select Reason_of_vaccination, Rating
from Evaluation_Form;


create view Patientsinfoforreceptionist as
select concat(First_name,' ',Middle_name,' ',Last_name) as Name,Phone_number,Phase_number,Brand,date1,date2
from Person natural join Person_Phone_number natural join Patient natural join Vaccine_operation natural join Vaccine_operation_dates
order by date1,date2;

select * from Patientsinfoforreceptionist;

create view Patientupdate as
select ID,concat(First_name,' ',Middle_name,' ',Last_name) as Name,Dose1_taken,Dose2_taken
from Person natural join Vaccine_operation
order by Name;


create view EvaluationFormDoctors as 
select concat (First_name,' ', Middle_name,' ',Last_name) as Name, Brand, Symptoms, Dose1_taken, Dose2_taken
from Person natural join Vaccine_operation natural join Evaluation_form
order by First_name;






#Users,Roles and privileges:
create user 'MargoAnisKhoury'@'localhost' identified by 'Margo5896';
create user 'ElieDaniJedaan'@'localhost' identified by 'Elie5362';
create user 'AliHasanAyoub'@'localhost' identified by 'Ali7841';
create user 'BouthainaAtefHatem'@'localhost' identified by 'Bouthaina0220';

create role managerSocialmedia;
create role managerIT;
create role managerMedical;
create role managerAdministration;
GRANT managerSocialmedia to MargoAnisKhoury@localhost;
GRANT managerIT to ElieDaniJedaan@localhost;
GRANT managerMedical to AliHasanAyoub@localhost;
GRANT managerAdministration to BouthainaAtefHatem@localhost;

GRANT all privileges on Vaccinationcenter.socialmediaemployees to 'MargoAnisKhoury'@'localhost';
GRANT all privileges on Vaccinationcenter.socialmediaemployees to managerSocialmedia;
flush privileges;


GRANT all privileges on Vaccinationcenter.ITemployees to  'ElieDaniJedaan'@'localhost';
GRANT all privileges on Vaccinationcenter.ITemployees to managerIT;
flush privileges;


Grant all privileges on Vaccinationcenter.Doctorsinfo to 'AliHasanAyoub'@'localhost';
Grant all privileges on Vaccinationcenter.Nursesinfo to 'AliHasanAyoub'@'localhost';
Grant all privileges on Vaccinationcenter.Doctorsinfo to managerMedical;
Grant all privileges on Vaccinationcenter.Nursesinfo to managerMedical;
flush privileges;


GRANT all privileges on Vaccinationcenter.administrationemployees to 'BouthainaAtefHatem'@'localhost';
GRANT all privileges on Vaccinationcenter.administrationemployees to managerAdministration;
flush privileges;

show grants for ElieDaniJedaan@localhost;
show grants for MargoAnisKhoury@localhost;
show grants for AliHasanAyoub@localhost;
show grants for BouthainaAtefHatem@localhost;

create user 'Nurse'@'localhost' identified by 'Nurse1234';
create role Nurse;
GRANT Nurse to Nurse@localhost;

GRANT select on Vaccinationcenter.Patientsinfo to 'Nurse'@'localhost';
GRANT select on Vaccinationcenter.Patientsinfo to Nurse;
flush privileges;

show grants for Nurse@localhost;

create user 'SocialMediaSpecialist'@'localhost' identified by 'SocialMediaapps22';

create role SocialMediaSpecialist;
GRANT SocialMediaSpecialist to 'SocialMediaSpecialist'@'localhost';

GRANT select on Vaccinationcenter.EvaluationFormSocialMedia to 'SocialMediaSpecialist'@'localhost';
GRANT select on Vaccinationcenter.EvaluationFormSocialMedia to SocialMediaSpecialist;

show grants for SocialMediaSpecialist@localhost;

create user 'Receptionist'@'localhost' identified by 'Receptionist2963';

create role Receptionist;
GRANT Receptionist to 'Receptionist'@'localhost';

GRANT select on Vaccinationcenter.Patientsinfoforreceptionist to 'Receptionist'@'localhost';
GRANT select on Vaccinationcenter.Patientsinfoforreceptionist to Receptionist;
GRANT select , update on Vaccinationcenter.Patientupdate to 'Receptionist'@'localhost';
GRANT select , update on Vaccinationcenter.Patientupdate to Receptionist;
flush privileges;

show grants for Receptionist@localhost;

create user 'Doctor'@'localhost' identified by 'VaccinatingDoctors2021' ;
create role Doctor;

GRANT Doctor to 'Doctor'@'localhost';

GRANT select on Vaccinationcenter.EvaluationFormDoctors to 'Doctor'@'localhost';
GRANT select on Vaccinationcenter.EvaluationFormDoctors to  Doctor;
flush privileges; 

show grants for Doctor@localhost;