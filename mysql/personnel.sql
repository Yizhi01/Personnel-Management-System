drop database if exists personnel;

create database personnel;

use personnel;

create table department(
	id int primary key auto_increment,
	name varchar(20) not null,
	address varchar(100)
);

create table staff(
	id int primary key auto_increment,
	account varchar(20) not null,
	password varchar(20) not null,
	status varchar(10) not null,
	did int,
	name varchar(20),
	sex char(6),
	id_number char(18),
	work_time datetime,
	leave_time datetime,
	birthday date,
	info varchar(200)
);

create table log(
	operate_time datetime not null,
	type varchar(10) not null,
	operator varchar(20) not null,
	module  varchar(20) not null,
	operation  varchar(20) not null,
	result  varchar(100) not null
);

alter table staff add constraint fk_staff_dep foreign key(did) references department(id);

insert into department (name, address) value('Technology', 'Floor 3 #1001');
select * from department;  

insert into staff(account, password, status, did, name, sex, id_number, work_time, leave_time, birthday, info)
        value ('admin', '12345', 'Normal', 1, 'David Smith', 'male', '25600000', '2018-01-20', null, '1990-07-08', 'Leader');
select * from staff; 

select * from log; 
