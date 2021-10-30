CREATE TABLE tblBoard (
	num			int(11)				NOT NULL  auto_increment COMMENT '�Խù� ��ȣ',
	name		varchar(20)		NOT NULL COMMENT '�ۼ��� �̸�',
	subject		varchar(50)		NOT NULL COMMENT '�Խù� ����',
	content	text COMMENT '�Խù� ����',
	pos			smallint(7) unsigned COMMENT '�Խù� ��ġ��ȣ',
	ref			smallint(7) COMMENT '�Խù� ������ȣ',
	depth		smallint(7) unsigned COMMENT '�Խù� ����',
	regdate	date COMMENT '�ۼ���',
	pass			varchar(15) COMMENT '��й�ȣ',
	ip				varchar(15) COMMENT 'IP�ּ�',
	count		smallint(7) unsigned COMMENT '��ȸ��',
	filename	varchar(30) COMMENT '÷������ �̸�',
	filesize		int(11) COMMENT '÷������ ũ��',
	PRIMARY KEY (num)
);



insert tblBoard(name,content,subject,ref,pos,depth,regdate,pass,count,ip,filename,filesize)
values('aaa', 'bbb', 'ccc', 0, 0, 0, now(), '1111',0, '127.0.0.1', null, 0)