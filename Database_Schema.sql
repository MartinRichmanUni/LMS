DROP TABLE IF EXISTS `staff`;
DROP TABLE IF EXISTS `memberships`;
DROP TABLE IF EXISTS `booksBorrowed`;
DROP TABLE IF EXISTS `members`;
DROP TABLE IF EXISTS `books`;

CREATE TABLE `staff` (
`StaffID` SMALLINT NOT NULL AUTO_INCREMENT,
`StaffFName` VARCHAR(35) NOT NULL,
`StaffLName` VARCHAR(35),
`StaffEmail` VARCHAR(255) NOT NULL,
`StaffPassword` VARCHAR(255) NOT NULL,
PRIMARY KEY (`StaffID`)
);

CREATE TABLE `members` (
`MemberID` SMALLINT NOT NULL AUTO_INCREMENT,
`MemberFName` VARCHAR(35) NOT NULL,
`MemberLName` VARCHAR(35) NOT NULL,
`MemberEmail` VARCHAR(255) NOT NULL,
`MemberPassword` VARCHAR(255) NOT NULL,
`AddressNumber` TINYINT NOT NULL,
`AddressName` VARCHAR(100),
`AddressStreetName` VARCHAR(100) NOT NULL,
`City` VARCHAR(50) NOT NULL,
`PostCode` CHAR(8) NOT NULL,
PRIMARY KEY (`MemberID`)
);

CREATE TABLE `memberships` (
`MembershipID` SMALLINT NOT NULL AUTO_INCREMENT,
`StartDate` DATE NOT NULL,
`EndDate` DATE NOT NULL,
`MemberID` SMALLINT NOT NULL,
PRIMARY KEY (`MembershipID`),
FOREIGN KEY (`MemberID`) REFERENCES `members`(`MemberID`)
);

CREATE TABLE `books` (
`BookID` INT NOT NULL AUTO_INCREMENT,
`BookTitle` VARCHAR(100) NOT NULL,
`Genre` VARCHAR(35) NOT NULL,
`Author` VARCHAR(100) NOT NULL,
`Borrowed` BOOLEAN NOT NULL DEFAULT 0,
PRIMARY KEY (`BookID`)
);

SELECT * FROM books;

INSERT INTO books(BookTitle, Genre, Author, Borrowed)
VALUES ("Percy Jackson", "Science Fiction", "A man", 1);

