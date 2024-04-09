--N1
postgres=# create table books(id serial primary key,title varchar(50),author_id int references authors(id)not null,genre_id int references genres(id));
CREATE TABLE
postgres=# insert into books(title,author_id,genre_id)values('Ak keme',1,1);
INSERT 0 1
--N2
postgres=# create table book_loans(id serial primary key,book_id int references books(id)not null,user_id int references users(id),loan_date varchar(50),return_date varchar(50));
CREATE TABLE
postgres=# insert into book_loans(book_id,user_id,loan_date,return_date) values(1,1,'2024 03 30','2024 04 10');
INSERT 0 1

--N3
       postgres=# create table students(id serial primary key,student_name varchar(50),grade_level int);
CREATE TABLE
    postgres=# insert into students(student_name, grade_level)values('Bektur',4);
INSERT 0 1
--N4
postgres=# create table teachers(id serial primary key, teacher_name varchar(50));
CREATE TABLE
    postgres=# insert into teachers(teacher_name)values('Rahim');
INSERT 0 1

--N5
       postgres=# create table classes(id serial primary key,class_name varchar(50),teacher_id int references teachers(id));
CREATE TABLE
    postgres=# insert into classes(class_name,teacher_id)values ('Java13',1);
INSERT 0 1
--N6
CREATE TABLE
    postgres=# insert into assignments(class_id,assignment_name,due_date)values(1,'Assignments_name','2024-1-2');
INSERT 0 1
--N7
       postgres=# create table schools(id serial primary key,school_name varchar(50),address varchar(50));
CREATE TABLE
    postgres=# insert into schools(school_name,address)values('Peaksoft','Grajdanskaya 199');
INSERT 0 1
--N8
       postgres=# create table courses(id serial primary key,course_name varchar(50),school_id int references schools(id));
CREATE TABLE
    postgres=# insert into courses(course_name,school_id)values('Java',1);
INSERT 0 1
--N9
       postgres=# create table entrollments(id serial primary key,student_id int references students(id), course_id int references courses(id),enrollment_date date);
CREATE TABLE
    postgres=# insert into entrollments(student_id,course_id,enrollment_date)values (1,1,'2023-8-4');
INSERT 0 1
--N10
       postgres=# create table payments(id serial primary key,enrollment_id int references entrollments(id));
CREATE TABLE
    postgres=# insert into payments(enrollment_id)values(1);
INSERT 0 1

