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