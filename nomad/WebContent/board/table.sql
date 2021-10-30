CREATE TABLE tblBoard (
	num			int(11)				NOT NULL  auto_increment COMMENT '게시물 번호',
	name		varchar(20)		NOT NULL COMMENT '작성자 이름',
	subject		varchar(50)		NOT NULL COMMENT '게시물 제목',
	content	text COMMENT '게시물 내용',
	pos			smallint(7) unsigned COMMENT '게시물 위치번호',
	ref			smallint(7) COMMENT '게시물 참조번호',
	depth		smallint(7) unsigned COMMENT '게시물 띄어쓰기',
	regdate	date COMMENT '작성일',
	pass			varchar(15) COMMENT '비밀번호',
	ip				varchar(15) COMMENT 'IP주소',
	count		smallint(7) unsigned COMMENT '조회수',
	filename	varchar(30) COMMENT '첨부파일 이름',
	filesize		int(11) COMMENT '첨부파일 크기',
	PRIMARY KEY (num)
);



insert tblBoard(name,content,subject,ref,pos,depth,regdate,pass,count,ip,filename,filesize)
values('aaa', 'bbb', 'ccc', 0, 0, 0, now(), '1111',0, '127.0.0.1', null, 0)