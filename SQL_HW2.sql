

--Задача 1:
--Вывести всех работников, чьи зарплаты есть в базе вместе с зарплатами.

select employee_name, monthly_salary from employee_salary
 join employees on employees.id = employee_salary.employee_id  
 join salary on salary.id=employee_salary.salary_id;

--Задача 2:
--Вывести всех работников, у которых ЗП меньше 2000.

select employee_name, monthly_salary from employee_salary
 join  employees on employees.id = employee_salary.employee_id  
 join salary on salary.id=employee_salary.salary_id where monthly_salary < 2000;

--Задача 3: 
--Вывести все зарплатные позиции, но работник по ним не назначен.
--ЗП есть, но непонятно кто ее получает


select e.employee_name, s.monthly_salary from employees e
full join employee_salary es on e.id = es.employee_id 
full join salary s on es.salary_id=s.id where e.employee_name is null;



 --4)Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. 
 --(ЗП есть, но не понятно кто её получает.)
select employee_name,monthly_salary from employees 
full join employee_salary  on employees.id = employee_salary.employee_id
full join salary on employee_salary.id = employee_salary.salary_id 
where employee_name is null and monthly_salary < 2000;

--5)Найти всех работников кому не начислена ЗП.
select employee_name,monthly_salary from employees 
join employee_salary  on employees.id = employee_salary.employee_id
left join salary on employee_salary.id = employee_salary.salary_id 
where monthly_salary is null;

 --6)Вывести всех работников с названиями их должности.

select employee_name,role_name from employees
join roles_employee on employees.id = roles_employee.id 
left join roles on roles_employee.role_id =roles.id ;

 --7)Вывести имена и должность только Java разработчиков.

select employee_name,role_name from employees
join roles_employee on employees.id = roles_employee.id 
left join roles on roles_employee.role_id =roles.id
where roles.role_name like '%Java developer%';

 --8)Вывести имена и должность только Python разработчиков.

select employee_name,role_name from employees
join roles_employee on employees.id = roles_employee.id 
left join roles on roles_employee.role_id =roles.id
where roles.role_name like '%Python developer%';


 --9)Вывести имена и должность всех QA инженеров.

select employee_name,role_name from employees
join roles_employee on employees.id = roles_employee.id 
left join roles on roles_employee.role_id =roles.id
where roles.role_name like '%QA%';

 --10)Вывести имена и должность ручных QA инженеров.
select employee_name,role_name from employees
join roles_employee on employees.id = roles_employee.id 
left join roles on roles_employee.role_id =roles.id
where roles.role_name like '% Manual QA engineer%';

 --11)Вывести имена и должность автоматизаторов QA.

select employee_name,role_name from employees
join roles_employee on employees.id = roles_employee.id 
left join roles on roles_employee.role_id =roles.id
where roles.role_name like '%Automation QA engineer%';

 --12)Вывести имена и зарплаты Junior специалистов

select employee_name,monthly_salary from employees 
join employee_salary  on  employees.id =  employee_salary.employee_id
join salary on employee_salary.salary_id= salary.id 
join roles_employee on employees.id= roles_employee.employee_id  
join roles on roles_employee.role_id = roles.id where roles.role_name like 'Junior%';

 --13)Вывести имена и зарплаты Middle специалистов

select employee_name,monthly_salary from employees 
join employee_salary  on  employees.id =  employee_salary.employee_id
join salary on employee_salary.salary_id= salary.id 
join roles_employee on employees.id= roles_employee.employee_id  
join roles on roles_employee.role_id = roles.id where roles.role_name like 'Middle%';

 --14)Вывести имена и зарплаты Senior специалистов

select employee_name,monthly_salary from employees 
join employee_salary  on  employees.id =  employee_salary.employee_id
join salary on employee_salary.salary_id= salary.id 
join roles_employee on employees.id= roles_employee.employee_id  
join roles on roles_employee.role_id = roles.id where roles.role_name like 'Senior%';


 --15)Вывести зарплаты Java разработчиков

select distinct  monthly_salary, role_name from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id  
join roles_employee on employees.id  = roles_employee.role_id 
join roles on  roles_employee.role_id = roles.id
where roles.role_name like '%Java developer%';


--16)Вывести зарплаты Python разработчиков

select distinct monthly_salary, role_name from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id  
join roles_employee on employees.id  = roles_employee.role_id 
join roles on  roles_employee.role_id = roles.id
where roles.role_name like '%Python developer%';


--17)Вывести имена и зарплаты Junior Python разработчиков

select distinct employee_name, monthly_salary, role_name from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id  
join roles_employee on employees.id  = roles_employee.role_id 
join roles on  roles_employee.role_id = roles.id
where roles.role_name like '%Python developer%';

--18)Вывести имена и зарплаты Middle JS разработчиков

select distinct employee_name, monthly_salary, role_name from salary
left join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id  
join roles_employee on employees.id  = roles_employee.role_id 
left join roles on  roles_employee.role_id = roles.id
where roles.role_name like '%Middle JavaScript developer%';

--19)Вывести имена и зарплаты Senior Java разработчиков

select distinct employee_name, monthly_salary, role_name from salary
left join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id  
join roles_employee on employees.id  = roles_employee.role_id 
left join roles on  roles_employee.role_id = roles.id
where roles.role_name like '%Senior Java developer%';

--20)Вывести зарплаты Junior QA инженеров

select distinct employee_name, monthly_salary, role_name from salary
left join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id  
join roles_employee on employees.id  = roles_employee.role_id 
left join roles on  roles_employee.role_id = roles.id
where roles.role_name like 'Junior% QA%';

--21)Вывести среднюю зарплату всех Junior специалистов

select distinct avg (monthly_salary) from salary
left join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id  
join roles_employee on employees.id  = roles_employee.role_id 
left join roles on  roles_employee.role_id = roles.id
where roles.role_name like '%Junior%';

--22)Вывести сумму зарплат JS разработчиков

select distinct sum (monthly_salary) from salary
left join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id  
join roles_employee on employees.id  = roles_employee.role_id 
left join roles on  roles_employee.role_id = roles.id
where roles.role_name like '%JavaScript developer%';

--23)Вывести минимальную ЗП QA инженеров

select distinct min (monthly_salary) from salary
left join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id  
join roles_employee on employees.id  = roles_employee.role_id 
left join roles on  roles_employee.role_id = roles.id
where roles.role_name like 'Junior% QA%';

--24) Вывести максимальную ЗП QA инженеров

select distinct max (monthly_salary) from salary
left join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id  
join roles_employee on employees.id  = roles_employee.role_id 
left join roles on  roles_employee.role_id = roles.id
where roles.role_name like 'Junior% QA%';

--25.Вывести количество QA инженеров

select  count(*) from roles 
where role_name like 'Junior% QA%';

--26)Вывести количество Middle специалистов.
select count(*) from roles
where role_name like '%Middle%';

--27)Вывести количество разработчиков
select count(*) from roles
where role_name like '%developer%';

--28)Вывести фонд (сумму) зарплаты разработчиков.
select distinct sum (monthly_salary) from salary
left join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id  
join roles_employee on employees.id  = roles_employee.role_id 
left join roles on  roles_employee.role_id = roles.id
where roles.role_name like '%developer%';

--29)Вывести имена, должности и ЗП всех специалистов по возрастанию

select distinct monthly_salary, employee_name, role_name from salary
 join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id  
join roles_employee on employees.id  = roles_employee.role_id 
left join roles on  roles_employee.role_id = roles.id
order by monthly_salary asc;

--30)Вывести имена, должности и ЗП всех специалистов по возрастанию,
-- у которых ЗП от 1700 до 2300

select distinct monthly_salary, employee_name, role_name from salary
 join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id  
join roles_employee on employees.id  = roles_employee.role_id 
left join roles on  roles_employee.role_id = roles.id
where monthly_salary in 
(select monthly_salary from salary where monthly_salary >=1700 and monthly_salary <=2300)
order by monthly_salary asc;

--31)Вывести имена, должности и ЗП всех специалистов по возрастанию,
-- у которых ЗП меньше 2300
select distinct monthly_salary, employee_name, role_name from salary
 join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id  
join roles_employee on employees.id  = roles_employee.role_id 
left join roles on  roles_employee.role_id = roles.id
where monthly_salary in 
(select monthly_salary from salary where  monthly_salary < 2300)
order by monthly_salary asc;

--32)Вывести имена, должности и ЗП всех специалистов по возрастанию,
--у которых ЗП равна 1100, 1500, 2000

select distinct monthly_salary, employee_name, role_name from salary
 join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id  
join roles_employee on employees.id  = roles_employee.role_id 
left join roles on  roles_employee.role_id = roles.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary asc;