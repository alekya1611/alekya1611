create table nurse(
employeeid int NOT NUll,
name varchar(50) NOT NULL,
position varchar(50) NOT NULL,
registered varchar(50) NOT NULL,
ssn int NOT NULL,
PRIMARY KEY(employeeid)
);
insert into nurse(employeeid,name,position,registered,ssn) values ("101","Carla Espinosa"," Head Nurse","true","111111110"), ("102","Laverne Roberts","Nurse","true","222222220") ,("103","Paul Flowers","Nurse","false","333333330");
select *from nurse;
insert into nurse(employeeid,name,position,registered,ssn) values("104","santhi","nurse","false","444444440"),("105","nirmala","nurse","false","55555550"),("106","ashok","nurse","true","66666660"),("107","sai","nurse","false","77777770"),("108","panish","nurse","true","88888880");
select name as"NAME",position as "POSITION" from nurse ;
select name,position from nurse where position = "headnurse";
select *from nurse where position="headnurse";
select *from nurse where position="Head Nurse";
select name from nurse where registered="false";
create table physician(
empid int NOT NULL PRIMARY KEY,
name varchar(50) NOT NULL ,
position varchar(50) NOT NULL,
ssn int NOT NULL
);
insert into physician(empid,name,position,ssn) values(1,"harish","staff",111),(2,"pani","headstaff",222), (3,"nandu","staff",333),(4,"chandu","staff",444),(5,"chandu","headstaff",555);

select *from physician;
create table department(
deptid int NOT NULL PRIMARY KEY,
deptname varchar(50) NOT NUll,
head int NOT NULL
);
insert into department(deptid,deptname,head) values(1,"general ward",3),(2,"icu",4),(3,"normal",2);
select *from department;
select d.deptname as department, p.name as physician from department d ,physician p where d.head=p.empid;
create table appoitment(
aptid int NOT NULL PRIMARY KEY,
patient int NOT NULL,
nurse int NOT NULL,
physician int NOT NULL,
examroom varchar(50) NOT NULL
);
insert into appoitment(aptid,patient,nurse,physician,examroom) values (11,101,1,1,"a"),
(22,102,3,2,"b"),
(33,103,1,3,"c"),
(44,102,1,4,"d"),
(55,101,1,5,"e"),
(66,103,1,6,"f"),
(77,104,1,7,"g");
select count(distinct patient) as "details" from appoitment;
select count(distinct patient) as "details" from appoitment;
create table room(
roomno int NOT NULL PRIMARY KEY,
roomtype varchar(50) NOT NULL,
floor int NOT NULL,
availability varchar(50) NOT NULL
);
insert into room(roomno,roomtype,floor,availability) values(101,"single",1,"yes"),(102,"double",2,"no"),(103,"single",3,"yes"),(104,"double",4,"no"),(105,"single",5,"yes");

select *from room;
select count(*) as "current details" from room where availability="yes";
create database students;
create table marks(
stuid int NOT NULL PRIMARY KEY,
studentname varchar(50) NOT NULL,
marks int NOT NULL
);
insert into marks(stuid,studentname,marks) values (1,"a",80),
(2,"b",90),
(3,"c",100),
(4,"d",89),
(5,"e",60),
(6,"f",70),
(7,"g",90),
(8,"h",50);
select *from marks;
select max(marks) as "maximum" from marks;
select max(marks) from marks where marks < (select max(marks) from marks);
create table details(
studid int NOT NUll PRIMARY KEY,
studname varchar(50) NOT NULL,
location varchar(50) NOT NULL,
grade varchar(50) NOT NULL
);
insert into details(studid,studname,location,grade) values (1,"a","AP","A"),
(2,"b","telengana","B"),
(3,"c","gujarat","C"),
(4,"d","kerala","D"),
(5,"e","punjab","C"),
(6,"f","tamilnadu","B");
select *from details;
select *from detials where grade = "C";
alter table details 
rename column studid to studentid;
alter table details 
modify column studentid  varchar(50);
alter table details add email varchar(50);
select *from details;
alter table details drop column email;
select *from details;
describe details;
select *from details where grade ="C";
create database Student;
create table detail(
regdid varchar(20) NOT NULL PRIMARY KEY,
studname varchar(20) NOT NULL,
marks int NOT NULL);
drop table detail;
create table detail(
regdid varchar(20) NOT NULL PRIMARY KEY,
studname varchar(20) NOT NULL,
marks int NOT NULL);
insert into detail(regdid,studname,marks) values("a001","harish",90),("a002","balu",40),("a003","chandu",95),("a004","hirish",75),("a005","mani",98),("a006","kiran",70),("a007","sai",65),("a008","manoj",45),("a009","ramesh",35),("a010","raju",25);
select *from detail where marks=45;
select *from detail where marks<=50;
select *from detail where marks>50;
select *from detail where marks>=45;
select *from detail where marks<>45;
select *from detail where marks!=45;
select *from detail where marks between 70 and 90;
select *from detail where marks not between 70 and 90;
select *from detail where studname not like "r%";
select *from detail where studname like "r%";
select *from detail where studname like "_i%";
select *from detail where studname like "%n";
select *from detail where studname like "_a%";
select *from detail where studname like "__n%";
select *from detail where marks in (45,90);
select *from detail where marks in (45,70);
SELECT * FROM Detail WHERE studname = "nivesh" AND Marks = 30;
SELECT * FROM detail WHERE studname = "manoj" or Marks = 70;
select *from detail where marks=65 and (studname="sai" or "balu");
select *from detail where studname="sai" and (marks=65 or marks=45);
select *from detail where studname="sai" or (marks=65 or marks=45);
select *from detail order by marks; 
select *from detail order by marks desc;
select *from detail order by studname;
select *from detail order by studname desc;
select *from detail order by studname desc ,marks asc; 
insert into detail(regdid,studname,marks) values("a011","sai",100);
select *from detail order by studname desc ,marks asc;
update detail set studname="alekya", marks=100 where regdid="a001";
select *from detail;
alter table detail  rename column marks to smarks;
select *from detail;
delete from detail where regdid="a011";
select *from detail;
truncate covid_patient;
select *from detail limit 5;
select *from detail where smarks > 50 limit 3;
select min(smarks) from detail;
select *from detail where smarks =(select min(smarks) from detail);
select *from detail where smarks =(select max(smarks) from detail);
select *from detail order by smarks desc limit 3;
select count(smarks) from detail;
select sum(smarks) from detail;
select avg(smarks) from detail;
create table test(
date DATE NOT NULL
);
describe detail;
select count(studname),smarks from detail group by smarks;
select count(studname),smarks from detail group by smarks order by smarks;
select count(studname),smarks from detail group by smarks order by smarks desc;
describe marks;
select count(studentname),marks from marks group by marks having count(studentname)>1; 
select count(studentname),marks from marks group by marks having count(studentname)>1 order by marks; 
# select * from marks where std_name like "[sai]%";
# select * from marks where std_name like "[a-d]%";























