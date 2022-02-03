CREATE TABLE IF NOT EXISTS `world`.`book5` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `world`.`review5` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(45) NULL,
  `book5_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`, `book5_no`),
  INDEX `fk_review5_book51_idx` (`book5_no` ASC) VISIBLE,
  CONSTRAINT `fk_review5_book51`
    FOREIGN KEY (`book5_no`)
    REFERENCES `world`.`book5` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert book5(
name
)values(
'4산업혁명의미래'
);

insert book5(
name
)values(
'이것이자바다'
);

insert book5(
name
)values(
'안드로이드'
);

insert book5(
name
)values(
'씨언어'
);

insert into review5(
comment
, book5_no
)values(
'우와 책 재미 있습니다.'
, 1);

insert into review5(
comment
, book5_no
)values(
'우와 책 재미 있습니다.'
, 2);

insert into review5(
comment
, book5_no
)values(
'우와 책 재미 있습니다.'
, 3);

insert into review5(
comment
, book5_no
)values(
'우와 책 재미 있습니다.'
, 4);


select * from review5;

-- 점선 : nonidenfication
-- 실선 : identification




select * from book5;

desc book5;
select * from review5;

select 
	a.name as title
    , (select count(no) from review5 where book5_no = a.no) as count
from book5 a;


insert into review5(
comment
, book5_no
)values(
'재미 있습니다.'
, 4);

insert into review5(
comment
, book5_no
)values(
'재미 없습니다.'
, 1);

select * from book5;

select 
	a.comment
    , (select name from book5 where a.book5_no = no) as name
from review5 a;

    

