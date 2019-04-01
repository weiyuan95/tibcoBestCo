DROP DATABASE IF EXISTS client;
create database client;
use client;

-- client microservice
    -- Every client has only one api_key unique to him/her.
    -- Every client can only have one bank account.
create table client_info (
    username   varchar(30)  not null unique,
    hashed_pwd varchar(255) not null,
    full_name  varchar(255) not null,
    email      varchar(255) not null,
    balance    double default 0,
    payeeId    varchar(50) not null unique,   

    primary key (username)
);

insert into client_info values
    ('apple', password('apple123'), 'Apple Tan', 'appletan@gmail.com', 1000, '343911676b414c1c94e41598bda16583'),
    ('orange', password('orange123'), 'Orange Lee', 'orangelee@gmail.com', 1000, '111-41522-9'),
    ('pear', password('pear123'), 'Pear Lim', 'pearlim@gmail.com', 1000, '880-88242-8'),
    ('durian', password('durian123'), 'Durian Dur', 'duriandur@gmail.com', 1000, '399-99999-1'),
    ('mango', password('mango123'), 'Mango Tan', 'mangotan@gmail.com', 1000, '770-96342-7');
