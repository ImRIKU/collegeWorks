--For the above schema, perform the followingy

sailor(sid, sname, mname, surname, rating, age);
boat(bid, bname, color);
reserve(sid, bid, day);

--1) Find the names and ages of all sailors.

Select sname, age from sailor;

--2) Show names under the heading of names_of_sailors and add 2 to age.

select sname as names_of_sailors, age+2 as age from sailor;

--3) Select all records from sailors in ascending order by name; 4) Show all sailors name.

Select * from sailor order by sname asc;

--4) show all sailors name

Select sname ||' '|| mname ||' '|| surname as name from sailor;

--5) Select all distinct sailors name.

Select distinct sname from sailor;

--6) Show all distinct sailors names, ratings who have rating between 5 and 10.

select distinct sname, rating from sailor where rating > 5 and rating < 10;

--7) Select all records from salior in ascending order by rating and descending order by age.

select * from sailor order by rating asc, age desc;

--8) Select all records from sailor whose rating>7. 

select * from sailor where rating > 7;

--9) Find records for sailor name Horatio and age 35.4.

select sid, sname, age from sailor where sname='Horatio' and age = 35.4;

--10) Find records for sailor name Horatio or age=35.4.

select sid, sname, age from sailor where sname='Horatio' or age = 35.4;

--11) Select names of sailors who have reserved boat 104. 

select sname from sailor, reserve where sailor.sid = reserve.sid and bid = 104;

--12) Find sid of sailors who have reserved red boat
-- while using joining preferebly use distict to remove redundancy

select distinct s.sid from sailor s, reserve r, boat b where s.sid = r.sid and r.bid = b.bid and color = 'red';

--13) Select records for name beginning with 'B'.

Select distinct * from sailor where sname like 'B%';

--14) Select records for name containing "B"/"b".

select * from sailor where sname like '%B%' or sname like '%b%';

--15) Select names for middle name present.

select sname from sailor where mname is not null;

--16) Select names for middle name absent.

select sname from sailor where mname is null;

--17) Find color of boats reserved by Lubber.

select sname, color from sailor s, reserve r, boat b where s.sid = r.sid and r.bid = b.bid and sname = 'Lubber';

--18) Find the sailor name that have reserved at least one boat.

select distinct sname from sailor s, reserve r where s.sid = r.sid;

--20) Compute the increments of rating of persons who have satied on diff brats on the same day.



--21; Find name of sailors whose name begins and ends with B and has at least 3 characters.



--22) Find names of sailors whose name begins and ends with 'B' and has exactly 3 chars



--23) Find names of sailors who have reserved a red boat or a green boat.



--24) Find names of sailors who have reserved a red boat but not a green boat.



--25) md names of sailors who have reserved boat 103.



--26) Find names of sailors who have reserved red beat.



--28) Find names of sailors who have not reserved red boat.



--29) Count distinct sailor name from sailors.



--30)a) Find all records for the rating>some sailor name where sailor name like 'Horatio". b) Find all records for the rating>all sailor name where sailor name like 'Horatio



--32(a)Find all records for the rating some sailor name where sailor name like 'Horatio".



--	(b)Find all records for the rating all sailor name where sailor name like 'Horatio".



--32) Select all records for s_name neither Lubber nor Horatio.



--33) Find names of sailors whose rating is> 10/20/30 uşing multirow subquery operator. 34) Find names of sailors whose rating is 10 & 20 & 30 using multirow subquery operator.--



--35) Find average age of sailors with rating 10.



--36) Find the name of sailor who are older than oldest sailor of rating 10.

