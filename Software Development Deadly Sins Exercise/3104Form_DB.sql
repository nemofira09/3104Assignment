SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE FORM_DB;

USE FORM_DB;

CREATE TABLE UserInfo(
  u_id int NOT NULL,
  username varchar(25) NOT NULL,
  password varchar(40) NOT NULL,
  email varchar(30) NOT NULL,
  birthday DATE not NULL,
  PRIMARY KEY (u_id)
);

ALTER TABLE `UserInfo`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

INSERT INTO `UserInfo` (username, password, email, birthday)
VALUES ('userex1', '123', 'example123@yahoo.com', '2021-09-24');
ALTER TABLE `UserInfo`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

INSERT INTO `UserInfo` (username, password, email, birthday)
VALUES ('userex2', '123', 'example123A@yahoo.com', '2021-09-24');
ALTER TABLE `UserInfo`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

INSERT INTO `UserInfo` (username, password, email, birthday)
VALUES ('userex3', '123', 'example123B@yahoo.com', '2021-09-24');
ALTER TABLE `UserInfo`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

INSERT INTO `UserInfo` (username, password, email, birthday)
VALUES ('userex4', '123', 'example123C@yahoo.com', '2021-09-24');
ALTER TABLE `UserInfo`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

INSERT INTO `UserInfo` (username, password, email, birthday)
VALUES ('userex5', '123', 'example123D@yahoo.com', '2021-09-24');
ALTER TABLE `UserInfo`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;
