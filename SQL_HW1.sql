--1)Создать таблицу employees: id. serial,  primary key, employee_name.
 varchar(50), not null
 
create table employees(id serial primary key, employee_name varchar(50) not null);

--2) Наполнить таблицу employee 70 строками.

insert into employees (employee_name)
values ('Август'), ('Августин'), ('Авраам'), ('Аврора'), ('Агата'), ('Агафон'), ('Агнесса'), ('Агния'),('Ада'),
('Аделаида'), ('Аделина'), ('Адонис'),('Акайо'), ('Акулина'),('Алан'), ('Алевтина'), ('Александр'), ('Александра'),
('Алексей'), ('Алена'), ('Алина'), ('Алиса'), ('Алла'), ('Алсу'), ('Альберт'), ('Альбина'), ('Альфия'), ('Альфред'), ('Амалия'), 
('Амелия'), ('Анастасий'), ('Анастасия'), ('Анатолий'), ('Ангелина'), ('Андрей'), ('Анжела'), ('Анжелика'), ('Анисий'), ('Анна'),
('Антон'), ('Антонина'), ('Анфиса'), ('Аполлинарий'), ('Аполлон'), ('Ариадна'), ('Арина'), ('Аристарх'), ('Аркадий'), ('Арсен'), 
('Арсений'), ('Артем'), ('Артемий'), ('Артур'), ('Архип'), ('Ася'), ('Вадим'), ('Валентин'), ('Валентина'), ('Валерий'), ('Валерия'),
('Ванда'), ('Варвара'), ('Василий'), ('Василиса'), ('Венера'), ('Вениамин'), ('Вера'), ('Вероника'), ('Викентий'), ('Виктор')


-- 3) Создать таблицу salary: id. Serial  primary key, monthly_salary. Int, not null


create table salary (id serial primary key, monthly_salary int not null);

--4) Наполнить таблицу salary 15 строками:
1000,1100,1200,1300,1400,1500,1600,1700,1800,1900,2000,2100,2200,2300,2400,2500)

insert into salary (monthly_salary)
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
       (2400),
       (2500);
--5) Создать таблицу employee_salary: id. Serial  primary key,employee_id. 
-- Int, not null, unique, salary_id. Int, not null
      
 create table employee_salary (id serial primary key, employee_id int 
not null unique, salary_id int not null);

--6) Наполнить таблицу employee_salary 
-- 40 строками:в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary (employee_id, salary_id)
values (3,7),
       (1,4),
       (5,9),
       (40,13),
       (23,4),
       (11,2),
       (52,10),
       (15,13),
       (26,4),
       (16,1),
       (33,7),
       (2,8),
       (70,6),
       (4,11),
       (6,12),
       (7,2),
       (8,5),
       (9,14),
       (10,1),
       (12,3),
       (13,8),
       (14,5),
       (17,12),  
       (46,13),
       (18,6),
       (22,9),
       (35,10),
       (19,12),
       (50,2),
       (29,1),   
       (87,4),
       (115,8),
       (99,13),
       (81,14),
       (82,2),
       (83,3),
       (84,7),
       (85,10),
       (86,11),
       (100,12);
       
      
   --7) Создать таблицу roles: id. Serial  primary key, role_name. int, not null, unique
    
create table roles ( id serial  primary key, role_name int not null unique);

--8) Поменять тип столба role_name с int на varchar(30)

   ALTER TABLE roles alter column role_name type varchar;
   
   --9) Наполнить таблицу roles 20 строками
  insert into roles (role_name)
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

--10) Создать таблицу roles_employee: id. Serial  primary key, employee_id. 
--Int, not null, unique (внешний ключ для таблицы employees, поле id) role_id.
 --Int, not null (внешний ключ для таблицы roles, поле id)
	
create table roles_employee (id serial  primary key, employee_id int not null unique, role_id int
not null, foreign key(employee_id) references employees(id), foreign key (role_id)
references roles(id));

--11) Наполнить таблицу roles_employee 40 строками:

insert into roles_employee (employee_id, role_id)
values (7,2),
       (20,4),
       (3,9),
       (5,13),
       (23,4),
       (11,2),
       (10,9),
       (22,13),
       (21,3),
       (34,4),
       (6,7),      
       (1,1),
       (2,8),
       (4,10),
       (8,12),
       (9,5),
       (12,6),
       (13,14),
       (14,15),
       (15,3),      
       (16,10),
       (17,2),
       (18,1),
       (19,9),
       (24,5),
       (25,8),
       (26,7),
       (27,11),
       (28,12),
       (29,2),        
       (30,8),
       (31,6),
       (32,10),
       (33,3),
       (46,5),
       (44,12),
       (52,1),
       (56,13),
       (64,10),
       (68,2);

