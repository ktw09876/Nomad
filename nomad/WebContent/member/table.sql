CREATE TABLE `tblmember` (
  `id` varchar(16) NOT NULL COMMENT '아이디',
  `pass` varchar(16) NOT NULL COMMENT '비밀번호',
  `name` char(10) NOT NULL COMMENT '이름',
  `sex` char(1) NOT NULL COMMENT '성',
  `birthday` varchar(20) NOT NULL COMMENT '생일',
  `email` varchar(30) NOT NULL COMMENT '이메일',
  `zipcode` char(7) NOT NULL COMMENT '우편번호',
  `address` varchar(50) NOT NULL COMMENT '주소',
  `hobby` char(5) NOT NULL COMMENT '취미',
  `job` varchar(20) NOT NULL COMMENT '직장',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr;

CREATE TABLE `tblZipcode` (
	`zipcode` char(7) NOT NULL COMMENT '우편번호',
	`area1` char(10) DEFAULT NULL COMMENT '시',
	`area2` char(20) DEFAULT NULL COMMENT '구',
	`area3` char(40) DEFAULT NULL COMMENT '동',
	`area4` char(20) DEFAULT NULL COMMENT '주소'
);