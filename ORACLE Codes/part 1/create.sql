-- cretat the following table sailor

create table sailor(sid varchar2(4), sname varchar2(15), mname varchar2(15), surname varchar2(15), rating NUMBER(2), age NUMBER(3,1));

-- set the CONSTANTs - sid pri key , starts with small s. ; - sname INITCAP

alter table sailor add (
	CONSTRAINT sid_pk PRIMARY KEY(sid),
	CONSTRAINT sid_s CHECK(sid like 's%'),
	CONSTRAINT sname_ck CHECK(sname = INITCAP(sname))
);

-- CREATE the boat table 

create table boat(bid NUMBER(3), bname varchar2(10), color varchar2(6));

-- add constrints bid PRIMARY key , bname all lower case, color within red-green-blue

alter table boat add(
	constraint bid_pk PRIMARY key(bid),
	CONSTRAINT bname_lw check(bname = lower(bname)),
	constraint color_ch check(color in ('red', 'green', 'blue'))
);

-- create the same table without altering and adding constraint from creation

create table boat(
	bid NUMBER(3) PRIMARY key,
	bname VARCHAR2(10) CHECK(bname = lower(bname)),
	color varchar2(6) CHECK(color in ('red', 'green', 'blue'))
);

-- create table boat with sid, bid, day, and sid-bid as primary key

create table reserve(sid varchar2(4), bid NUMBER(3), day DATE);

-- alter sid as FOREIGN key REFERENCES sailor, bid REFERENCES boat , day < 1-jan-2000 and sid-bid primary key(composite)

alter table reserve add(
	CONSTRAINT sid_fk FOREIGN key (sid) REFERENCES sailor(sid),
	CONSTRAINT bid_fk FOREIGN key (bid) REFERENCES boat(bid),
	CONSTRAINT day_chk check(day < TO_DATE('1-jan-2000', 'DD-MON-YYYY')),
	CONSTRAINT sid_bid_pk PRIMARY key(sid,bid)
);



