create database AndroidGoServer;

create table users(
	`id` varchar(100) not null,
	`nickname` varchar(100) not null,
	`avatar` varchar(150),
	`createtime` datetime not null,
	`updatetime` datetime,
	`sex` int,
	primary key (`id`)
);

create table user_auths(
	`id` int not null AUTO_INCREMENT,
	`user_id` varchar(100) not null,
	`identify_type` varchar(50) not null,
	`identifier` varchar(50) not null,
	`credential` varchar(100) not null,
	`latestlogintime` datetime,
	`registertime` datetime,
	`state` int,
	primary key (`id`)
);
