INSERT INTO employees (
    first_name, last_name, gender, birth_date, emp_no, hire_date) value 
('Jan', 'Claud', 'm', 19960528, 2, 20200101), 
('Pau', 'Claud', 'm', 19960528, 3, 20200101), 
('Pau','Puchu','m', 19840219, 3, 20200101),
('El','Cometa','m', 19660120, 4, 20200101),
('Pico','Pako','m', 19920101, 5, 20200101),
('Pau','Hortez','m', 19930202, 6, 20200101),
('La','Monika','f', 19940303, 7, 20200101),
('Ivan','ElTerrible','m', 19950404, 8, 20200101),
('Yogi','Chan','m', 19960505, 9, 20200101),
('Wilmer','Pelusa','m', 19970606, 10, 20200101),
('Pivon','DeYate','f', 19980707, 11, 20200101),
('Maria','DB','f', 19990808, 12, 20200101),
('Mongo','TuVieja','m', 19910909, 13, 20200101),
('Mini','Assembler','f', 19910120, 14, 20200101),
('Froilan','Desparecido','m', 19910210, 15, 20200101),

INSERT INTO salaries (
    emp_no, salary, from_date, to_date) value
(1, 5010, 20100211, 20201210),
(1, 9010, 20090211, 20201210),
(2, 5020, 20100312, 20201210),
(2, 9020, 20100912, 20201210),
(3, 5030, 20100413, 20201210),
(3, 9020, 20100712, 20201210),
(4, 5040, 20100514, 20201210),
(4, 9040, 20100414, 20201210),
(5, 5050, 20100615, 20201210),
(5, 9050, 20100415, 20201210),
(6, 5060, 20100716, 20201210),
(7, 5070, 20100817, 20201210),
(8, 5080, 20100918, 20201210),
(9, 5090, 20500219, 20201210),
(10, 41000, 20110210, 20201210),
(11, 41100, 20120210, 20201210),
(12, 41200, 20130210, 20201210),
(13, 41300, 20140210, 20201210),
(14, 41400, 20150210, 20201210),
(15, 41500, 20160210, 20201210);

INSERT INTO deparment ( dept_no, dept_name) value
(1, 'Sales'), (2, 'Management');

INSERT INTO dept_emp 
( emp_no, dept_no, from_date, to_date) value 
(1, 1, 20100101, 20200101),
(2, 1, 20100101, 20200101),
(3, 1, 20100101, 20200101),
(4, 1, 20100101, 20200101),
(5, 1, 20100101, 20200101),
(6, 1, 20100101, 20200101),
(7, 1, 20100101, 20200101),
(8, 1, 20100101, 20200101),
(9, 1, 20100101, 20200101),
(10, 1, 20100101, 20200101),
(11, 1, 20100101, 20200101),
(12, 1, 20100101, 20200101),
(13, 1, 20100101, 20200101),
(14, 1, 20100101, 20200101),
(15, 1, 20100101, 20200101),
(1, 2, 20100101, 20200101),
(2, 2, 20100101, 20200101),
(3, 2, 20100101, 20200101),
(4, 2, 20100101, 20200101),
(5, 2, 20100101, 20200101);

INSERT INTO dept_manager
( emp_no, dept_no, from_date, to_date) value 
(10, 1, 20100101, 20200101),
(11, 1, 20100101, 20200101),
(12, 1, 20100101, 20200101),
(13, 1, 20100101, 20200101),
(14, 1, 20100101, 20200101),
(15, 1, 20100101, 20200101);

INSERT INTO titles
( emp_no, title, from_date, to_date) value 
(1, 'Degree on Something', 20100101, 20200101),
(2, 'Degree on Something', 20100101, 20200101),
(3, 'Degree on Something', 20100101, 20200101),
(4, 'Degree on Something', 20100101, 20200101),
(5, 'Degree on Something', 20100101, 20200101),
(6, 'Degree on Something', 20100101, 20200101),
(7, 'Degree on Something', 20100101, 20200101),
(8, 'Degree on Something', 20100101, 20200101),
(9, 'Degree on Something', 20100101, 20200101),
(10, 'Degree on Something', 20200101, 20210101),
(11, 'Degree on Something', 20200101, 20210101),
(12, 'Degree on Something', 20200101, 20210101),
(13, 'Degree on Something', 20200101, 20210101),
(14, 'Degree on Something', 20200101, 20210101),
(15, 'Degree on Something', 20200101, 20210101);

-- GET DATA

SELECT * from salaries WHERE salary>=20000;  
SELECT * from salaries WHERE salary<=10000;  
SELECT * from salaries WHERE salary between 
14000 and 50000;
SELECT COUNT(emp_no) FROM employees;

--  Select the total number of employees who 
--  have worked in more than one department:
select count(emp_no) as count 
from dept_emp group by dept_no 
where having count >=2; 

SELECT emp_no, count(*) FROM 
dept_emp GROUP BY emp_no having 
count(*) > 1;

--  Select the titles of the year 2019
select * from titles where year(from_date) = 2010;

--  Select only the name of the employees in capital letters
select upper(first_name) from employees;

--  Select the name, surname and name of the current department 
--  of each employee:


--  Select the name, surname and number of times the employee 
--  has worked as a manager

--  Select the name of employees without any being repeated

--  DELETE DATA

--  Eliminate all employees with a salary greater than 20,000
--  Remove the department that has more employees


