-- WhoAmI database

drop table if exists `board`;
 
CREATE TABLE `board` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) NOT NULL COLLATE 'utf8mb4_general_ci',
  `content` varchar(1000) NOT NULL COLLATE 'utf8mb4_general_ci',
  `time` TIMESTAMP NOT NULL DEFAULT now(),
   PRIMARY KEY (`id`) USING BTREE
) 
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1;
------------------------------


drop table if exists `place`;
 
CREATE TABLE `place` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COLLATE 'utf8mb4_general_ci',
  `address` varchar(100) NOT NULL COLLATE 'utf8mb4_general_ci',
  `phone` varchar(100) NOT NULL COLLATE 'utf8mb4_general_ci',
   PRIMARY KEY (`id`)
) 
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1;
------------------------------


Drop table if exists `account`;

CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COLLATE 'utf8mb4_general_ci',
  `email` varchar(100) NOT NULL COLLATE 'utf8mb4_general_ci',
  `phone` varchar(100) NOT NULL COLLATE 'utf8mb4_general_ci',
  `authority` int NOT NULL,
  `photo` varchar(100) NOT NULL COLLATE 'utf8mb4_general_ci',
  `place_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  FOREIGN KEY (`place_id`)
    REFERENCES `place`(`id`)
    ON UPDATE CASCADE ON DELETE CASCADE
) 
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1;
------------------------------



drop table if exists `log`;
 
CREATE TABLE `log` (
  `account_id` int NOT NULL,
  `place_id` int NOT NULL,
  `logData` varchar(1000) NOT NULL COLLATE 'utf8mb4_general_ci',
   PRIMARY KEY (`account_id`, `place_id`),
   FOREIGN KEY (`account_id`)
    REFERENCES `account`(`id`)
    ON UPDATE CASCADE ON DELETE CASCADE,
   FOREIGN KEY (`place_id`)
    REFERENCES `place`(`id`)
    ON UPDATE CASCADE ON DELETE CASCADE
) 
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1;
------------------------------