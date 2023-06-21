create table if not exists netology.CUSTOMERS
(
    id serial primary key,
    name varchar not null,
    surname varchar not null,
    age int     not null,
    phone_number varchar not null
);


create table if not exists netology.ORDERS
(
    id serial primary key,
    date timestamp not null,
    customer_id int,
    product_name varchar not null,
    amount int not null,
    foreign key (customer_id) references netology.CUSTOMERS(id)
);

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('Ivan', 'Ivanov', 26, '89269021781');

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('Petr', 'Petrov', 42, '89095658749');

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('Sidr', 'Sidorov', 34, '89251165552');

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 2, 'milk', 3);

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 3, 'bread', 2);

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 2, 'sugar', 2);