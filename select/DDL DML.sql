-- DDL
create table user(
	no int unsigned not null auto_increment,
	email varchar(100) not null default 'NO EMAIL',
	passwd varchar(64) not null,
    name varchar(25),
    dept_name varchar(25),
    primary key(no)
);

-- alter table
alter table user add juminbunho char(13) not null after no;
alter table user drop juminbunho;
alter table user add join_date datetime default now();
alter table user change email email varchar(200) not null default 'no email';
alter table user change dept_name department_name varchar(25); 
alter table user rename users;
desc users;

drop table users;
create table user(
	no int unsigned not null auto_increment,
	email varchar(100) not null default 'NO EMAIL',
	passwd varchar(64) not null,
    name varchar(25),
    dept_name varchar(25),
    primary key(no)
);

select * from user;

-- insert(DML)
insert into user values(null, 'kickscar@gmail.com', password('1234'), '안대혁', '개발팀');
insert into user(email, passwd) values('kickscar2@gmail.com', password('1234'));
insert into user(passwd) values(password('1234'));
insert into user(passwd, email) values(password('1234'), 'kickscar3@gmail.com');

select * from user;

-- update(DML)
update user
   set email = 'kickscar4@gamil.com',
       name = '안대혁4'
 where no = 3;
 
select * from user;
   
-- delete(DML)
delete
  from user
 where no = 4; 

select * from user;