use world;

CREATE TABLE `book3` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `publisher_cd` INT NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE `publisher` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

select * from book3;
select * from publisher;
insert into publisher(
name
) values(
'출판사');

select * from book3;

insert into book3
(
  name
, publisher_cd
) values(
'성심당'
, 1
);

select * from book3;

select 
a.no
, a.name
, a.publisher_cd
, b.name
from book3 a
left join publisher b
on  a.publisher_cd = b.no;

update book3
set 
name='이것이자바다'
where
no = 1;

select * from book3;

insert into publisher(
name
) values(
'한빛미디어'
);
select * from publisher;

select * from book3;

select 
a.no
, a.name
, a.publisher_cd
, b.no
, b.name
from book3 a
left join publisher b
on  a.publisher_cd = b.no;

select 
a.no
, a.name
, a.publisher_cd
, (select name from publisher 
	where no = a.publisher_cd) publisher_name
from book3 a;

select
	 a.no
	, a.name
    , a.publisher_cd
    , getPublisherName	-- 함수, function
    from book3 as a;
    
insert into publisher(
name
) values(
'정보문화사');

select * from publisher;

insert into book3(
name
, publisher_cd
) values(
'안드로이드'
, 3);

select * from book3;

insert into book3(
name
)values(
'프로그래밍가이드북'
);

select 
	a.no
    ,a.name
    , a.publisher_cd
    , b.no
    , b.name
    from book3 a
    left join publisher b 
    on b.no = a.publisher_cd;
    
insert into book3(
name
, publisher_cd
)values(
'4차산업혁명의미래'
, 4
);


select 
	a.no
    ,a.name
    , a.publisher_cd
    , b.no
    , b.name
    from book3 a
    left join publisher b 
    on b.no = a.publisher_cd;

select * from book3;

select * from publisher;

update publisher set name = '아아콕스' where no=3;
select * from publisher;

select * from book3;

update book3 set name = '프로그래밍가이드북', publisher_cd=null where no = 2;
select * from book3;
update book3 set name = '안드로이드', publisher_cd=3 where no = 3;

select * from book3;
select * from publisher;
use world;
select * from book3;
select * from publisher;

update publisher set name = '한빛미디어' where no = 1;
update publisher set name = '정보문화사' where no = 2;




use world;

CREATE TABLE IF NOT EXISTS `book4` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `review4` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(45) NULL,
  `book4_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`),
  INDEX `fk_review4_book4_idx` (`book4_no` ASC) VISIBLE,
  CONSTRAINT `fk_review4_book4`
    FOREIGN KEY (`book4_no`)
    REFERENCES `book4` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

select * from book4;
select * from review4;

insert into book4(
name
)values(
	'이것이자바다'
);

insert into book4(
name
)values(
	'프로그래밍가이드북'
);

insert into book4(
name
)values(
	'안드로이드'
);

insert into book4(
name
)values(
	'4차산업혁명의미래'
);

select * from book4;

desc book4;
desc review4;

insert into book4(
name
)values(
	'4차산업혁명의미래'
);
select * from book4;

insert into review4(
comment
, book4_no
)values(
'와... 너무 재밌어요..'
, 6
);
0	50	14:33:41	insert into review4(
 comment
 , book4_no
 )values(
 '와... 너무 재밌어요..'
 , 6
 );
 
 
 CREATE TABLE IF NOT EXISTS `review4` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(45) NULL,
  `review4col` VARCHAR(45) NOT NULL,
  `book4_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`, `review4col`),
  INDEX `fk_review4_book41_idx` (`book4_no` ASC) VISIBLE,
  CONSTRAINT `fk_review4_book41`
    FOREIGN KEY (`book4_no`)
    REFERENCES `book4` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


drop table review4;
 CREATE TABLE IF NOT EXISTS `review4` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(45) NULL,
  `review4col` VARCHAR(45) NOT NULL,
  `book4_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`, `review4col`),
  INDEX `fk_review4_book41_idx` (`book4_no` ASC) VISIBLE,
  CONSTRAINT `fk_review4_book41`
    FOREIGN KEY (`book4_no`)
    REFERENCES `book4` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into review4(
comment
, book4_no
)values(
'와... 너무 재밌어요..'
, 6
);
desc review4;

CREATE TABLE IF NOT EXISTS `review4` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(45) NULL,
  `book4_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`),
  INDEX `fk_review4_book41_idx` (`book4_no` ASC) VISIBLE,
  CONSTRAINT `fk_review4_book41`
    FOREIGN KEY (`book4_no`)
    REFERENCES `book4` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

drop table review4;

insert into review4(
comment
, book4_no	-- foreign key
)values(
"와... 너무 재밌어요.."
, 1
);

insert into review4(
comment
, book4_no	-- foreign key
)values(
"와... 너무 재밌어요.."
, 2
);

insert into review4(
comment
, book4_no	-- foreign key
)values(
"와... 너무 재밌어요.."
, 3
);

insert into review4(
comment
, book4_no	-- foreign key
)values(
"와... 너무 재밌어요.."
, 4
);

insert into review4(
comment
, book4_no	-- foreign key
)values(
"와... 너무 재밌어요.."
, 5
);


select * from book4;

-- -------------------------

