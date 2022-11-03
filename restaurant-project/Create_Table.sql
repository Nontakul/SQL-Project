-- Table01 Menu
create table menu (
    menuID int,
    name text,
    price real,
    primary key (menuID)
);

insert into menu values
    (1, "rice", 20),
    (2, "bread", 10),
    (3, "hotdog", 30),
    (4, "hamburger", 50),
    (5, "noodle", 45),
    (6, "pizza", 120),
    (7, "cake", 100),
    (8, "salad", 80),
    (9, "icecream", 70),
    (10, "coke", 15);

-- Table02 Customer
create table customer (
    customerID int,
    name text,
    primary key (customerID)
);

insert into customer values
    (1, "John"),
    (2, "Anna"),
    (3, "Tommy"),
    (4, "Henry"),
    (5, "Dolly"),
    (6, "Jack"),
    (7, "Nick"),
    (8, "Ken"),
    (9, "Frank"),
    (10, "Paul");

-- Table03 Invoice
create table invoice (
    invoiceID int,
    invoiceDate Datetime,
    customerID int,
    employeeID int,
    primary key (invoiceID),
    foreign key (customerID) references customer (customerID),
    foreign key (employeeID) references employee (employeeID)
);

insert into invoice values
    (1, "2022-04-01", 9, 10),
    (2, "2022-04-03", 7, 8),
    (3, "2022-04-07", 5, 6),
    (4, "2022-04-09", 3, 4),
    (5, "2022-04-11", 1,2),
    (6, "2022-04-13", 10, 9),
    (7, "2022-04-15", 8, 7),
    (8, "2022-04-17", 6, 5),
    (9, "2022-04-19", 4, 3),
    (10, "2022-04-21", 2, 1);

-- Table04 Employee
create table employee (
    employeeID int,
    name text,
    primary key (employeeID)
);

insert into employee values
    (1, "Tu"),
    (2, "Pom"),
    (3, "Tin"),
    (4, "Win"),
    (5, "Aey"),
    (6,"Dang"),
    (7, "Chai"),
    (8, "Korn"),
    (9, "Pop"),
    (10, "Seen");

-- Table05 Order_record
create table order_record (
    orderID int,
    menuID int,
    customerID int,
    employeeID int,
    invoiceID int,
    primary key (orderID),
    foreign key (menuID) references menu (menuID),
    foreign key (customerID) references cutomer (customerID),
    foreign key (employeeID) references employee (employeeID),
    foreign key (invoiceID) references invoice (invoiceID)
);

insert into order_record values
    (1, 10, 9, 10, 1),
    (2, 9, 7, 8, 2),
    (3, 8, 5, 6, 3),
    (4, 7, 3, 4, 4),
    (5, 6, 1, 2, 5),
    (6, 5, 10,9, 6),
    (7, 4, 8, 7, 7),
    (8, 3, 6, 5, 8),
    (9, 2, 4, 3, 9),
    (10, 1, 2, 1, 10);