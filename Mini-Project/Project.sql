create database Exam_Section;

create table dept(
d_id           int            primary key,
d_name       varchar(20)      not null,
);

create table student(
s_id         int              primary key,
s_name      varchar(30)       not null,
d_name      varchar(20)       not null,
d_id           int            foreign key references dept(d_id),
);
create table invigilator(
I_id        int             primary key,
I_name     varchar(30)      not null,
I_bid       int             not null,
I_bname    varchar(30)      not null,
);
create table subject(
sub_id      int             primary key,
sub_name   varchar(30)      not null,
d_id      int            foreign key references dept(d_id),           
);
create table block(
b_id            int            primary key,
b_name        varchar(10)      not null,
);

create table exam_room(
r_id              int            primary key,
block_name       varchar(30)     null,
r_capacity         int            null,
b_id            int             foreign key references block(b_id),
);
create table exam(
ex_id             int            primary key,
sub_did            int           foreign key references subject(sub_id),
ex_time           time            null,
I_id               int           foreign key references invigilator(I_id),
ex_date           date            null,
);
create table exam_seat(
seat_id           int           primary key,
seat_no           int            not null,
r_id              int           foreign key references exam_room(r_id),
ex_id             int           foreign key references exam(ex_id),
s_id              int          foreign key references student(s_id),
);




select * from student
select * from invigilator
select * from subject
select * from exam
select * from exam_room
select * from exam_seat
select * from dept
select * from block
drop table block

EXEC sp_rename 'student.s_id', 'si_d', 'COLUMN';

ALTER TABLE student
ALTER COLUMN si_d varchar(30);

drop table student


