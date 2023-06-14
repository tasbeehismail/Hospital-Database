insert into employee (emp_id,fname ,mname,lname, gender, emp_type,salary ,ph_number ,email ,street ,city ,state,joining_date,DOB )
values 
(1, 'Osama', 'Ali', 'Hossam', 'Male', 'Doctor',9000 ,'015565656','osama@gmail.com' ,'Oraby' ,'Cairo','single','2020-2-3','1999-3-6'),
(2, 'Ahmed', 'Gamal', 'saaed', 'Male', 'Doctor' ,8500,'015599656','ahmed@gmail.com' ,'Khattab' ,'fayoum','single','2020-9-9','1995-3-9'),
(3, 'Omnia', 'Ali', 'elnaggar', 'Female', 'Doctor' ,8500,'0150065656','omnia@gmail.com' ,'saad' ,'Desouk','engagged','2021-9-7','1997-5-5'),
(4, 'Ola', 'Ahmed', 'Hady', 'Female', 'nurse' ,4000,'015590906','ola@gmail.com' ,'banhastreet' ,'banha','married','2009-9-8','1989-7-1'),
(5, 'Hala', 'Ali', 'Hossam', 'Female', 'nurse' ,5500,'01550393936','hala@gmail.com','Oraby' ,'Cairo','single','2014-7-9','1999-3-6'),
(6, 'Hanaa', 'Anwar', 'zedan', 'Female', 'nurse' ,4500,'015569887656','hanaa@gmail.com','markz' ,'Mansoura','single','2018-2-9','1999-3-6'),
(7, 'Omr', 'nabeil', 'Hossam', 'Male', 'Doctor' ,2000,'0151234567','omr@gmail.com' ,'Oraby' ,'KFS','single','2018-2-8','1989-3-9'),
(8, 'Ebrahim', 'ramiz', 'kamal', 'Male', 'dustman' ,2000,'012345678','ebrahim@gmail.com' ,'sevenstreet' ,'Giza','single','2017-9-8','1997-6-1'),
(9, 'Zaki', 'Ali', 'Hossam', 'Male', 'dustman' ,2500,'0122346789','zezoo@gmail.com' ,'Oraby' ,'Mansoura','single','2020-8-1','1996-9-1'),
(10, 'Belal', 'Ali', 'mahmoud', 'Male', 'Doctor' ,3000,'013456789','belal@gmail.com' ,'kfsstreet' ,'KFS','single','2019-1-1','2000-3-7'),
(11, 'saad', 'mahmoud', 'Hossam', 'Male', 'security man' ,3000,'013456543','saad@gmail.com' ,'Oraby' ,'Mansoura','single','2009-9-9','1998-11-2'),
(12, 'salwa', 'maemn', 'Hassan', 'Female', 'nurse' ,6000,'01398543','salwa@gmail.com' ,'zwail' ,'Rasheed','married','2009-9-11','1996-12-7'),
(13, 'nourhan', 'mohammed', 'elRouby', 'Female', 'nurse' ,5000,'015566543','nour@gmail.com' ,'korba' ,'Giza','single','2018-12-5','1999-2-5'),
(14, 'Fedaa', 'Ahmed', 'saeed', 'Female', 'Doctor' ,9000,'0136565543','Fedaa@gmail.com' ,'Bahr' ,'Alex','married','2014-2-3','2000-1-12');
insert into employee (emp_id,fname ,mname,lname, gender, emp_type,salary ,ph_number ,email ,street ,city ,state,joining_date,DOB )
values 
(15, 'Ahmed', 'Ali', 'Hossam', 'Male', 'Doctor',9000 ,'015005656','a7med@gmail.com' ,'Oraby' ,'Alex','single','2020-2-3','1999-3-6'),
(16, 'Hesham', 'Gamal', 'saaed', 'Male', 'Doctor' ,8500,'015590056','Hesham@gmail.com' ,'Khattab' ,'Alex','single','2020-9-9','1995-3-9'),
(17, 'Basmala', 'Ali', 'elnaggar', 'Female', 'Doctor' ,8500,'01500656','Basmala@gmail.com' ,'saad' ,'Alex','engagged','2021-9-7','1997-5-5');
update employee 
set email ='zakrai@gmail.com'
where emp_id=9;


insert into patient 
values 
(1,'wael','mohamed','kareem','Male','2000-9-9','A+','aortic disease','0178787' ,'wael@gmail.com' ,'saadstreet' ,'Alex',1,'single',1,'2023-2-3',null),
(2,'karim','mohamed','fathi','Male','2009-9-6','O+','Crocine','018954' ,'karim@gmail.com' ,'orabystreet' ,'Desouk',0,'single',7,'2021-1-10','2022-1-2'),
(3,'waleed','nasr','mohamed','Male','1998-10-5','AB','Tarivid','0172753' ,'waleed@gmail.com' ,'Zamalek' ,'cairo',0,'married',2,'2023-2-2','2023-3-4'),
(4,null,null,null,'Male',null,'A-','Namoslate',null ,null ,'omr khattab' ,'Alex',1,'single',3,'2023-2-3',null),
(5,'lobna','mohamed','Ahmed','Female','1980-10-2','A-','canesten','0129654' ,'lobna@gmail.com' ,'Maady' ,'mansoua',1,'married',10,'2023-9-3',null),
(6,'gamal','mohamed','kareem','Male','2000-9-9','A+','aortic disease','01726559' ,'gamal@gmail.com' ,'saadstreet' ,'Alex',1,'single',3,'2023-2-3',null),
(7,'hadeer','mohamed','fathi','Female','2009-9-6','O+','Crocine','0165954' ,'hadeer@gmail.com' ,null ,'banha',0,'single',2,'2021-1-10','2022-1-2'),
(8,'nader','nasr','mohamed','Male','1998-10-5','AB','Tarivid','0176543' ,'nader@gmail.com' ,null ,'fayoum',0,'married',14,'2023-2-2','2023-3-4'),
(9,null,null,null,'Male',null,'A-','Namoslate',null ,null ,'omr khattab' ,'Alex',1,'single',3,'2023-2-3',null),
(10,null,null,null,'Female',null,'AB',null,null ,null ,null ,null,1,'married',1,'2023-9-3',null),
(11,'mahmoud','malik','belal','Male','2003-2-12','A+',null,'01726597' ,null ,'saadstreet' ,'Alex',1,'single',1,'2023-2-3',null),
(12,'malik','mohamed','nasr','Male','1999-1-10','O+','Crocine','0136954' ,'malik@gmail.com' ,'orabystreet' ,'fayoum',0,'single',10,'2021-1-10','2022-1-2'),
(13,'dina','nasr','mohamed','Female','1995-7-7','AB','Tarivid','0185253' ,null ,'Zamalek' ,'banha',0,'married',2,'2023-2-2','2023-3-4'),
(14,null,null,null,'Female',null,'A-','Namoslate',null ,null ,'omr khattab' ,'Alex',1,'single',3,'2023-2-3',null),
(15,'basma','naser','kareem','Female','1980-2-11','A+','canesten','0165954' ,'hathalye8@gmail.com' ,'Maady' ,'cairo',1,'married',7,'2023-9-3',null),
(16,'wessam','mohamed','ali','Female','2000-1-2','A+',null,'0178787' ,'rakesh@gmail.com' ,'saadstreet' ,'Alex',1,'single',3,'2023-2-3',null),
(17,'kariman','ramiz','fathi','Female','2009-9-8','O+','Crocine','01621054' ,null ,'orabystreet' ,'Desouk',0,'single',2,'2021-1-10','2022-1-2'),
(18,'zinab','nasr','mohamed','Female','1999-10-6','AB',null,'019512363' ,'suresh@gmail.com' ,'Zamalek' ,'cairo',0,'married',10,'2022-6-12','2023-2-7'),
(19,null,null,null,'Female',null,'A-','Namoslate',null ,null ,'omr khattab' ,'Alex',1,'single',3,'2023-2-3',null),
(20,'mai','zaki','kareem','Female','1989-4-3','A+','canesten','0129325' ,'ramesh@gmail.com' ,'sixstreet' ,'Damnhour',1,'married',1,'2023-9-3',null);



 update patient 
 set fname ='nader', mname='mohamed',lname='mamdouh',dob='2002-9-9',ph_number='012865'
 where pid=4;

 delete from patient
 where ptype=0 and left_date != null;

insert into relative
values
( 2,'Fareed', 'brother','01658'),
( 11,'nadeen', 'sister','015169'),
( 13,'nesreen', 'mother','019567'),
( 15,'maria','wife','01734'),
( 1,'ali', 'father','010236'),
( 20,'moemn', 'son','010087'),
(4,'Ahmed','father','01201444221'),
( 12,'Ramiz','brother','01600'),
( 8,'Ahmed', 'cousin','015506'),
( 7,'nader', 'brother','012086'),
( 10,'abdullah', 'cousin','012557'),
( 16,'khaled','son','0142364'),
( 3,'ramy', 'brother','01016');


insert into test 
values(1,'X-RAY',100),
(2,'BLOOD TEST',300),
(3,'URINE TEST',100),
(4,'MRI SCAN',1200),
(5,'ENDOSCOPY',3000),
(6,'BIOPSY',3500),
(7,'ULTRASOUND',900),
(8,'CT-SCAN',1100),
(9,'CBC',350),
(10,'FLU TEST',1500);


insert into medicine 
VALUES(1,'CROCINE',10),
(2,'ASPIRIN',8),
(3,'NAMOSLATE',8),
(4,'GLUCOSE',200),
(5,'TARIVID',80),
(6,'CANESTEN',12),
(7,'DICLOFENAC',18),
(8,'ANTACIDS',8),
(9,'VERMOX',40),
(10,'OVEX',25),
(11,'OMEE',35),
(12,'AVIL',4),
(13,'HIDRASEC',50),
(14,'UTINOR',80),
(15,'PARIET',8),
(16,'CIPROXIN',6),
(17,'CYPROSTAT',12);



insert into department
values(1,'ALLERGY',1);
insert into department
values(2,'INTENSIVE CARE',NULL);
insert into department
values(3,'ANESTHESIOLOGY',NULL);
insert into department
values(4,'CARDIOLOGY',NULL);
insert into department 
values(5,'ENT',NULL);
insert into department 
values(6,'NEUROLOGY',3);
insert into department 
values(7,'ORTHOPEDICS',NULL);
insert into department 
values(8,'PATHOLOGY',NULL);
insert into department 
values(9,'RADIOLOGY',NULL);
insert into department 
values(10,'SURGERY',NULL);
insert into department 
values(11,'NURSE',NULL);
insert into department 
values(12,'ACCOUNTS',NULL);
insert into department 
values(13,'SECURITY',2);
insert into department
values(14,'CLEANER',NULL);


insert into room 
values
(1,'10000',null),
(2,'2500',null),
(3,'9500',null),
(4,'3400',null),
(5,'2900',null),
(6,'1950',null),
(7,'1950',null),
(8,'1560',null),
(9,'1950',null),
(10,'1650',null),
(11,'1560',null),
(12,'2690',null),
(13,'2000',null),
(14,'3000',null),
(15,'2900',null),
(16,'2600',null),
(17,'3600',null),
(18,'7400',null),
(19,'6450',null);

insert into takes_med
values(1,7,'2023-2-3',2);
insert into takes_med
values(3,5,null,3);
insert into takes_med
values(2,12,'2021-1-10',1);
insert into takes_med
values(4,6,'2023-6-4',1);
insert into takes_med
values(1,4,'2023-2-3',2);
insert into takes_med
values(3,7,null,3);
insert into takes_med
values(2,1,'2021-1-10',1);
insert into takes_med
values(4,11,'2023-6-4',1);
insert into takes_med
values(10,7,null,3);
insert into takes_med
values(5,1,'2021-1-10',1);
insert into takes_med
values(6,11,'2023-6-4',1);

insert into nurse 
values(4,4);
insert into nurse 
values(6,1);
insert into nurse 
values(5,2);
insert into nurse 
values(13,5);
insert into nurse 
values(12,3);

insert into assigned_to_nurse
values( 12,4,'2021-1-10');
insert into assigned_to_nurse
values( 3,12,'2023-2-2');
insert into assigned_to_nurse
values( 7,6,'2023-9-4');
insert into assigned_to_nurse
values( 1,5,'2023-2-3');
insert into assigned_to_nurse
values( 4,13,'2023-6-3');

insert into allocated_in_room
values(1,3,'2023-2-3'),
(13,4,'2023-2-2'),
(2,2,'2021-1-10'),
(4,6,'2023-6-4'),
(20,11,'2021-2-5'),
(7,5,'2020-2-12'),
(16,9,'2022-2-6'),
(19,12,'2023-9-11');

insert into bill 
values(1,350,100,1000,null,1450);
insert into bill 
values(2,1000,300,2500,500,4300);
insert into bill 
values(3,600,100,9500,null,10200);
insert into bill 
values(4,400,1200,3400,110,5110),
(5,500,1200,2600,200,4500),
(6,180,1300,3100,null,4580),
(7,650,900,2500,200,4250),
(8,320,600,6500,100,7520),
(9,500,1100,2600,null,3750),
(10,200,950,2900,120,4170),
(11,350,1350,4100,null,5800);



insert into had_test
values(2, 8,'2021-5-10');
insert into had_test
values(17, 3,'2023-10-4');
insert into had_test
values(3, 7,'2023-5-2');
insert into had_test
values(15, 9,'2023-5-4');
insert into had_test
values(4, 1,'2023-1-3'),
(11, 4,'2022-2-5'),
(13, 6,'2023-2-5'),
(16, 2,'2021-5-8'),
(19, 5,'2022-6-12');



insert into paid_bill
values(1,3,null);
insert into paid_bill
values(12,2,'2022-1-2');
insert into paid_bill
values(3,7,'2023-1-4');
insert into paid_bill
values(14,11,null),
(11,1,null),
(20,5,'2023-2-6'),
(17,9,null),
(2,6,'2022-6-5')
,(14,1,null),
(4,4,'2023-6-6'),
(13,8,null);

insert into doctor
values(1,'BMBS'),
(10,'BMBS'),
(7,null),
(14,'MBChB');
insert into doctor
values(2,'BM');
insert into doctor
values(3,'MBChB'),
(15,'BM'),
(16,'MBChB'),
(17,'BM');


insert into worked_in
values(11,2,'2020-2-3');
insert into worked_in
values(2,4,'2020-9-9');
insert into worked_in
values(13,1,'2021-10-7');
insert into worked_in
values(10,11,null);
insert into worked_in
values(3,14,'2021-2-9');
insert into worked_in
values(13,6,'2021-1-11');
insert into worked_in
values(9,8,null);
insert into worked_in
values(12,7,'2020-7-6');
insert into worked_in
values(7,3,null);