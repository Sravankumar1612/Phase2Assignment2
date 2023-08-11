create database ExcersiceDb

use ExcersiceDb

create table Publisher(
Pid int primary key,
publisher varchar(20) unique not null)

insert into Publisher values(1,'A'),(2,'B'),(3,'C')

create table Category(
Cid int primary key,
category varchar(20) unique not null)

insert into Category values(1,'Comic'),(2,'Horror'),(3,'Science')

create table Author(
Aid int primary key,
AName varchar(20) unique not null)

insert into Author values(1,'Raju'),(2,'Nithin'),(3,'Sandra')

create table Book(
Bid int primary key,
BName varchar(20) not null,
BPrice float,
Author int foreign key references Author,
Publisher int foreign key references Publisher,
Category int foreign key references Category)

insert into Book values(1,'Book1',635,1,1,1)
insert into Book values(2,'hello',635,2,2,3)
insert into Book values(3,'ABC',635,2,3,2)
insert into Book values(4,'Book2',635,1,1,1)
insert into Book values(5,'XYZ',635,1,2,1)
insert into Book values(6,'123',635,3,1,3)

SELECT Bid, BName, BPrice, a.AName, p.publisher, c.category
FROM Book
JOIN Author as a ON Book.Author = a.AiD
 JOIN Publisher as p ON Book.Publisher = p.PiD
 JOIN Category as c ON Book.Category = c.CiD;
 