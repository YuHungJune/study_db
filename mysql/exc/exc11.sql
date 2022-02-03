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

CREATE TABLE `test` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`)
  );
  
  insert test(
  name
  )value(
  'Bathory'
  );
  select * from test;
  
  drop table test;
  
  CREATE TABLE `test` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`)
  );
  
insert into test(
  name
  )value(
  'Bathory'
  );
  select * from test;
  
CREATE TABLE `test2` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `seq2` INT NOT NULL,
  `seq3` INT NOT NULL,
 `name` VARCHAR(45) NULL,
 
  PRIMARY KEY (`seq`, `seq2`, `seq3`)
  );
  
select * from test2;

insert into test2(
seq2
, seq3
, name
) values(
1
, 1
, 'Bathory'
);

select * from test2;

drop table test2;

CREATE TABLE `test2` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `seq2` INT NOT NULL,
  `seq3` INT NOT NULL,
 `name` VARCHAR(45) NOT NULL,
 
  PRIMARY KEY (`seq`, `seq2`, `seq3`)
  );

  insert into test2(
seq2
, seq3
, name
) values(
1
, 1
, 'Bathory'
);

select * from test2;

  insert into test2(
  seq
, seq2
, seq3
, name
) values(
1
, 1
, 1
, 'Bathory'
);

-- unique, primary key, foreign key: 유일한 데이터
-- pk : primary key :중복되는 데이터는 불허
-- nn : not null : null 값을 허용하지 않는다.
-- uq : 유니크 : 중복되는 데이터는 불허
-- b : 바이ㅓ리 파일 저장
-- 128   0  127 : 0 ~ 255
-- zf : zerofill : 5.7 (5, 2) -> 00005.7
-- ai auto  increment : 자동증가
-- g : auto increment 의 다른 형태

select * from test2;
select * from test;
-- 테이블 수정
-- 칼럼 추가
alter table test add tel varchar(50);
select * from test;
alter table test drop tel;
select * from test;

-- 컬럼 삭제
alter table test add tel varchar(50);


-- 컬럼 이름 변경
alter table test modify tel int;
select * from test;
alter table test modify tel varchar(20);
desc test;

-- 컬럼 타입 변경
alter table test change tel tele int;
select * from test;

insert into test(
	name
    , tele
) values(
	'bathory08'
    , 01012341234
);

select * from test;
desc test;

alter table test change seq seq int(10);
desc test;

-- 데이터 수정
select * from test;

update test set
	name = 'Andrew'
where
	seq=2;
    
select * from test;

delete from test
where seq = 2;

select * from test;

truncate table test;
select * from test;

insert into test(
seq
	, name
    , tele
) values(
1,
	'bathory08'
    , 01012341234
    
);
desc table test;
select * from test;

update test set
	name = 'Andrew'
    , tele = 222
where 1 = 1			-- 관행적인 의미. 퍼포먼스에 영향 x라고 하는데, 논란이 많음.	
	and seq = 1;
    
	select * from test;
    
-- DDL : data definition language : db, table 컨트롤 : 주로 관리자, 선임들의 업무
-- DML : data manipulation language : data; 후임들 
-- DCL : data control language : 접근권한, 커밋/롤백
