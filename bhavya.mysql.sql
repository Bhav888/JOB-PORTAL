create table student(
    Stud_Id int,
    Stud_name varchar(200),
    Stud_Address varchar(300),
    Skills varchar(200),
    Stud_CGPA DOUBLE
);
select *from student;
create  table college(
    college_Id int,
    college_Name varchar(200),
    college_department varchar(100)
);
select *from student;
create table company(
    company_Id int,
    company_Name varchar(200),
    location varchar(30),
    company_Type varchar(30),
    salary double
);
select *from company;
create table admin(
    password varchar(200),
    email varchar(200)
);
select*from admin;
alter table admin
add admin_Id int;
select *from admin;
alter table company
drop column company_id;
alter table company
add skill varchar(200);
alter table company
add  10_criteria double;
alter table company
add  12_criteria double;
alter table company
add  cgpa double;


drop TABLE company;
create table company(
    skill VARCHAR(200),
    company_Name varchar(200),
    location varchar(30),
    company_Type varchar(30),
    salary double,
    10_criteria double,
    12_criteria double,
    cgpa double
);
INSERT INTO company (company_Name, salary, company_Type, 10_criteria, 12_criteria, cgpa) 
VALUES ('Tcs', 3700000, 'Service-Based', 60.0, 60.0, 6.5);

INSERT INTO company (location) 
VALUES ('Pune'), ('Mumbai'), ('Bengaluru'), ('Indore'), ('Gandhinagar'), ('Hyderabad'), ('Delhi');

INSERT INTO company (skill) 
VALUES ('Java'), ('Python'), ('Web Development');
SELECT*from company;
create table company(
    skill VARCHAR(200),
    company_Name varchar(200),
    location varchar(30),
    company_Type varchar(30),
    salary double,
    10_criteria double,
    12_criteria double,
    cgpa double
);
INSERT INTO company (company_Name, salary,location,skill, company_Type, 10_criteria, 12_criteria, cgpa) 
VALUES ('Tcs', 3700000,'Pune, Mumbai, Bengaluru, Hyderabad, Delhi', 'Java, Python, Web Development','Service-Based', 60.0, 60.0, 6.5);
drop  table company;
create table company(
    skill VARCHAR(250),
    company_Name varchar(200),
    location varchar(250),
    company_Type varchar(50),
    salary double,
    10_criteria double,
    12_criteria double,
    cgpa double
);
INSERT INTO company (company_Name, salary,location,skill, company_Type, 10_criteria, 12_criteria, cgpa) 
VALUES ('Tcs', 3700000,'Pune, Mumbai, Bengaluru, Hyderabad, Delhi', 'Java, Python, Web Development','Service-Based', 60.0, 60.0, 6.5);
SELECT *from company;
drop  table company;
drop table company;
create table company(
    
    company_Name varchar(200),
    10_criteria double,
    12_criteria double,
    cgpa double,
    skill VARCHAR(250),
    company_Type varchar(50),
    location varchar(250),
    salary double
);
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Tcs',  60.0, 60.0, 6.5,'Java, Python, Web Development','Service-Based','Pune, Mumbai, Bengaluru, Hyderabad, Delhi',370000);
SELECT *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Accenture',  60.0, 60.0, 6.5,'Java, Python, cpp, javaScript','Service-Based','Pune, Mumbai, Bengaluru, Hyderabad, New Delhi, Indore, kolkata, chennai',300000);
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Tech Mahindra',  60.0, 70.0, 7.0,'Java, Python, cpp','Service-Based','Pune, Mumbai, Ahmedabad, Bengluru, Bhubaneswar, Chennai, Candigarh, Gandhinagar',270000);
SELECT *from company;
UPDATE company
SET cgpa = 7.1
WHERE company_Name='Tech Mahindra';
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Infosys',  60.0, 70.0, 7.0,'Java, Python, .NET, JavaScript','Service-Based','Pune, Mumbai, Chennai, Indore, Gujrat',300000);
SELECT *from company;
UPDATE company
SET cgpa = 6.5 , 12_criteria = 60.0
WHERE company_Name='Infosys';
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Nvidia',  70.0, 70.0, 7.1,'Java, c, cpp,  Python, Data Structure, JavaScript','Product-Based','Pune, Mumbai, Hydrabad, Bengluru, Telangana',1700000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Amdocs',  60.0, 60.0, 6.5,'Unix, Sql, Scripting Language','SemiProduct-Based','Pune, NaviMumbai, Gurugran ',1200000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('NielsonIQ',  60.0, 60.0, 6.5,'Sql, python, c, cpp, Data Manupulation','Product-Based','Pune, Mumbai, Chennai, Gurugran ',428000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('BNY Mellon',  60.0, 60.0, 6.5,'Java, python, c, cpp, JavaScript, Ruby','Investment-Based','Pune, Mumbai, Chennai ',100000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Nice Systems',  60.0, 60.0, 6.1,'Java, python, c, cpp, JavaScript, Ruby','service-Based','Pune, Mumbai ',550000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Wordland',  60.0, 60.0, 6.1,'Java, python, c, cpp, JavaScript, Sql','service-Based','Pune, Mumbai, Bangalore, Chennai ',1200000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('ITC',  60.0, 60.0, 6.5,'Java, python, c, cpp, JavaScript','product-Based','Pune, Mumbai ',500000); 
select *from company;
UPDATE company
SET location = 'Bengluru, Saharanpur, Ambernath, Kolkata, Hydrabad, Pune, Mumbai'
WHERE company_Name='ITC';
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Jio',  60.0, 60.0, 6.5,'Java, python, c, cpp, Sql','Telicomunication','Pune, Mumbai, NaviMumbai,NewDelhi',600000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Cognizant',  60.0, 60.0, 6.5,'Java, python, c, cpp','service-Based','Pune, Mumbai, NewMumbai, Thane, Karnatak, Chennai, Delhi ',400000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('PTC',  60.0, 60.0, 6.1,'Java, python, c, cpp, Sql','product-Based','Pune, Mumbai, Delhi, Bengluru ',340000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Wipro',  60.0, 60.0, 6.5,'Java, python, c, cpp, Sql, DBMS','Service-Based','Pune, Mumbai, NaviMumbai, Bengaluru, Ahmedabad ',950000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Persistent',  60.0, 60.0, 6.1,'Java, python, c, cpp, Sql, DBMS','product-Based','Pune, Mumbai, Bengaluru, Indore, Gurugran ',1800000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Atlas',  60.0, 60.0, 6.5,'Java, python, cpp, Excel','product-Based','Pune, Haryana, Chennai, Karnataka, Kolkata, Udaipur ',800000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Phonepe',  60.0, 60.0, 6.5,'python, c, cpp, DataStructure','service-Based','Pune, Mumbai, Karnataka, Uttar pradesh, Gujrat, Delhi, Telangana ',2000000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Maruti',  60.0, 60.0, 6.5,'Java, Sql, cs fundamental, Oop, DBMS, OS','product-Based','Pune, Mumbai, Chandigarh, Delhi, Bhopal, Mangalore, Ludhiane, Agra ',392000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Bajaj',  60.0, 60.0, 6.5,'Java, mySql, c, cpp','product-Based','Pune, Mumbai, Aurangabad, Delhi, Bihar, Karnataka, Telangana, Madhya pradesh ',300000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('LTI',  60.0, 60.0, 6.5,'Java, python, c, cpp','service-Based','Pune, Mumbai, NaviMumbai, Kolkata, chennai, Bengaluru ',1600000); 
select *from company;
UPDATE company
SET company_Name='Wordline'
WHERE salary=1200000;
SELECT *from company;
SELECT* from student;
drop table student;
create table student(
    first_name varchar(200),
    last_name varchar(200),
    DOB int,
    Email_id varchar(200),
    Mobile_No int,
    Gender varchar(20),
    Address varchar(200)
);
SELECT*FROM STUDENT;
drop table student;
create table studentdetail(
    first_name varchar(200),
    last_name varchar(200),
    DOB int,
    Email_id varchar(200),
    Mobile_No int,
    Gender varchar(20),
    Address varchar(200)
);
SELECT*FROM studentdetail;
drop table studentdetail;
create table studentdetail(
    First_name varchar(200),
    Last_name varchar(200),
    DOB int,
    Email_id varchar(200),
    Mobile_No int,
    Gender varchar(20),
    Address varchar(200)
);
SELECT*FROM studentdetail;
drop table studentdetail;
create table studentdetail(
    First_name varchar(200),
    Last_name varchar(200),
    DOB int,
    Email_id varchar(200),
    Mobile_No varchar(200),
    Gender varchar(20),
    Address varchar(200)
);
SELECT*FROM studentdetail;
drop table studentdetail;
create table Studentdetail(
    First_name varchar(200),
    Last_name varchar(200),
    DOB int,
    Email_id varchar(200),
    Mobile_No varchar(200),
    Gender varchar(20),
    Address varchar(200)
);
drop table studentdetail;
CREATE TABLE IF NOT EXISTS studentdetail (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    mobile VARCHAR(15) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    address TEXT
);
drop table studentdetail;
CREATE TABLE student (
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    mobile VARCHAR(15) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    address TEXT
);
select *from student;
select *from student;
drop table student;
create table Studentdetail(
    First_name varchar(200),
    Last_name varchar(200),
    DOB int,
    Email_id varchar(200),
    Mobile_No varchar(200),
    Gender varchar(20),
    Address varchar(200)
);
select *from student;
drop table studentdetail;
create table studentdetail(
    First_name varchar(200),
    Last_name varchar(200),
    DOB int,
    Email_id varchar(200),
    Mobile_No int,
    Gender varchar(20),
    Address varchar(200)
);
SELECT*FROM studentdetail;
drop table studentdetail;
create table studentdetail(
    First_name varchar(200),
    Last_name varchar(200),
    DOB Date,
    Email_id varchar(200),
    Mobile_No varchar(10),
    Gender varchar(20),
    Address varchar(200)
);
SELECT*FROM studentdetail;
drop table admin;
CREATE TABLE admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(100) NOT NULL
);
select * FROM admin;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('amazon',  80.0, 80.0, 8.5,'Java, python, sql, microsoft, cloud computing, c, cpp','product-Based','Pune, Mumbai, NaviMumbai, Hydrabad, Bengaluru ',1700000); 
select *from company;
drop table company;
create table company(
    
    company_Name varchar(200),
    10_criteria decimal(4,2),
    12_criteria decimal(4,2),
    cgpa decimal(4,2),
    skill VARCHAR(250),
    company_type varchar(50),
    location varchar(250),
    salary double
);

DROP 
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Tcs',  60.0, 60.0, 6.5,'Java, Python, Web Development','Service-Based','Pune, Mumbai, Bengaluru, Hyderabad, Delhi',370000);
SELECT *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Accenture',  60.0, 60.0, 6.5,'Java, Python, cpp, javaScript','Service-Based','Pune, Mumbai, Bengaluru, Hyderabad, New Delhi, Indore, kolkata, chennai',300000);
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Tech Mahindra',  60.0, 70.0, 7.0,'Java, Python, cpp','Service-Based','Pune, Mumbai, Ahmedabad, Bengaluru, Bhubaneswar, Chennai, Candigarh, Gandhinagar',270000);
SELECT *from company;
UPDATE company
SET cgpa = 7.1
WHERE company_Name='Tech Mahindra';
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Infosys',  60.0, 70.0, 7.0,'Java, Python, .NET, JavaScript','Service-Based','Pune, Mumbai, Chennai, Indore, Gujrat',300000);
SELECT *from company;
UPDATE company
SET cgpa = 6.5 , 12_criteria = 60.0
WHERE company_Name='Infosys';
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Nvidia',  70.0, 70.0, 7.1,'Java, c, cpp,  Python, Data Structure, JavaScript','Product-Based','Pune, Mumbai, Hyderabad, Bengaluru, Telangana',1700000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Amdocs',  60.0, 60.0, 6.5,'Java, Sql, Scripting Language','SemiProduct-Based','Pune, NaviMumbai, Gurugran ',1200000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('NielsonIQ',  60.0, 60.0, 6.5,'Sql, python, c, cpp, Data Manupulation','Product-Based','Pune, Mumbai, Chennai, Gurugran ',428000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('BNY Mellon',  60.0, 60.0, 6.5,'Java, python, c, cpp, JavaScript, Ruby','Investment-Based','Pune, Mumbai, Chennai ',100000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Nice Systems',  60.0, 60.0, 6.1,'Java, python, c, cpp, JavaScript, Ruby','service-Based','Pune, Mumbai ',550000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Wordline',  60.0, 60.0, 6.1,'Java, python, c, cpp, JavaScript, Sql','service-Based','Pune, Mumbai, Bangalore, Chennai ',1200000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('ITC',  60.0, 60.0, 6.5,'Java, python, c, cpp, JavaScript','product-Based','Pune, Mumbai ',500000); 
select *from company;
UPDATE company
SET location = 'Bengaluru, Saharanpur, Ambernath, Kolkata, Hyderabad, Pune, Mumbai'
WHERE company_Name='ITC';
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Jio',  60.0, 60.0, 6.5,'Java, python, c, cpp, Sql','Telicomunication','Pune, Mumbai, NaviMumbai,NewDelhi',600000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Cognizant',  60.0, 60.0, 6.5,'Java, python, c, cpp','service-Based','Pune, Mumbai, NewMumbai, Thane, Karnatak, Chennai, Delhi ',400000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('PTC',  60.0, 60.0, 6.1,'Java, python, c, cpp, Sql','product-Based','Pune, Mumbai, Delhi, Bengaluru ',340000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Wipro',  60.0, 60.0, 6.5,'Java, python, c, cpp, Sql, DBMS','Service-Based','Pune, Mumbai, NaviMumbai, Bengaluru, Ahmedabad ',950000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Persistent',  60.0, 60.0, 6.1,'Java, python, c, cpp, Sql, DBMS','product-Based','Pune, Mumbai, Bengaluru, Indore, Gurugran ',1800000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Atlas',  60.0, 60.0, 6.5,'Java, python, cpp, Excel','product-Based','Pune, Haryana, Chennai, Karnataka, Kolkata, Udaipur ',800000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Phonepe',  60.0, 60.0, 6.5,'python, c, cpp, DataStructure','service-Based','Pune, Mumbai, Karnataka, Uttar pradesh, Gujrat, Delhi, Telangana ',2000000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Maruti',  60.0, 60.0, 6.5,'Java, Sql, cs fundamental, Oop, DBMS, OS','product-Based','Pune, Mumbai, Chandigarh, Delhi, Bhopal, Mangalore, Ludhiane, Agra ',392000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Bajaj',  60.0, 60.0, 6.5,'Java, mySql, c, cpp','product-Based','Pune, Mumbai, Aurangabad, Delhi, Bihar, Karnataka, Telangana, Madhya pradesh ',300000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('LTI',  60.0, 60.0, 6.5,'Java, python, c, cpp','service-Based','Pune, Mumbai, NaviMumbai, Kolkata, chennai, Bengaluru ',1600000); 
select *from company;
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Google',  60.0, 60.0, 8.5,'Java, JavaScript , Datastructure, python, c, cpp','product-Based','Pune, Mumbai, Delhi, Hyderabad, Bamsalore ',1700000); 
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Capgemini',  60.0, 60.0, 6.1,'Java, python, css, Html, cpp','service-Based','Pune, Mumbai, chennai, Bengaluru, Delhi',2000000); 
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Deloitte',  60.0, 60.0, 6.1,'Java, python, c, cpp, Sql','service-Based','Pune, Mumbai, Delhi, Hyderabad, Bengaluru, chennai',800000); 
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Microsoft',  70.0, 70.0, 7.5,'Java, c, cpp','Product-Based','Pune, Mumbai, Hyderabad, Delhi, chennai, Bengaluru, Ahmedabad ',3400000); 
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Oracle',  60.0, 60.0, 6.5,'Java, Sql, c, cpp','Product-Based','Pune, Mumbai, Kolkata, chennai, Bengaluru ',2900000); 
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Mphasis',  60.0, 60.0, 6.5,'Java, python, Sql, JavaScript','service-Based',' Indore, Vadodara chennai, Raipur, pune, Mumbai, Hyderabad',236000); 
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Mindtree',  60.0, 60.0, 6.5,'Sql, python, c, cpp','service-Based','Pune, Mumbai, Telangana, Ahemadabad, chennai, Hyderabad ',1900000); 
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Flipcart',  60.0, 65.0, 6.5,'Java, python, Datastructure, c, cpp','product-Based', 'Lucknow, Noida, Agra, varansi, Allahbad',170000); 
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Facebook',  60.0, 60.0, 6.5,'Java, python, c, cpp','product-Based',' Mumbai, Hyderabad, Gurugoan ',160000); 
INSERT INTO company (company_Name,10_criteria,12_criteria,cgpa,skill,company_Type,location,salary) 
VALUES ('Apple',  70.0, 70.0, 6.5,'Java, python, c, cpp','Product-Based',' Mumbai, Delhi, Hyderabad, Kolkata, Bengaluru ',2100000); 

SELECT *from studentdetail;

SELECT *from admin;
DELETE from users;
CREATE TABLE users (
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) PRIMARY KEY,
    password_hash VARCHAR(255) NOT NULL
);

SELECT * FROM users;

DELETE FROM studentdetail;
ALTER TABLE company
ADD PRIMARY KEY (company_Name);


SELECT *from studentdetail;
SELECT * FROM users;
select *from company;