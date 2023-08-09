DROP TABLE IF EXISTS `staff`;
DROP TABLE IF EXISTS `memberships`;
DROP TABLE IF EXISTS `members`;
DROP TABLE IF EXISTS `books`;


CREATE TABLE `staff` (
`staff_ID` SMALLINT NOT NULL AUTO_INCREMENT,
`staff_fname` VARCHAR(35) NOT NULL,
`staff_lname` VARCHAR(35),
`staff_email` VARCHAR(255) NOT NULL,
`staff_password` VARCHAR(255) NOT NULL,
PRIMARY KEY (`staff_ID`)
);

CREATE TABLE `members` (
`member_ID` SMALLINT NOT NULL AUTO_INCREMENT,
`member_fname` VARCHAR(35) NOT NULL,
`member_lname` VARCHAR(35) NOT NULL,
`member_email` VARCHAR(255) NOT NULL,
`member_password` VARCHAR(255) NOT NULL,
`address_number` TINYINT NOT NULL,
`address_name` VARCHAR(100),
`address_streetName` VARCHAR(100) NOT NULL,
`city` VARCHAR(50) NOT NULL,
`post_code` CHAR(8) NOT NULL,
PRIMARY KEY (`member_ID`)
);

CREATE TABLE `memberships` (
membership_ID SMALLINT NOT NULL AUTO_INCREMENT,
`start_date` DATE NOT NULL,
`end_date` DATE NOT NULL,
`member_ID` SMALLINT NOT NULL,
PRIMARY KEY (`membership_ID`),
FOREIGN KEY (`member_ID`) REFERENCES `members`(`member_ID`)
);

CREATE TABLE `books` (
`book_ID` INT NOT NULL AUTO_INCREMENT,
`book_title` VARCHAR(100) NOT NULL,
`book_genre` VARCHAR(35) NOT NULL,
`book_author` VARCHAR(100) NOT NULL,
`book_borrowed` BOOLEAN NOT NULL DEFAULT 0,
PRIMARY KEY (`book_ID`)
);

CREATE TABLE `booksBorrowed` (
`borrowed_ID` SMALLINT NOT NULL AUTO_INCREMENT,
`borrowed_date` DATE NOT NULL,
`due_date` DATE NOT NULL,
`returned_date` DATE,
`member_ID` SMALLINT NOT NULL,
`book_ID` INT NOT NULL,
PRIMARY KEY (`borrowed_ID`),
FOREIGN KEY (`member_ID`) REFERENCES `member`(`member_ID`),
FOREIGN KEY (`book_ID`) REFERENCES `books`(`book_ID`)
);
