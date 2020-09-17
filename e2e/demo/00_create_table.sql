CREATE DATABASE test;
CREATE TABLE `test`.`t1` (
`num` bigint unsigned NOT NULL AUTO_INCREMENT,
`val0` varchar(100) DEFAULT NULL,
`val1` varchar(100) DEFAULT NULL,
`val2` varchar(100) DEFAULT NULL,
`val3` varchar(100) DEFAULT NULL,
`val4` varchar(100) DEFAULT NULL,
  UNIQUE KEY `num` (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO t1 (val0, val1, val2, val3, val4) WITH RECURSIVE t AS (SELECT 1 AS n UNION ALL SELECT n + 1 FROM t WHERE n < 10) SELECT MD5(RAND()),MD5(RAND()),MD5(RAND()),MD5(RAND()),MD5(RAND()) FROM t;
