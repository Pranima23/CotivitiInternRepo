-- in

 

SELECT * 
FROM hr.employees 
WHERE employee_id IN ('100', '101', '102');

 

SELECT * 
FROM hr.employees 
WHERE employee_id IN (100, 101, 102);

 

SELECT * FROM hr.employees;

 

SELECT * FROM hr.employees WHERE UPPER(last_name) IN ('KING', 'KOCHHAR', 'DE HAAN');

 

-- BETWEEN
SELECT COUNT(DISTINCT employee_id) FROM hr.employees
WHERE hire_date BETWEEN to_date('2005-01-01', 'YYYY-MM-DD')
AND to_date('2010-12-31', 'YYYY-MM-DD');

 

SELECT *
FROM hr.employees
WHERE SALARY BETWEEN 5000 and 10000;

 

-- GROUP BY
SELECT job_id, COUNT(DISTINCT employee_id) AS total_employee_count
FROM
hr.employees
GROUP BY job_id;

 

SELECT job_id, COUNT(DISTINCT employee_id) AS total_employee_count
FROM
hr.employees
GROUP BY job_id
ORDER BY 2 desc;

 

SELECT job_id, salary, COUNT(DISTINCT employee_id) AS total_employee_count
FROM
hr.employees
    WHERE salary >= 5000 AND salary <= 10000
GROUP BY job_id, salary
ORDER BY 2 desc;

 

SELECT * FROM (
SELECT job_id, COUNT(DISTINCT employee_id) AS total_employee_count
FROM
hr.employees
    WHERE salary >= 5000 AND salary <= 10000
GROUP BY job_id
ORDER BY 2 desc
    )
WHERE total_employee_count >=10;

 

SELECT job_id, COUNT(DISTINCT employee_id) AS total_employee_count
FROM
hr.employees
    WHERE salary >= 5000 AND salary <= 10000
GROUP BY job_id
HAVING COUNT(DISTINCT employee_id) >= 10;

 

-- exits not exists preferred over the use of in
select * from hr.employees
where department_id in ('100', '101', '102');

 

select count(*) from hr.departments;

 

-- exists
select distinct department_id from hr.employees e
where exists
(select 1 from hr.departments d where e.department_id = d.department_id)

 

-- not exists
select distinct department_id from hr.employees e
where not exists
(select 1 from hr.departments d where e.department_id = d.department_id)

 

-- find out in which departments there are no employees
select distinct department_id, department_name from hr.departments d
where not exists
(select 1 from hr.employees e where d.department_id = e.department_id)

 

select * from hr.employees where department_id = '120';

 

--date function
to_date('2023-05-12', 'YYYY-MM-DD')
to_date('2023/05/12', 'YYYY/MM/DD')

 

-- character function
to_char()

 

-- join
left join == left outer join
right join == right outer join
inner join
outer join == full outer join
self join
cross join
natural join