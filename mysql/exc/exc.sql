use world;



create table book(
seq int,
title varchar(50),
publisher varchar(50),
author varchar(50),
price int
);

drop table cafe;

create table cafe(
seq int,
store varchar(50),
table_Num int,
chair_Num int,
address varchar(100),
location int,
ceo varchar(50)
);



insert into cafe(
seq,
store,
table_Num,
chair_Num,
address,
location, 
ceo    
)values(
1,
'별다방',
1,
2,
'서울시 서초구',
1,
'장동건'
);SELECT `location` FROM `world`.`cafe`;
SELECT `location` FROM `world`.`cafe`;


-- varchar 은 ' 또는 "로 감싼다.
-- int은 사용하지 않아도 된다.
-- 컴마는 앞쪽을 선호: 이건 허불호가 갈니다.

-- 데이터 조회
select * from cafe;

truncate cafe;
select * from cafe;

insert into cafe(
seq,
store,
table_Num,
chair_Num,
address,
location, 
ceo    
)values(
1,
'별다방',
1,
2,
'서울시 서초구',
1,
'장동건'
);

select * from cafe;


drop table cafe;


create table cafe(
seq int primary key,
store varchar(50),
table_Num int,
chair_Num int,
address varchar(100),
location varchar(100),
ceo varchar(50)
);

insert into cafe(
seq,
store,
table_Num,
chair_Num,
address,
location, 
ceo    
)values(
1,
'별다방',
1,
2,
'서울시 서초구',
1,
'장동건'
);

select * from cafe;

drop table book;

create table book(
seq int primary key,
title varchar(50),
publisher varchar(50),
author varchar(50),
price int
);
select * from cafe;
select * from book;

select st from cafe where seq = 3;
select * from cafe;
select * from cafe where (table_Num >= 5 && table_Num <= 30);

select * from cafe;

select * from cafe where ceo like '김%';