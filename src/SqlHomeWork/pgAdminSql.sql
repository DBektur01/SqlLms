N1
create table projects(id serial primary key,project_name varchar,department_id int references departments(id));
insert into projects(project_name, department_id)
values ('Pharmacy',1);
N2
create table tasks(id serial primary key,task_name varchar(50),projects_id int references projects(id) not null);
insert into tasks(task_name,projects_id)
values ('Lalafo',1);
N3
create table customers(id serial primary key,customer_name varchar(50),email varchar unique,phone varchar(50) unique);
insert into customers(customer_name,email,phone)
values ('Bektur','bek@gmail.com','+9962469462');
N4
create table addresses(id serial primary key,
                       customer_id int references customers(id)not null,
                       address_line varchar(50),city varchar(50),country varchar(50));
insert into addresses(customer_id,address_line,city,country)
values(1,'Vostok 5','Bishkek','Kyrgyzstan');

N5
create table invoices(id serial primary key,customer_id int references customers(id)not null,invoice_date varchar(50),total_amount int);
insert into invoices(customer_id,invoice_date,total_amount)
values (1,'2024.02.04',10000);
N6
create table invoice_Items(id serial primary key,invoice_id int references invoices(id),
                           product_id int references products(id),quantity int,unit_price int);
insert into invoice_items(invoice_id,product_id,quantity,unit_price)
values (1,1,30,5000);
N7
create table suppliers(id serial primary key,supplier_name varchar(50),contact_person varchar(50));
insert into suppliers(supplier_name,contact_person)
values ('Supplier','09999849462');
N8
create table products_suppliers(product_id int references products(id),supplier_id int references suppliers(id));
insert into products_suppliers(product_id,supplier_id)
values (1,1);

N9
create table authors(id serial primary key,author_name varchar(50));
insert into authors(author_name)
values('Ch.Aitmatov');

N10
create table genres(id serial primary key, genre_name varchar(50));
insert into genres(genre_name)
values('Library');