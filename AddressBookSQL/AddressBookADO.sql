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