--- ANSI JOIN 1999
--- 1. join ~ on
select a. first_name, b.title
from employees a 
join titles b
on a.emp_no = b.emp_no;


-- 2. natural join
select a. first_name, b.title
from employees a 
natural join titles b;

-- 2-1. natural join의 문제점
select count(*)
from salaries a
natural join titles b;

-- 2-2 join ~ using => natural join의 문제점 해결 
SELECT count(*)
FROM salaries a
JOIN titles b USING (emp_no)




