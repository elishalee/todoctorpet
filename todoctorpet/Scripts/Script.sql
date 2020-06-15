/* primary key가 여러 개일 때 복합키를 사용해야 함
	primary key() 괄호 안에 컬럼이름 기재하면 됨 
	복합키가 있는 테이블의 컬럼을 외래키로 가져가고자 한다면
	다른 참조키도 외래키로 함꼐 따라가야 함...^^ㅎㅎ
 */

create table MEMBER(
NUM int not null auto_increment,
NAME varchar(30) not null,
ID char(15) not null,
PW varchar(100) not null,
IMAGE varchar(100),
SECESSION varchar(30),
primary key(num, name),
ANIMAL_NUM int,
ANIMAL_NAME varchar(30),
foreign key(ANIMAL_NUM, ANIMAL_NAME) references ANIMAL(NUM, NAME) on update cascade
)ENGINE=InnoDB default charset=utf8;

create table HOSPITAL(
NUM int primary key auto_increment,
NAME varchar(30) not null,
REGION varchar(30) not null,
ANIMAL_NUM int,
ANIMAL_NAME varchar(30),
foreign key(ANIMAL_NUM, ANIMAL_NAME) references ANIMAL(NUM, NAME) on update cascade
)ENGINE=InnoDB default charset=utf8;

create table REVIEW(
NUM int primary key auto_increment,
TITLE varchar(60) not null,
RATING double not null,
WRITEDATE date,
PW varchar(100),
MEMBER_NUM int not null,
MEMBER_NAME varchar(30) not null,
HOSPITAL_NUM int,
foreign key(MEMBER_NUM, MEMBER_NAME) references MEMBER(NUM, NAME),
foreign key(HOSPITAL_NUM) references HOSPITAL(NUM)
)ENGINE=InnoDB default charset=utf8;

create table DISEASE(
DISEASE_NUM int primary key auto_increment,
DISEASE_NAME varchar(30) not null,
DISEASE_DESCRIPTION varchar(600) not null,
ANIMAL_NUM int not null,
ANIMAL_NAME varchar(30) not null,
foreign key(ANIMAL_NUM, ANIMAL_NAME) references ANIMAL(NUM, NAME)
)ENGINE=InnoDB default charset=utf8;

create table ANIMAL(
NUM int not null auto_increment,
NAME varchar(30) not null,
COUNTRY varchar(30) not null,
DESCRIPTION varchar(600) not null,
primary key(num, name)
)ENGINE=InnoDB default charset=utf8;



