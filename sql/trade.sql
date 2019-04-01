DROP DATABASE IF EXISTS trade;
create database trade;
use trade;

create table trade_transaction (
    username varchar(30) not null,
    stockname varchar(10) not null,
    quantity int(100) not null,
    buy_price float(6) not null,
	date_bought DATETIME default now(),

    
    primary key(username,date_bought)
);


insert into trade_transaction values 
('apple', 'MSFT', 5, 10.2,now());
