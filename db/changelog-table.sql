DROP TABLE IF EXISTS `changelog`;
CREATE TABLE `changelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL,
  `query` text COLLATE utf8_czech_ci NOT NULL,
  `error` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL,
  `executed` tinyint(1) DEFAULT '0',
  `ins_timestamp` int(11) DEFAULT NULL,
  `ins_dt` datetime NOT NULL,
  `upd_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `file_query` (`file`,`query`(250))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;
