create database freeprogram;
use freeprogram;
 
 CREATE TABLE `wxuser` (
  `id` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `nickname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `collection` text character set utf8 default NULL,
  `myfunction` char(10) character set utf8 default '0-1-2-3',
  `isfirst` boolean default true,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `luntan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `up_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `luntan_id` (`user_id`),
  CONSTRAINT `luntan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `c` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `title` varchar(10) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `up_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `c_user` (`user_id`),
  CONSTRAINT `c_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
