drop database if exists app_data;
create database app_data;
use app_data;
drop table if exists username;
drop table if exists comms;
drop table if exists posts;
create table users(
user_id int not null auto_increment,
user_name varchar(20),
email varchar(50),
pass varchar(50),
primary key(user_id)
);
create table posts(
post_id int not null auto_increment,
post varchar(120),
post_time datetime default current_timestamp,
user_id int,
primary key(post_id),
foreign key(user_id) references users(user_id)
);
create table comms(
comm_id int not null auto_increment,
user_id int,
comm varchar(120),
comm_time datetime default current_timestamp,
post_id int,
primary key(comm_id),
foreign key(user_id) references users(user_id),
foreign key(post_id) references posts(post_id)
);