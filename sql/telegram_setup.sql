DROP DATABASE IF EXISTS ezstock_telegram;
create database ezstock_telegram;
use ezstock_telegram;

create table telegram_user (
    client_username varchar(255) not null,
    tele_chat_id varchar(255) not null,

    primary key(tele_chat_id)
);

insert into telegram_user values (
    ("apple", "252174031")
)