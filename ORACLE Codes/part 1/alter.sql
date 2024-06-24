-- inserting values into sailor TABLE

insert into sailor values('s22', 'Fredrico', null, 'Roberts', 7, 45);
insert into sailor values('s31', 'Lubber', null, 'Sheen', 8, 55.5);
insert into sailor values('s32', 'Charlotte', null, 'Gordin', 8, 25.5);
insert into sailor values('s58', 'Mary', 'Beth', 'Lyon', 10, 35);
insert into sailor values('s64', 'Horatio', null, 'Powell', 7, 35.4);
insert into sailor values('s71', 'Zorba', null, 'Alex', 10, 16);
insert into sailor values('s29', 'Brutus', null, 'Slater', 1, 33.8);
insert into sailor values('s95', 'Deep', 'Graceb', 'Davis', 3, 63.5);
insert into sailor values('s74', 'Horatio', null, 'Forrest', 9, 35);
insert into sailor values('s85', 'Sara', 'Art', 'Powell', 3, 25.5);
insert into sailor values('s80', 'Deep', 'Kumar', 'Kumar', 6, 17);
insert into sailor values('s87', 'Deep', 'Kumar', 'Jha', 8, 51);

-- inserting values into boat TABLE

insert into boat values(101, 'interlake', 'blue');
insert into boat values(102, 'interlake', 'red');
insert into boat values(103, 'clipper', 'green');
insert into boat values(104, 'marine', 'red');

-- error occured have to delete two ROWS

delete from boat where bid in (101, 103);

--insert into reserve TABLE

insert into reserve values('s22', 101, '10-OCT-98');
insert into reserve values('s22', 103, '10-AUG-98');
insert into reserve values('s22', 102, '10-OCT-98');
insert into reserve values('s22', 104, '10-JUL-98');
insert into reserve values('s31', 102, '11-OCT-98');
insert into reserve values('s31', 103, '11-JUN-98');
insert into reserve values('s31', 104, '11-DEC-98');
insert into reserve values('s64', 101, '09-MAY-98');
insert into reserve values('s64', 102, '09-AUG-98');
insert into reserve values('s74', 103, '09-AUG-98');
insert into reserve values('s80', 102, '07-JUL-98');
insert into reserve values('s87', 101, '08-JUL-98');
insert into reserve values('s87', 102, '12-DEC-98');