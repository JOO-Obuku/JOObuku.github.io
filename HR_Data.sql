--Number 1.	Write a query to retrieve the first name, last name, and email of all employees from the employees table.
SELECT first_name, last_name, email
FROM employees;

--Number 2.	Write a query to find the first name, last name, and hire date of employees who were hired after January 1, 2023.
SELECT first_name, last_name, hire_date
FROM employees
where hire_date > '2023-01-01';

--Number 3.	Write a query to retrieve the first name, last name, and salary of employees who work in the department with department_id 5 and have a salary greater than 5000
SELECT  first_name, last_name, salary
FROM employees
where department_id = '5' AND salary > '5000';

--Number 4.	Write a query to list the first 5 countries from the countries table based on country_name.
SELECT country_name
FROM countries
LIMIT 5;

--Number 5.	Write a query to list the top 3 highest-paid employees, including their first name, last name, and salary.
SELECT first_name, last_name, salary
FROM employees
ORDER by salary DESC
LIMIT 3;

--Number 6.	Write a query to find the number of employees in each department. Display the department ID and the count of employees
SELECT department_id, COUNT(employee_id) as "Count of Employees"
FROM employees
GROUP by department_id;

--Number 7.	Write a query to find the departments with more than 10 employees. Display the department ID and the count of employees
SELECT department_id, COUNT(employee_id) as "Count of Employees"
FROM employees
GROUP by department_id
HAVING COUNT(employee_id) > 10;

--Number 8.	Write a query to retrieve the first name, last name, and department name for all employees. Join the employees table with the departments table
SELECT first_name, last_name, department_name
from employees
JOIN departments
on employees.department_id = departments.department_id;

--Number 9.	Write a query to count the number of employees in each country. Display the country name and the count of employees by joining the employees, departments , locations, and countries  tables
SELECT country_name, COUNT(employee_id) as "COUNT OF EMPLOYEES"
FROM employees 
JOIN departments
ON employees.department_id = departments.department_id
JOIN locations
ON departments.location_id = locations.location_id
JOIN countries 
ON countries.country_id = locations.country_id
GROUP by country_name;

--Number 10.	Write a query to retrieve a list of distinct job titles from the jobs table.
SELECT DISTINCT job_title
FROM jobs;

--Number 11.	Write a query to find all employees whose last name starts with the letter 'S'. Display their first name, last name, and email.
SELECT first_name, last_name, email
FROM employees
WHERE last_name ILIKE 'S%';

--Number 12.	Write a query to find employees whose salary is between 4000 and 8000. Display their first name, last name, and salary
SELECT first_name, last_name, salary
FROM employees
WHERE salary BETWEEN 4000 and 8000;

--Number 13.	Write a query to retrieve all locations, ordered by city in ascending order. Display the location_id, street_address, city, and country_id
SELECT location_id, street_address, city, country_id
FROM locations
ORDER by city;

--Number 14.	Write a query to calculate the total salary paid to employees in the employees table
SELECT sum(salary) as "Total Salary"
FROM employees;

--Number 15.	Write a query to find the average salary for each job title. Display the job title and the average salary, ordered by the average salary in descending order
SELECT job_title, (min_salary + max_salary)/2 as "Average salary"
FROM jobs
ORDER BY "Average salary" DESC;

--Number 16.	Write a query to retrieve the first name, last name, and department name for employees who work in the "Sales" department. Use a join between the employees and departments tables.
SELECT first_name, last_name, department_name
FROM employees
JOIN departments
ON employees.department_id =departments.department_id
WHERE department_name = 'Sales';

--Number 17.	Write a query to retrieve the first name, last name, job title, and department name for each employee. Join the employees, jobs, and departments tables
SELECT first_name, last_name, job_title, department_name
FROM employees
JOIN jobs
ON employees.job_id = jobs.job_id
JOIN departments
on employees.department_id = departments.department_id;

--Number 18.	Write a query to find the number of employees in each city where the number of employees is greater than 5. Display the city name and the count of employees by joining the employees, locations, and departments tables
SELECT city, COUNT(employee_id) as "Number of Employees"
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
JOIN locations
on departments.location_id = locations.location_id
GROUP by city
having count(employee_id) > 5;


