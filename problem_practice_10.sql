CREATE TABLE employee (
  employee_id serial PRIMARY KEY,
  employee_name varchar(50),
  department_id int REFERENCES departments (department_id),
  salary decimal(10, 2),
  hire_date date
)
CREATE TABLE departments (
  department_id serial PRIMARY KEY,
  department_name varchar()
)
INSERT INTO
  departments (department_name)
VALUES
  ('HR'),
  ('Marketing'),
  ('Finance'),
  ('IT'),
  ('Sales'),
  ('Engineering'),
  ('Customer Support'),
  ('Administration'),
  ('Research'),
  ('Quality Assurance');


INSERT INTO
  employee (employee_name, department_id, salary, hire_date)
SELECT
  (
    ARRAY[
      'John',
      'Jane',
      'Michael',
      'Emily',
      'David',
      'Sarah',
      'James',
      'Jessica',
      'Robert',
      'Ashley',
      'William',
      'Amanda',
      'Brian',
      'Megan',
      'Kevin',
      'Rachel',
      'Jason',
      'Stephanie',
      'Jeffrey',
      'Nicole'
    ]
  ) [floor(random() * 20 + 1)] || ' ' || (
    ARRAY[
      'Smith',
      'Johnson',
      'Williams',
      'Brown',
      'Jones',
      'Garcia',
      'Miller',
      'Davis',
      'Rodriguez',
      'Martinez',
      'Hernandez',
      'Lopez',
      'Gonzalez',
      'Wilson',
      'Anderson',
      'Thomas',
      'Taylor',
      'Moore',
      'Jackson',
      'Martin'
    ]
  ) [floor(random() * 20 + 1)] AS employee_name,
  floor(random() * 10 + 1)::int AS department_id,
  round((45000 + random() * 85000)::numeric, 2) AS salary,
  CAST(
    CURRENT_DATE - (floor(random() * 2500) || ' days')::interval AS DATE
  ) AS hire_date
FROM
  generate_series(1, 100);


-- inner join to restrieve eployee and department information
SELECT
  *
FROM
  employee AS e
  INNER JOIN departments AS d ON e.department_id = d.department_id;


SELECT
  employee_name,
  salary,
  department_name
FROM
  employee
  INNER JOIN departments USING (department_id);


-- Show department name with average salary
SELECT
  department_name,
  round(avg(salary))
FROM
  employee
  INNER JOIN departments USING (department_id)
GROUP BY
  department_name
  -- Count employee each department 
SELECT
  department_name,
  count(employee_id)
FROM
  employee
  INNER JOIN departments USING (department_id)
GROUP BY
  department_name
  -- find the department with the highest average salary 
SELECT
  department_name,
  round(avg(salary)) AS avg_salary
FROM
  employee
  JOIN departments USING (department_id)
GROUP BY
  department_name
ORDER BY
  avg_salary DESC
LIMIT
  1
  -- Count employee hired each year
SELECT
  extract(
    YEAR
    FROM
      hire_date
  ) AS hire_year,
  count(employee_name)
FROM
  employee
GROUP BY