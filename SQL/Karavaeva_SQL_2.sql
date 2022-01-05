-- Создать таблицу employees
-- id. Serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
	);

-- select * from employees;

-- Наполнить таблицу employee 70 строками

insert into employees(employee_name)
	values ('Julie Green'),
('Margaret Brown'),
('Rosa Barnett'),
('Thomas White'),
('Rosemary Miller'),
('Gilbert Williams'),
('Lisa Adams'),
('Heidi Schultz'),
('John Stevens'),
('Melissa Hopkins'),
('Alice Gonzalez'),
('Richard Perkins'),
('Gregory Keller'),
('Alice Hodges'),
('Patrick Boyd'),
('Philip King'),
('Matthew Collins'),
('Julia Abbott'),
('Laura Johnson'),
('Anna Johnson'),
('Jennifer Jensen'),
('Diana Murphy'),
('David Smith'),
('Lisa Collins'),
('Jean Howard'),
('Lisa Douglas'),
('Christopher Peterson'),
('Larry Sullivan'),
('Rachel Gibbs'),
('Erica Bennett'),
('Carol Anderson'),
('Cynthia Wolfe'),
('Jill Chandler'),
('Neil Marsh'),
('Michael Nelson'),
('Raymond Glover'),
('Jennifer Wade'),
('Mary Russell'),
('Sandra White'),
('Charlene Phillips'),
('Aaron Love'),
('Julie Miller'),
('Oscar Williams'),
('Bobbie Mitchell'),
('Daniel Byrd'),
('Robert Sanders'),
('Terri Singleton'),
('Dan Boyd'),
('David Carson'),
('Pamela Cannon'),
('Ruth Welch'),
('Matthew Parker'),
('Veronica Davis'),
('Ray Watson'),
('Irene Howard'),
('Dennis Taylor'),
('Marie Doyle'),
('Patricia West'),
('Natalie Martinez'),
('Nancy Sanchez'),
('Mark Farmer'),
('Brett Martin'),
('Michael Bass'),
('Joseph Young'),
('Jenny Moore'),
('Richard Carpenter'),
('Clarence Smith'),
('Willie Ryan'),
('Kim Cooper'),
('Jason Garza');

-- Создать таблицу salary
-- id. Serial  primary key
-- monthly_salary. Int, not null

create table salary (
	id serial  primary key,
	monthly_salary int not null
	);
	
-- select * from salary;

-- Наполнить таблицу salary 15 строками:
-- 1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800, 1900, 2000, 2100, 2200, 2300, 2400, 2500

insert into salary(monthly_salary) 
	values (1000), 
	(1100), 
	(1200), 
	(1300), 
	(1400), 
	(1500), 
	(1600), 
	(1700), 
	(1800), 
	(1900), 
	(2000), 
	(2100), 
	(2200), 
	(2300), 
	(2400);

-- Создать таблицу employee_salary
--id. Serial primary key,
--employee_id. Int, not null, unique
--salary_id. Int, not null

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null);

-- select * from employee_salary;

-- Наполнить таблицу employee_salary 40 строками:
--в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id, salary_id)
	values (3, 7),
	(1, 4),
	(5, 9),
	(40, 13),
	(23, 4),
	(11, 2),
	(52, 10),
	(15, 13),
	(26, 4), 
	(16, 1),
	(33, 7),
	(68, 14),
	(6, 12),
	(24, 8),
	(25, 14),
	(12, 1),
	(50, 8),
	(9, 14),
	(7, 6),
	(63, 15),
	(27, 4),
	(13, 3),
	(62, 9),
	(29, 11),
	(8, 4),
	(69, 14),
	(2, 7),
	(4, 2),
	(61, 1),
	(14, 15),
	(71, 3),
	(72, 4),
	(73, 9),
	(74, 15),
	(75, 12),
	(76, 11),
	(77, 10),
	(78, 5),
	(79, 4),
	(80, 12);
	
-- Создать таблицу roles
--id. Serial  primary key,
--role_name. int, not null, unique
	
create table roles (
	id serial primary key,
	role_name int not null unique
	);

-- select * from roles;

-- Поменять тип столба role_name с int на varchar(30)

alter table roles alter column role_name type varchar (30);

-- Наполнить таблицу roles 20 строками

insert into roles(role_name)	
	values ('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Junior JavaScript developer'),
	('Middle JavaScript developer'),
	('Senior JavaScript developer'),
	('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),
	('Senior Manual QA engineer'),
	('Project Manager'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales manager'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer');

-- Создать таблицу roles_employee
--id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	foreign key (employee_id) references employees (id),	
	role_id int not null,
	foreign key (role_id) references roles (id));

-- select * from roles_employee;

-- Наполнить таблицу roles_employee 40 строками

insert into roles_employee (employee_id, role_id)
	values (7,2),
	(20, 4),
	(3, 9),
	(5, 13),
	(23, 4),
	(11, 2),
	(10, 9),
	(22, 13),
	(21, 3),
	(34, 4),
	(6, 7),
	(39, 19),
	(2, 13),
	(19, 11),
	(61, 12),
	(62, 4),
	(1, 2),
	(24, 10),
	(37, 16),
	(4, 17),
	(17, 3),
	(35, 5),
	(54, 4),
	(36, 10),
	(15, 7),
	(28, 2),
	(13, 8),
	(18, 11),
	(33, 18),
	(14, 20),
	(32, 3),
	(30, 7),
	(8, 16),
	(12, 12),
	(29, 4),
	(31, 9),
	(9, 11),
	(25, 17),
	(16, 3),
	(26, 15);


