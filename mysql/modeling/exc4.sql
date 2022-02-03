use world;

CREATE TABLE IF NOT EXISTS `world`.`book6` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `world`.`writer` (
  `no` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `world`.`book6_writer` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `book6_no` INT UNSIGNED NOT NULL,
  `writer_no` INT NOT NULL,
  PRIMARY KEY (`no`),
  INDEX `fk_review6_writer_book61_idx` (`book6_no` ASC) VISIBLE,
  INDEX `fk_review6_writer_writer1_idx` (`writer_no` ASC) VISIBLE,
  CONSTRAINT `fk_review6_writer_book61`
    FOREIGN KEY (`book6_no`)
    REFERENCES `world`.`book6` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_review6_writer_writer1`
    FOREIGN KEY (`writer_no`)
    REFERENCES `world`.`writer` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

use world;

select * from book6;

insert into book6(
name
)values(
'bootstrap'
);

select * from writer;

insert into writer(
no
, name
)values(
4
, 'bathory'
);
select * from book6_writer;

insert into book6_writer(
no
, book6_no
, writer_no
) values(
1,
1, 
1);

use world;
drop table book6_writer;
drop table writer;


CREATE TABLE IF NOT EXISTS `writer` (
  `no` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `book6_writer` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `book6_no` INT UNSIGNED NOT NULL,
  `writer_no` INT NOT NULL,
  PRIMARY KEY (`no`),
  INDEX `fk_review6_writer_book61_idx` (`book6_no` ASC) VISIBLE,
  INDEX `fk_review6_writer_writer1_idx` (`writer_no` ASC) VISIBLE,
  CONSTRAINT `fk_review6_writer_book61`
    FOREIGN KEY (`book6_no`)
    REFERENCES `book6` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_review6_writer_writer1`
    FOREIGN KEY (`writer_no`)
    REFERENCES `writer` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert writer(
name
)values(
'고소영'
);

select * from book6_writer;

insert into book6_writer(
book6_no
, writer_no
)values(
1, 4);

select 
a.no
, a.name
, b.writer_no
, (select name from writer c where c.no = b.writer_no) as writer_name
from book6 a
left join book6_writer b
on b.book6_no = a.no;

select 
a.no
, a.name
, b.writer_no
, c.name
from book6 a
left join book6_writer b on b.book6_no = a.no
left join writer c on c.no = b.writer_no;


CREATE TABLE IF NOT EXISTS `codeGroup` (
  `seq` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `code` (
  `code` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NULL,
  `codeGroup_seq` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`codeGroup_seq`),
  CONSTRAINT `fk_code_codeGroup1`
    FOREIGN KEY (`codeGroup_seq`)
    REFERENCES `codeGroup` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into codeGroup(
seq
, name
)values(
'infra002'
, '성별'
);

insert into codeGroup(
seq
, name
)values(
''
, ''
);

select * from codeGroup;

insert into code(
code
, name
, codeGroup_seq
)values(
'2'
, '남성'
, 'infra002'
);

drop table code;

CREATE TABLE IF NOT EXISTS `code` (
  `code` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NULL,
  `codeGroup_seq` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`codeGroup_seq`, `code`),
  CONSTRAINT `fk_code_codeGroup1`
    FOREIGN KEY (`codeGroup_seq`)
    REFERENCES `codeGroup` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

select * from code;

select * from codeGroup;

insert into code(
code
, name
, codeGoup_seq
)values(
'3'
, '기타'
, 'infra001'
);

insert into code(
code
, name
, codeGroup_seq
)values(
'3'
, '기타'
, 'infra001'
);

select * from code;
select * from codeGroup;

insert into codeGroup(
seq
, name
)values(
'infra002'
, '통신사'
);

insert into code(
code
, name
, codeGroup_seq
)values(
'3'
, 'LGU'
, 'infra002'
);

select
a.seq
, a.name
, b.code
, b.name
from codeGroup as a
left join code as b
on a.seq = b.codeGroup_seq
where
 a.seq like 'infra001';

use world;

select * from codeGroup;

select * from code;

