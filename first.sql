CREATE DATABASE Course

DROP DATABASE Course
USE Course
CREATE TABLE Students(
	Id int,
	[Name] nvarchar(20),
	Surname nvarchar(30),
	AvgPoint int
)

drop table Students

alter table Students
drop column Surname

alter table Students
Add Surname nvarchar(25)

alter table Students
alter column Surname nvarchar(100)

exec sp_rename 'Students.Surname','Soyad'

truncate table Students

select Id,Name,Soyad,AvgPoint from Students

select * from Students

select Name,AvgPoint from students

select (Name + ' ' + Soyad) 'Fullname', AvgPoint from students

select (Name + ' '+ Soyad) as Fullname,avgpoint from students where avgpoint<=50

select Name, avgpoint from students where avgpoint>=50 and avgpoint<=80

select name,avgpoint from students where avgpoint between 30 and 70

select name, avgpoint 'ortalama'  from students where avgpoint in (30,40,54,99)


insert into Students
values('7','Rufat',63,'Mazamov')


insert into Students(Id,Name,Soyad,AvgPoint)
values('8','Aqshin','Xalilov',70)

insert into Students(Id,Name,Soyad,AvgPoint)
values('9','Ismayil','Asadullayev',65),
('10','Suleyman','Abbasov',30),
('11','Jamal','Singapur',74)


update  students
set avgpoint=1000000000 where name='Vusal'

update students 
set avgpoint=100 where avgpoint<=80


select LEN(name) 'NameLength',Name from students

select SUBSTRING(name,2,3) from students