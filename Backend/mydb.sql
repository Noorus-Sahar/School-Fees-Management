create table adminRegister(
name varchar(250),
password varchar(500),
isAdmin bool);
create database school;
use school;
Create Table StudentInfo(
Student_name varchar (250),
Student_id varchar (250) primary key,
Class varchar (50),
Age numeric,
B_form varchar(50),
Religion varchar(250),
Nationality varchar(250),
DOB date,
POB varchar(250),
Address varchar(250),
DOA date,
F_name varchar(250),
F_contact numeric,
F_occupation varchar(250),
F_office_address varchar(250),
F_nationality varchar(250),
M_name varchar(250),
M_contact numeric,
G_name varchar(250),
G_contact numeric,
G_relation varchar(250)
);
create table FeeDetail (
Challan_number varchar (250) ,
Class varchar (50) ,
Issue_date date ,
Due_date date,
Anual_charge numeric,
Addmision_fee numeric,
Tution_fee numeric,
Extra_fee numeric,
Lab_fee numeric,
Exam_fee numeric,
primary key (Challan_number,Class,Issue_date)
);
create table StudentVoucher(
Student_id varchar (250) ,
Challan_number varchar (250)  ,
Voucher_number varchar(250) primary key,
Feestatus bool,
submitBy varchar(250),
recievedBy varchar(250)
);
create table voucher(
Challan_number varchar(250),
Student_id varchar (250) ,
Class varchar (50),
Issue_date date ,
Due_date date,
Anual_charge numeric,
Addmision_fee numeric,
Tution_fee numeric,
Extra_fee numeric,
Lab_fee numeric,
Exam_fee numeric,
TotalAmount numeric,
Feestatus bool,
recievedBy varchar(250),
primary key (Challan_number,Student_id,Issue_date)
);
ALTER TABLE voucher ADD FOREIGN KEY(Student_id) references StudentInfo (Student_id);
ALTER TABLE StudentVoucher ADD FOREIGN KEY(Challan_number) references FeeDetail (Challan_number);
alter table StudentVoucher add column TotalAmount numeric; 

