create database projectk
create table dept(
did         int            primary key,
dname     varchar(20)        not null,
);

insert into dept(did,dname)
values(101,'csse'),
      (102,'ece'),
	  (103,'eee'),
	  (104,'cse'),
	  (105,'mech'),
	  (106,'civil')


create table block(
b_id      int            primary key,
b_name    varchar(20)    not null,
);

insert into block(b_id,b_name)
values(1401,'M block'),
      (1402,'MNS block'),
	  (1403,'G block'),
	  (1404,'ME block')
create table exam_schedule(
ex_id       int         primary key,
ex_date     date        not null,
ex_st_time  time         not null,
ex_en_time  time         not null
	  );
	  
INSERT INTO exam_schedule(ex_id, ex_date, ex_st_time,ex_en_time)
VALUES
    (1, '2023-06-22', '10:0:0','1:0:0'),
    (2, '2023-06-24', '10:0:0','1:0:0'),
    (3, '2023-06-26','10:0:0','1:0:0'),
    (4, '2023-06-28', '10:0:0','1:0:0'),
    (5, '2023-06-30', '10:0:0','1:0:0')


create table subjects(
sub_id       varchar(30)      primary key,
sub_name     varchar(30)       not null,
ex_id        int               not null,
sub_tmarks      int            not null,
sub_sem         int            not null,
);

insert into subjects(sub_id,sub_name,ex_id,sub_tmarks,sub_sem)
values('20BT50502','DAA',1,70,2),
      ('20BT12901','DMS',2,70,2),
	  ('20BT41501','TOC',3,70,2),
	  ('20BT40501','Dbms',4,70,2),
	  ('20BT31501','OS',1,70,2-2),
	  ('20BT31201','SE',2,70,2),
	  ('20BT40101','EH',1,70,2),
	  ('20BT40102','EE',2,70,2),
	  ('20BT40103','SM',3,70,2),
	  ('20BT40104','SA',4,70,2),
	  ('20BT40301','DoM',1,70,2),
	  ('20BT40302','EM and MT',2,70,2),
	  ('20BT40303','FM and M',3,70,2),
	  ('20BT40304','TE-1',4,70,2),
	  ('20BT40401','AC',1,70,2),
	  ('20BT40402','ECA and D',2,70,2),
	  ('20BT40403','L and D IC A',3,70,2),
	  ('20BT40404','P and SP',4,70,2),
	  ('20BT40405','M and I',5,70,2),
	  ('20BT40441','AE',1,70,2),
	  ('20BT40201','CS',2,70,2),
	  ('20BT40202','DE',3,70,2),
	  ('20BT40203','EM-2',4,70,2),
	  ('20BT40204','E MTS',5,70,2)


create table dep_sub(
sub_id            varchar(30)          foreign key references subjects(sub_id),
did                int                 foreign key references dept(did)
);

insert into dep_sub(sub_id,did)
values('20BT50502', 101),
('20BT12901', 101),
('20BT41501', 101),
('20BT40501', 101),
('20BT41501', 104),
('20BT40501', 104),
('20BT31501', 104),
('20BT31201', 104),
('20BT40101', 106),
('20BT40102', 106),
('20BT40103', 106),
('20BT40104', 106),
('20BT40301', 105),
('20BT40302', 105),
('20BT40303', 105),
('20BT40304', 105),
('20BT40401', 102),
('20BT40402', 102),
('20BT40403', 102),
('20BT40404', 102),
('20BT40405', 102),
('20BT40441', 103),
('20BT40201', 103),
('20BT40202', 103),
('20BT40203', 103),
('20BT40204', 103)



create table exam_room(
r_id        int          primary key,
r_cap       int           null,
);

insert into exam_room(r_id,r_cap)
values(226,20),
      (227,20),
	  (228,20),
	  (229,20),
	  (607,30),
	  (608,30),
	  (609,30),
	  (610,30),
	  (2126,25),
	  (2127,25),
	  (2128,25),
	  (2129,25),
	  (1060,26),
      (1061,26),
      (1062,26),
      (1063,26)

create table block_room(
r_id      int     foreign key references exam_room(r_id),
b_id      int     foreign key references block(b_id),
in_id     int     foreign key references invigilator(invig_id)
);

insert into block_room(r_id,b_id,in_id)
values
  (226, 1401, 1920125601),
  (227, 1401, 1920125602),
  (228, 1401, 1920125603),
  (229, 1401, 1920125604),
  (607, 1402, 1920125605),
  (608, 1402, 1920125606),
  (609, 1402, 1920125607),
  (610, 1402, 1920125608),
  (2126, 1403, 1920125609),
  (2127, 1403, 1920125610),
  (2128, 1403, 1920125611),
  (2129, 1403, 1920125612),
  (1060, 1404, 1920125613),
  (1061, 1404, 1920125614),
  (1062, 1404, 1920125615),
  (1063, 1404, 1920125616);


create table student(
st_id         varchar(30)           primary key,
st_name      varchar(30)    not null,
st_dept       int           foreign key references dept(did)
);

INSERT INTO student(st_id, st_name,st_dept)
VALUES
    ('21121a1501', 'tharun',101),
    ('21121a1502', 'thrisha',101),
    ('21121a1503', 'sasi',101),
    ('21121a1504', 'avinash',101),
    ('21121a1505', 'mani',101),
    ('21121a1506', 'yamini',101),
    ('21121a1507', 'manoj',101),
    ('21121a1508', 'sandeep',101),
    ('21121a1509', 'saikiran',101),
    ('21121a1510', 'sai kumar',101),
    ('21121a1511', 'rajeswara',101),
    ('21121a1512', 'chandrahas',101),
    ('21121a1513', 'vishnu',101),
    ('21121a1514', 'amulya',101),
    ('21121a1515', 'mallesh',101),
    ('21121a1516', 'kiranami',101),
    ('21121a1517', 'mukta',101),
    ('21121a1518', 'tocci',101),
    ('21121a1519', 'vamsi priya',101),
    ('21121a1520', 'ranga',101),
    ('21121a1521', 'hemevalli',101),
    ('21121a1522', 'lokesk kumar',101),
    ('21121a1523', 'hyndavi',101),
    ('21121a1524', 'anwar',101),
    ('21121a1525', 'navya deepti',101),
    ('21121a1526', 'sudheer',101),
    ('21121a1527', 'aswini',101),
    ('21121a1528', 'sai charan',101),
    ('21121a1529', 'rakesh',101),
    ('21121a1530', 'hussain',101),
    ('21121a1531', 'narmada',101),
    ('21121a1532', 'gowtham',101),
    ('21121a1533', 'abhishek',101),
    ('21121a1534', 'sai kiran yadav',101),
    ('21121a1535', 'ujwala',101),
    ('21121a1536', 'willson',101),
    ('21121a1537', 'sidhartha',101),
    ('21121a1538', 'mahathi',101),
    ('21121a1539', 'vandana',101),
    ('21121a1540', 'lokeshwar',101)

    INSERT INTO student (st_id, st_name, st_dept)
VALUES
    ('21121a1401', 'Ravi Reddy', 102),
    ('21121a1402', 'Priya Sharma', 102),
    ('21121a1403', 'Sandeep Naidu', 102),
    ('21121a1404', 'Ananya Rao', 102),
    ('21121a1405', 'Vivek Kumar', 102),
    ('21121a1406', 'Divya Reddy', 102),
    ('21121a1407', 'Nithya Sharma', 102),
    ('21121a1408', 'Ajay Naidu', 102),
    ('21121a1409', 'Priya Rao', 102),
    ('21121a1410', 'Sandeep Kumar', 102),
    ('21121a1411', 'Anjali Reddy', 102),
    ('21121a1412', 'Rohit Sharma', 102),
    ('21121a1413', 'Neha Naidu', 102),
    ('21121a1414', 'Rakesh Rao', 102),
    ('21121a1415', 'Swathi Kumar', 102),
    ('21121a1416', 'Rajesh Reddy', 102),
    ('21121a1417', 'Sushma Rao', 102),
    ('21121a1418', 'Ravi Kumar', 102),
    ('21121a1419', 'Priya Reddy', 102),
    ('21121a1420', 'Sandeep Sharma', 102),
    ('21121a1421', 'Ananya Naidu', 102),
    ('21121a1422', 'Vivek Rao', 102),
    ('21121a1423', 'Divya Kumar', 102),
    ('21121a1424', 'Nithya Reddy', 102),
    ('21121a1425', 'Ajay Sharma', 102),
    ('21121a1426', 'Priya Naidu', 102),
    ('21121a1427', 'Sandeep Rao', 102),
    ('21121a1428', 'Anjali Kumar', 102),
    ('21121a1429', 'Rohit Reddy', 102),
    ('21121a1430', 'Neha Sharma', 102),
    ('21121a1431', 'Rakesh Naidu', 102),
    ('21121a1432', 'Swathi Rao', 102),
    ('21121a1433', 'Rajesh Kumar', 102),
    ('21121a1434', 'Sushma Reddy', 102),
    ('21121a1435', 'Ravi Sharma', 102),
    ('21121a1436', 'Priya Nair', 102),
    ('21121a1437', 'Sandeep Patel', 102),
    ('21121a1438', 'Ananya Sharma', 102),
    ('21121a1439', 'Vivek Nair', 102),
    ('21121a1440', 'Divya Sharma', 102)
	select * from student
INSERT INTO student (st_id, st_name, st_dept)
VALUES
    ('21121a0201', 'Safiyah Khan', 103),
    ('21121a0202', 'Vivek Kumar', 103),
    ('21121a0203', 'Manoj Reddy', 103),
    ('21121a0204', 'Abhishek Reddy', 103),
    ('21121a0205', 'Sarah Thomas', 103),
    ('21121a0206', 'Praveen Kumar', 103),
    ('21121a0207', 'Prabhu Raja', 103),
    ('21121a0208', 'Wilson Mathew', 103),
    ('21121a0209', 'Ananya Khan', 103),
    ('21121a0210', 'Nithya Sharma', 103),
    ('21121a0211', 'Amir Ahmed', 103),
    ('21121a0212', 'Rohit Reddy', 103),
    ('21121a0213', 'Neha Patel', 103),
    ('21121a0214', 'Sofia Joseph', 103),
    ('21121a0215', 'Anjali Naidu', 103),
    ('21121a0216', 'Divya Kumar', 103),
    ('21121a0217', 'Rajesh Mathew', 103),
    ('21121a0218', 'Sushma Reddy', 103),
    ('21121a0219', 'Ravi Patel', 103),
    ('21121a0220', 'Sara Ahmed', 103),
    ('21121a0221', 'Rakesh Nair', 103),
    ('21121a0222', 'Prabhu Reddy', 103),
    ('21121a0223', 'Sandeep Kumar', 103),
    ('21121a0224', 'Kareem Khan', 103),
    ('21121a0225', 'Swathi Thomas', 103),
    ('21121a0226', 'Ananya Khan', 103),
    ('21121a0227', 'Priya Sharma', 103),
    ('21121a0228', 'Ajay Naidu', 103),
    ('21121a0229', 'Neha Patel', 103),
    ('21121a0230', 'Sandeep Reddy', 103),
    ('21121a0231', 'Sofia Ahmed', 103),
    ('21121a0232', 'Praveen Reddy', 103),
    ('21121a0233', 'Vivek Kumar', 103),
    ('21121a0234', 'Anjali Patel', 103),
    ('21121a0235', 'Priya Reddy', 103),
    ('21121a0236', 'Rohit Khan', 103),
    ('21121a0237', 'Sara Reddy', 103),
    ('21121a0238', 'Amanullah Khan', 103),
    ('21121a0239', 'Christina Mathew', 103),
    ('21121a0240', 'Rahul Kumar', 103)
INSERT INTO student (st_id, st_name, st_dept)
VALUES
    ('21121a1101', 'Manoj Reddy', 104),
    ('21121a1102', 'Abhishek Kumar', 104),
    ('21121a1103', 'Praveen Naidu', 104),
    ('21121a1104', 'Prabhu Sharma', 104),
    ('21121a1105', 'Wilson Rao', 104),
    ('21121a1106', 'Ayesha Begum', 104),
    ('21121a1107', 'Fatima Khan', 104),
    ('21121a1108', 'Sandeep Kumar', 104),
    ('21121a1109', 'Anita Reddy', 104),
    ('21121a1110', 'John Christian', 104),
    ('21121a1111', 'Rajesh Patel', 104),
    ('21121a1112', 'Sneha Sharma', 104),
    ('21121a1113', 'Muhammad Khan', 104),
    ('21121a1114', 'Deepika Naidu', 104),
    ('21121a1115', 'Hari Prasad', 104),
    ('21121a1116', 'Sarah Thomas', 104),
    ('21121a1117', 'Vijay Kumar', 104),
    ('21121a1118', 'Nisha Reddy', 104),
    ('21121a1119', 'Priyanka Singh', 104),
    ('21121a1120', 'Vikram Sharma', 104),
    ('21121a1121', 'Aisha Siddiqui', 104),
    ('21121a1122', 'Krishna Kumar', 104),
    ('21121a1123', 'Shweta Gupta', 104),
    ('21121a1124', 'Ahmed Ali', 104),
    ('21121a1125', 'Nandini Reddy', 104),
    ('21121a1126', 'Kevin Mathew', 104),
    ('21121a1127', 'Shalini Rao', 104),
    ('21121a1128', 'Rahul Verma', 104),
    ('21121a1129', 'Neha Kumari', 104),
    ('21121a1130', 'Sanjay Singh', 104),
    ('21121a1131', 'Mehnaz Begum', 104),
    ('21121a1132', 'Vijay Sharma', 104),
    ('21121a1133', 'Amrita Patel', 104),
    ('21121a1134', 'Imran Khan', 104),
    ('21121a1135', 'Ayesha Siddiqui', 104),
    ('21121a1136', 'Rahul Sharma', 104),
    ('21121a1137', 'Riya Nair', 104),
    ('21121a1138', 'Siddharth Patel', 104),
    ('21121a1139', 'Zara Khan', 104),
    ('21121a1140', 'Varun Sharma', 104)

	INSERT INTO student (st_id, st_name, st_dept)
VALUES
    ('21121a1301', 'Aditya Sharma', 105),
    ('21121a1302', 'Niharika Reddy', 105),
    ('21121a1303', 'Rajeev Kumar', 105),
    ('21121a1304', 'Kirti Singh', 105),
    ('21121a1305', 'Rahul Naidu', 105),
    ('21121a1306', 'Alisha Verma', 105),
    ('21121a1307', 'Kunal Sharma', 105),
    ('21121a1308', 'Pooja Patel', 105),
    ('21121a1309', 'Arun Reddy', 105),
    ('21121a1310', 'Shweta Gupta', 105),
    ('21121a1311', 'Vikram Kumar', 105),
    ('21121a1312', 'Nisha Verma', 105),
    ('21121a1313', 'Rahul Patel', 105),
    ('21121a1314', 'Neha Kumari', 105),
    ('21121a1315', 'Vivek Singh', 105),
    ('21121a1316', 'Sneha Naidu', 105),
    ('21121a1317', 'Akash Sharma', 105),
    ('21121a1318', 'Kritika Reddy', 105),
    ('21121a1319', 'Rajesh Verma', 105),
    ('21121a1320', 'Preeti Patel', 105),
    ('21121a1321', 'Vishal Kumar', 105),
    ('21121a1322', 'Divya Sharma', 105),
    ('21121a1323', 'Rohit Naidu', 105),
    ('21121a1324', 'Anjali Verma', 105),
    ('21121a1325', 'Ravi Reddy', 105),
    ('21121a1326', 'Kavya Singh', 105),
    ('21121a1327', 'Rahul Kumar', 105),
    ('21121a1328', 'Neha Verma', 105),
    ('21121a1329', 'Ajay Patel', 105),
    ('21121a1330', 'Riya Kumari', 105),
    ('21121a1331', 'Siddharth Naidu', 105),
    ('21121a1332', 'Priya Sharma', 105),
    ('21121a1333', 'Vikas Reddy', 105),
    ('21121a1334', 'Nisha Verma', 105),
    ('21121a1335', 'Ravi Patel', 105),
    ('21121a1336', 'Anjali Kumari', 105),
    ('21121a1337', 'Rahul Naidu', 105),
    ('21121a1338', 'Pooja Verma', 105),
    ('21121a1339', 'Kunal Reddy', 105),
    ('21121a1340', 'Alisha Singh', 105);

INSERT INTO student (st_id, st_name, st_dept)
VALUES
    ('21121a1201', 'Aman Gupta', 106),
    ('21121a1202', 'Riya Sharma', 106),
    ('21121a1203', 'Prateek Patel', 106),
    ('21121a1204', 'Anjali Reddy', 106),
    ('21121a1205', 'Vikram Kumar', 106),
    ('21121a1206', 'Neha Verma', 106),
    ('21121a1207', 'Rahul Naidu', 106),
    ('21121a1208', 'Sneha Sharma', 106),
    ('21121a1209', 'Akash Reddy', 106),
    ('21121a1210', 'Kirti Patel', 106),
    ('21121a1211', 'Vivek Verma', 106),
    ('21121a1212', 'Riya Naidu', 106),
    ('21121a1213', 'Ankit Sharma', 106),
    ('21121a1214', 'Nisha Reddy', 106),
    ('21121a1215', 'Ravi Kumar', 106),
    ('21121a1216', 'Alisha Patel', 106),
    ('21121a1217', 'Rahul Sharma', 106),
    ('21121a1218', 'Pooja Reddy', 106),
    ('21121a1219', 'Siddharth Kumar', 106),
    ('21121a1220', 'Priya Verma', 106),
    ('21121a1221', 'Kunal Naidu', 106),
    ('21121a1222', 'Riya Sharma', 106),
    ('21121a1223', 'Ravi Patel', 106),
    ('21121a1224', 'Anjali Kumar', 106),
    ('21121a1225', 'Aman Reddy', 106),
    ('21121a1226', 'Neha Gupta', 106),
    ('21121a1227', 'Rahul Sharma', 106),
    ('21121a1228', 'Sneha Patel', 106),
    ('21121a1229', 'Akash Reddy', 106),
    ('21121a1230', 'Kirti Verma', 106),
    ('21121a1231', 'Vivek Naidu', 106),
    ('21121a1232', 'Riya Sharma', 106),
    ('21121a1233', 'Ankit Reddy', 106),
    ('21121a1234', 'Nisha Patel', 106),
    ('21121a1235', 'Ravi Kumar', 106),
    ('21121a1236', 'Alisha Reddy', 106),
    ('21121a1237', 'Rahul Sharma', 106),
    ('21121a1238', 'Pooja Patel', 106),
    ('21121a1239', 'Siddharth Reddy', 106),
    ('21121a1240', 'Priya Kumar', 106);

	select * from student







CREATE TABLE exam_material (
material_id           INT            PRIMARY KEY,
sub_id            VARCHAR(30)        foreign key references subjects(sub_id),
material_name     VARCHAR(70)            NOT NULL,
description TEXT,
);

select * from exam_material
-- Insert values into exam_material table
INSERT INTO exam_material (material_id, sub_id, material_name, description)
VALUES
    (1, '20BT50502', 'DAA Exam Guide', 'Comprehensive guide on algorithm design techniques'),
    (2, '20BT12901', 'DMS Study Notes', 'Introduction to discrete mathematics concepts'),
    (3, '20BT41501', 'TOC Textbook', 'Exploration of automata theory and formal languages'),
    (4, '20BT40501', 'DBMS Reference Manual', 'Fundamental principles of database management systems'),
    (5, '20BT31501', 'OS Study Materials', 'Operating system concepts and functionalities'),
    (6, '20BT31201', 'Software Engineering Handbook', 'Software engineering methodologies and practices'),
    (7, '20BT40101', 'Electrical Circuits Guide', 'Fundamental concepts of electrical circuits and devices'),
    (8, '20BT40102', 'Electronic Engineering Basics', 'Introduction to electronic engineering principles'),
    (9, '20BT40103', 'Semiconductor Devices Handbook', 'Study of semiconductor devices and their applications'),
    (10, '20BT40104', 'Signals and Systems Primer', 'Introduction to signals and systems analysis'),
    (11, '20BT40301', 'Data Organization and Manipulation Book', 'Mathematical foundations of data organization and manipulation'),
    (12, '20BT40302', 'Electromagnetism Textbook', 'Study of electromagnetism and magnetic fields'),
    (13, '20BT40303', 'Fluid Mechanics Guide', 'Introduction to fluid mechanics and material science'),
    (14, '20BT40304', 'Thermodynamics and Energy Conversion Book', 'Study of thermodynamics and energy conversion systems'),
    (15, '20BT40401', 'Analog Circuits Handbook', 'Fundamental principles of analog circuits and systems'),
    (16, '20BT40402', 'Electronic Communications Guide', 'Introduction to electronic communications and antennas'),
    (17, '20BT40403', 'Logic Design Textbook', 'Study of logic design and integrated circuit applications'),
    (18, '20BT40404', 'Power Systems Handbook', 'Introduction to power systems and renewable energy sources'),
    (19, '20BT40405', 'Microprocessors and Interfacing Book', 'Fundamental principles of microprocessors and interfacing'),
    (20, '20BT40441', 'Aerospace Engineering Basics', 'Introduction to aerospace engineering principles'),
    (21, '20BT40201', 'Computer Science Fundamentals', 'Introduction to computer science concepts and programming'),
    (22, '20BT40202', 'Data Engineering Essentials', 'Fundamental principles of data engineering and analytics'),
    (23, '20BT40203', 'Electromagnetic Waves Handbook', 'Study of electromagnetic waves and transmission lines'),
    (24, '20BT40204', 'Mobile Telecommunications Guide', 'Introduction to mobile telecommunications systems');


create table invigilator(
invig_id         int            primary key,
invig_name      varchar(30)     not null,
dep        int            foreign key references dept(did)
);


 INSERT INTO invigilator (invig_id, invig_name, dep) VALUES (1920125601, 'Basheer', 104);     
 INSERT INTO invigilator (invig_id, invig_name, dep) VALUES (1920125602, 'Shilpa', 104);      
 INSERT INTO invigilator (invig_id, invig_name, dep) VALUES (1920125603, 'Chengamma', 104);   
 INSERT INTO invigilator (invig_id, invig_name, dep) VALUES (1920125604, 'Jhoshna', 104);     
 INSERT INTO invigilator (invig_id, invig_name, dep) VALUES (1920125605, 'Bharat', 104);      
 INSERT INTO invigilator (invig_id, invig_name, dep) VALUES (1920125606, 'Yogendra prasad', 101);  
 INSERT INTO invigilator (invig_id, invig_name, dep) VALUES (1920125607, 'Ramu', 101);        
 INSERT INTO invigilator (invig_id, invig_name, dep) VALUES (1920125608, 'Dhanalakshmi', 101);    
 INSERT INTO invigilator (invig_id, invig_name, dep) VALUES (1920125609, 'Sandeep kumar', 101);   
 INSERT INTO invigilator (invig_id, invig_name, dep) VALUES (1920125610, 'Siva kumar', 105);  
 INSERT INTO invigilator (invig_id, invig_name, dep) VALUES (1920125611, 'Trinad', 105);     
 INSERT INTO invigilator (invig_id, invig_name, dep) VALUES (1920125612, 'Balakrishna', 105);   
 INSERT INTO invigilator (invig_id, invig_name, dep) VALUES (1920125613, 'Mishra', 103);     
 INSERT INTO invigilator (invig_id, invig_name, dep) VALUES (1920125614, 'Sunil', 103);      
 INSERT INTO invigilator (invig_id, invig_name, dep) VALUES (1920125615, 'Venkatesh', 103);  
 INSERT INTO invigilator (invig_id, invig_name, dep) VALUES (1920125616, 'Venkatadri', 102);     
 INSERT INTO invigilator (invig_id, invig_name, dep) VALUES (1920125617, 'sujatha', 102);    
 INSERT INTO invigilator (invig_id, invig_name, dep) VALUES (1920125618, 'Manohar', 102);    
INSERT INTO invigilator (invig_id, invig_name, dep) VALUES (1920125619, 'Kalpana', 106);    
INSERT INTO invigilator (invig_id, invig_name, dep) VALUES (1920125620, 'Nirmala', 106);    


select * from invigilator

create table st_room(
r_id        int         foreign key references exam_room(r_id),
st_id      varchar(30)  foreign key references student(st_id)
);

insert into st_room(st_id,r_id)        
VALUES
('21121a1501', 609),
('21121a1502', 609),
('21121a1503', 609),
('21121a1504', 609),
('21121a1505', 609),
('21121a1506', 609),
('21121a1507', 609),
('21121a1508', 609),
('21121a1509', 609),
('21121a1510', 609),
('21121a1511', 609),
('21121a1512', 609),
('21121a1513', 609),
('21121a1514', 609),
('21121a1515', 609),
('21121a1516', 609),
('21121a1517', 609),
('21121a1518', 609),
('21121a1519', 609),
('21121a1520', 609),
('21121a1521', 609),
('21121a1522', 609),
('21121a1523', 609),
('21121a1524', 609),
('21121a1525', 609),
('21121a1526', 609),
('21121a1527', 609),
('21121a1528', 609),
('21121a1529', 609),
('21121a1530', 609),
('21121a1531', 610),
('21121a1532', 610),
('21121a1533', 610),
('21121a1534', 610),
('21121a1535', 610),
('21121a1536', 610),
('21121a1537', 610),
('21121a1538', 610),
('21121a1539', 610),
('21121a1540', 610),

('21121a1401', 227),
('21121a1402', 227),
('21121a1403', 227),
('21121a1404', 227),
('21121a1405', 227),
('21121a1406', 227),
('21121a1407', 227),
('21121a1408', 227),
('21121a1409', 227),
('21121a1410', 227),
('21121a1411', 227),
('21121a1412', 227),
('21121a1413', 227),
('21121a1414', 227),
('21121a1415', 227),
('21121a1416', 227),
('21121a1417', 227),
('21121a1418', 227),
('21121a1419', 227),
('21121a1420', 227),
('21121a1421', 228),
('21121a1422', 228),
('21121a1423', 228),
('21121a1424', 228),
('21121a1425', 228),
('21121a1426', 228),
('21121a1427', 228),
('21121a1428', 228),
('21121a1429', 228),
('21121a1430', 228),
('21121a1431', 228),
('21121a1432', 228),
('21121a1433', 228),
('21121a1434', 228),
('21121a1435', 228),
('21121a1436', 228),
('21121a1437', 228),
('21121a1438', 228),
('21121a1439', 228),
('21121a1440', 228),
('21121a0201', 2126),
    ('21121a0202', 2126),
    ('21121a0203', 2126),
    ('21121a0204', 2126),
    ('21121a0205', 2126),
    ('21121a0206', 2126),
    ('21121a0207', 2126),
    ('21121a0208', 2126),
    ('21121a0209', 2126),
    ('21121a0210', 2126),
    ('21121a0211', 2126),
    ('21121a0212', 2126),
    ('21121a0213', 2126),
    ('21121a0214', 2126),
    ('21121a0215', 2126),
    ('21121a0216', 2126),
    ('21121a0217', 2126),
    ('21121a0218', 2126),
    ('21121a0219', 2126),
    ('21121a0220', 2126),
    ('21121a0221', 2126),
    ('21121a0222', 2126),
    ('21121a0223', 2126),
    ('21121a0224', 2126),
    ('21121a0225', 2126),
    ('21121a0226', 2127),
    ('21121a0227', 2127),
    ('21121a0228', 2127),
    ('21121a0229', 2127),
    ('21121a0230', 2127),
    ('21121a0231', 2127),
    ('21121a0232', 2127),
    ('21121a0233', 2127),
    ('21121a0234', 2127),
    ('21121a0235', 2127),
    ('21121a0236', 2127),
    ('21121a0237', 2127),
    ('21121a0238', 2127),
    ('21121a0239', 2127),
    ('21121a0240', 2127),
	('21121a1101', 1060),
        ('21121a1102', 1060),
        ('21121a1103', 1060),
        ('21121a1104', 1060),
        ('21121a1105', 1060),
        ('21121a1106', 1060),
        ('21121a1107', 1060),
        ('21121a1108', 1060),
        ('21121a1109', 1060),
        ('21121a1110', 1060),
        ('21121a1111', 1060),
        ('21121a1112', 1060),
        ('21121a1113', 1060),
        ('21121a1114', 1060),
        ('21121a1115', 1060),
        ('21121a1116', 1060),
        ('21121a1117', 1060),
        ('21121a1118', 1060),
        ('21121a1119', 1060),
        ('21121a1120', 1060),
        ('21121a1121', 1060),
        ('21121a1122', 1060),
        ('21121a1123', 1060),
        ('21121a1124', 1060),
        ('21121a1125', 1060),
        ('21121a1126', 1060),
        ('21121a1127', 1061),
        ('21121a1128', 1061),
        ('21121a1129', 1061),
        ('21121a1130', 1061),
        ('21121a1131', 1061),
        ('21121a1132', 1061),
        ('21121a1133', 1061),
        ('21121a1134', 1061),
        ('21121a1135', 1061),
        ('21121a1136', 1061),
        ('21121a1137', 1061),
        ('21121a1138', 1061),
        ('21121a1139', 1061),
        ('21121a1140', 1061),
		 ('21121a1301', 610),
    ('21121a1302', 610),
    ('21121a1303', 610),
    ('21121a1304', 610),
    ('21121a1305', 610),
    ('21121a1306', 610),
    ('21121a1307', 610),
    ('21121a1308', 610),
    ('21121a1309', 610),
    ('21121a1310', 610),
    ('21121a1311', 610),
    ('21121a1312', 610),
    ('21121a1313', 610),
    ('21121a1314', 610),
    ('21121a1315', 610),
    ('21121a1316', 610),
    ('21121a1317', 610),
    ('21121a1318', 610),
    ('21121a1319', 610),
    ('21121a1320', 610),
    ('21121a1321', 226),
    ('21121a1322', 226),
    ('21121a1323', 226),
    ('21121a1324', 226),
    ('21121a1325', 226),
    ('21121a1326', 226),
    ('21121a1327', 226),
    ('21121a1328', 226),
    ('21121a1329', 226),
    ('21121a1330', 226),
    ('21121a1331', 226),
    ('21121a1332', 226),
    ('21121a1333', 226),
    ('21121a1334', 226),
    ('21121a1335', 226),
    ('21121a1336', 226),
    ('21121a1337', 226),
    ('21121a1338', 226),
    ('21121a1339', 226),
    ('21121a1340', 226),
	
    ('21121a1201', 608),
    ('21121a1202', 608),
    ('21121a1203', 608),
    ('21121a1204', 608),
    ('21121a1205', 608),
    ('21121a1206', 608),
    ('21121a1207', 608),
    ('21121a1208', 608),
    ('21121a1209', 608),
    ('21121a1210', 608),
    ('21121a1211', 608),
    ('21121a1212', 608),
    ('21121a1213', 608),
    ('21121a1214', 608),
    ('21121a1215', 608),
    ('21121a1216', 608),
    ('21121a1217', 608),
    ('21121a1218', 608),
    ('21121a1219', 608),
    ('21121a1220', 608),
    ('21121a1221', 608),
    ('21121a1222', 608),
    ('21121a1223', 608),
    ('21121a1224', 608),
    ('21121a1225', 608),
    ('21121a1226', 608),
    ('21121a1227', 608),
    ('21121a1228', 608),
    ('21121a1229', 608),
    ('21121a1230', 608),
    ('21121a1231', 2127),
    ('21121a1232', 2127),
    ('21121a1233', 2127),
    ('21121a1234', 2127),
    ('21121a1235', 2127),
    ('21121a1236', 2127),
    ('21121a1237', 2127),
    ('21121a1238', 2127),
    ('21121a1239', 2127),
    ('21121a1240', 2127);
alter table st_room
add invig_id int  foreign key references invigilator(invig_id)

update  st_room  set invig_id = 1920125612
   where r_id=610

 select * from invigilator




select * from dept
select * from block
select * from block_room
select * from subjects
select * from student
select * from exam_schedule
select * from exam_material
select * from invigilator
select * from exam_room
select * from st_room
