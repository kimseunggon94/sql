-- curdate(), current_date => yyyyy, MM, dd
select curdate(), current_date;

-- curtime(), current_time => hh, mm, ss
select curtime(), current_time();

-- now(), sysdate(), current_timestamp() => yyyyy, MM, dd, hh, mm, ss
select now(), sysdate(), current_timestamp();

-- now() : 쿼리 실행하기 전 
-- sysdate() : 쿼리가 실행되면서
select now(), sleep(2), now();
select sysdate(), sleep(2), sysdate();

-- date format
select date_format(now(), '%Y년 %m월 %d일 %h시 %i분 %s초');
select date_format(sysdate(), '%Y-%c-%e %h:%i:%s:%f');

-- period_diff(p1, p2)
-- : YYMM, YYYYMM으로 표기되는 p1과 p2의 차이의 개월을 반환한다.
-- ex) 직원들의 근무 개월 수 구하기
select concat(first_name, ' ' , last_name) as name, period_diff(date_format(curdate(), '%Y%m'),date_format(hire_date, '%Y%m'))
from employees; 

-- date_add == adddate
-- date_sub == subdate
-- (date, interval, expr, type)
-- : 날짜 date에 type 형식(year, month, day)으로 지정한 expr값을 더하거나 뺀다.
-- ex) 각 직원들의 6개월 후 근무 평가일 
select concat(first_name, ' ' , last_name) as namem, hire_date, date_add(hire_date, interval 6 month) from employees;

-- cast
select now(), cast(now() as date), cast(now() as datetime);

select 1-2, cast(1-2 as unsigned);

select cast(cast(1-2 as unsigned)as signed);










