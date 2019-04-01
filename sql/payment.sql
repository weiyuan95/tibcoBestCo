DROP DATABASE IF EXISTS payment;
create database payment;
use payment;

create table payment_info (
    debitAccountId      varchar(50) not null,
    payeeId             varchar(50) not null,	
    amount              double not null,
    sourceCurrency      varchar(10) not null,
    destinationCurrency varchar(10) not null,
    transferCurrency    varchar(10) not null,
    comments            varchar(255) not null,
    transferType        varchar(10) not null,
	referenceId  		varchar(50) not null primary key,
    status	            varchar(50) not null
);


