use world;

CREATE TABLE IF NOT EXISTS `mydb`.`DoIt` (
  `seq` INT NOT NULL,
  `title` VARCHAR(50) NULL,
  `author` VARCHAR(50) NULL,
  `price` INT NULL,
  `point_Plus` INT NULL,
  `selled` INT NULL,
  `review_Score` DOUBLE NULL,
  `publicate_date` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB

create table(
	seq int primary key
    , title VARCHAR(50)
    , author VARCHAR(50)
    , price int
    , point_Plus int
    , selled int
    , revied_Score double
    , publicate_date varchar(45)
);