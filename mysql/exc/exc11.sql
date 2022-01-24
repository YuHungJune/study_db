use world;


create table book(
	seq int,
    title varchar(50),
    publisher varchar(50),
    author varchar(50),
    price int
);

create table cafe(
	seq int,
    store varchar(50),
    table_Num int,
    chair_Num int,
    address varchar(100),
    location varchar(100),
    ceo varchar(50)
);