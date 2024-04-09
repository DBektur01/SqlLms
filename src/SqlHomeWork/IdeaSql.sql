create table users(
  id serial primary key ,
  user_name varchar(50),
  email varchar(50) unique
);
insert into users(user_name, email)
values
    ('Bektur','bektur@gmail.com'),
    ('Nurgazy','nurgazy@gmail.com'),
    ('Beksultan','beksultan@gmail.com');

create table posts(
      id serial primary key ,
      user_id int references users(id),
      description varchar(50) not null ,
      timestamp double precision
);
insert into posts(user_id, description, timestamp)
values
    (2,'Instagram',23.45),
    (3,'Instagram',07.20),
    (1,'Instagram',14.08);

create table comments(
         id serial primary key ,
         post_id int references posts(id)not null ,
         user_id int references users(id)not null ,
         comment_text varchar(100)
);

insert into comments(post_id, user_id, comment_text)
values
    (1,3,'Java 13 the best group');

create table products(
     id serial primary key,
     product_name varchar(50) not null,
     price double precision

);
insert into products(product_name, price)
values
    ('Book',300),
    ('Phone',60000),
    ('TV',30000);

create table orders(
       id serial primary key ,
       user_id int references users(id) not null ,
       order_date float
);
insert into orders(user_id, order_date)
values
    (3,09.3);

create table orders_Items(
     id serial primary key,
     order_id int references orders(id) not null ,
     product_id int references products(id) not null ,
     quantity int not null ,
     total_price int
);
insert into orders_Items(order_id, product_id, quantity, total_price)
values
    (1,1,5,100);

create table categories(
   id serial primary key,
   category_name varchar(50)
);
insert into categories(category_name)
values
    ('Category name'),
    ('Category description');

create table products_Categories(
    id serial primary key ,
    product_id int references products(id),
    category_id int references categories(id)
);
insert into products_Categories(product_id, category_id)
values
    (1,1);
create table departments(
    id serial primary key ,
    department_name varchar(50)
);
insert into departments(department_name)
values ('Department name');

create table employees(
  id serial primary key ,
  employee_name varchar(50),
  department_id int references departments(id) not null
);

insert into employees(employee_name, department_id)
values ('Employee name',1);