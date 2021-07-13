create database AddressBookADO;
use AddressBookADO;

--UC2 --creating table
create table ContactBook(
firstName varchar(255),
lastName varchar(255),
address varchar(255),
city varchar(255),
state varchar(255),
zip int,
phoneNumber bigint,
email varchar(255)
);

--displaying table
select * from ContactBook

--Inserting Data--
INSERT INTO ContactBook(firstname,lastname,address,city,state,zip,phoneNumber,email)
VALUES ('Harsh','Sinha','MR4 Road','Delhi','Punjab',384794,9847558470,'whatisemail@gmail.com'),
('Aman','Patel','North Street','Vancover','Canada',434209,912343467,'Vancoveritis6@gmail.com'),
('Rahul','Hdas','St. Mathew Road','Regina','Canada',834510,882234322,'rahulisthename@gmail.com'),
('Paesd','Srerar','Asgard','ThorRoad','Space',438324,73454765,'SpaceIsReal@gmail.com');
UPDATE ContactBook SET phoneNumber = 8827880778
WHERE firstname = 'Aman' AND lastname= 'Patel'

DELETE FROM ContactBook
WHERE firstname = 'Paesd' AND lastname='Srerar'

SELECT * FROM ContactBook WHERE state='Punjab' and city='Delhi'

INSERT INTO ContactBook(firstname,lastname,address,city,state,zip,phoneNumber,email)
VALUES ('Tony','Stark','Round Street','New York','America',334394,646475470,'Avengersail@gmail.com'),
('Wanda','Vision','Down Street','Vancover','Canada',487709,918966467,'Vitis6@gmail.com'),
('Ramesh','Turban','St. Mathew Road','Regina','Canada',839320,882223422,'Allhhename@gmail.com'),
('Pedro','Roar','Arthur street','Manchester','England',4232024,73724345,'al9urell@gmail.com');

SELECT COUNT(*) FROM ContactBook
WHERE city = 'Canada'

SELECT COUNT(*) FROM ContactBook

SELECT COUNT(state) FROM ContactBook

SELECT COUNT(city) FROM ContactBook

SELECT firstname FROM ContactBook
ORDER BY city

--UC9 -ability to identify each address book with name and type
ALTER TABLE ContactBook ADD Name varchar(255) not null DEFAULT 'FriendsContacts', 
TypeOf varchar(255) not null DEFAULT 'Friends';