# Online Course Enrollment Database

## TABLE CREATION INSTRUCTIONS

### Instruction

Create the following three tables for an online course enrollment system. Pay attention to data types, constraints, and relationships between tables.

---

### TABLE 1: students

This table should store student information with the following columns:

- `student_id`: Integer, primary key
- `first_name`: Text field (max 50 characters)
- `last_name`: Text field (max 50 characters)
- `email`: Text field (max 100 characters)
- `phone`: Text field (max 20 characters, NULL allowed)
- `country`: Text field (max 50 characters)
- `enrollment_date`: Date field

---

### TABLE 2: courses

This table should store course information with the following columns:

- `course_id`: Integer, primary key
- `course_title`: Text field (max 150 characters)
- `category`: Text field (max 50 characters)
- `price`: Decimal number (10 digits total, 2 after decimal point)
- `instructor`: Text field (max 100 characters)
- `published_year`: Integer

---

### TABLE 3: enrollments

This table should store enrollment information with the following columns:

- `enrollment_id`: Integer, primary key
- `student_id`: Integer that references the students table
- `course_id`: Integer that references the courses table
- `enrollment_date`: Date field
- `progress_percentage`: Integer (NULL allowed)
- `paid_amount`: Decimal number (10 digits total, 2 after decimal point)

---

## DATASET TO INSERT

### Instruction

After creating your tables, insert the following data. You'll need to write INSERT statements for each table.

---

### STUDENTS DATA (10 records)

**Columns:** `student_id`, `first_name`, `last_name`, `email`, `phone`, `country`, `enrollment_date`

1. 1, Rahim, Uddin, rahim@email.com, 01711111111, Bangladesh, 2023-01-10  
2. 2, Karim, Ahmed, karim@email.com, NULL, Bangladesh, 2023-01-15  
3. 3, Sara, Khan, sara@email.com, 01822222222, Pakistan, 2023-02-01  
4. 4, John, Smith, john@email.com, NULL, USA, 2023-02-10  
5. 5, Emma, Brown, emma@email.com, 01933333333, UK, 2023-02-20  
6. 6, Ayaan, Ali, ayaan@email.com, NULL, India, 2023-03-05  
7. 7, Lina, Rahman, lina@email.com, 01644444444, Bangladesh, 2023-03-12  
8. 8, Mark, Taylor, mark@email.com, NULL, Australia, 2023-03-25  
9. 9, Sophia, Lee, sophia@email.com, 01555555555, USA, 2023-04-01  
10. 10, Daniel, Martinez, daniel@email.com, NULL, Spain, 2023-04-10  

---

### COURSES DATA (8 records)

**Columns:** `course_id`, `course_title`, `category`, `price`, `instructor`, `published_year`

1. 1, Complete SQL Bootcamp, Database, 49.99, John Carter, 2021  
2. 2, Advanced JavaScript, Programming, 59.99, Sarah Miller, 2020  
3. 3, Python for Data Science, Data Science, 69.99, David Kim, 2022  
4. 4, Web Development with React, Programming, 54.99, Emily Stone, 2021  
5. 5, Machine Learning Basics, AI, 79.99, Andrew Ng, 2019  
6. 6, Cloud Computing Fundamentals, Cloud, 64.99, James Allen, 2020  
7. 7, UI/UX Design Essentials, Design, 39.99, Laura Scott, 2022  
8. 8, DevOps for Beginners, DevOps, 74.99, Michael Brown, 2023  

---

### ENROLLMENTS DATA (15 records)

**Columns:** `enrollment_id`, `student_id`, `course_id`, `enrollment_date`, `progress_percentage`, `paid_amount`

1. 1, 1, 1, 2023-05-01, 80, 49.99  
2. 2, 2, 2, 2023-05-03, NULL, 59.99  
3. 3, 3, 3, 2023-05-05, 60, 69.99  
4. 4, 4, 1, 2023-05-07, 100, 49.99  
5. 5, 5, 4, 2023-05-10, 40, 54.99  
6. 6, 6, 5, 2023-05-12, NULL, 79.99  
7. 7, 7, 2, 2023-06-01, 90, 59.99  
8. 8, 8, 6, 2023-06-02, 30, 64.99  
9. 9, 9, 3, 2023-06-03, 70, 69.99  
10. 10, 10, 7, 2023-06-04, NULL, 39.99  
11. 11, 1, 8, 2023-06-05, 20, 74.99  
12. 12, 2, 1, 2023-06-06, 50, 49.99  
13. 13, 3, 6, 2023-06-07, NULL, 64.99  
14. 14, 4, 4, 2023-06-08, 85, 54.99  
15. 15, 5, 5, 2023-06-09, 60, 79.99  

---

## PRACTICE QUESTIONS

1. Display all students and their phone numbers.  
   If the phone number is `NULL`, show `'Not Provided'` using `COALESCE`.

2. Show all courses ordered by price (highest to lowest) and limit the result to **5 courses**.

3. Display courses for **page 2**, assuming **3 courses per page**, using `LIMIT` and `OFFSET`.

4. Update the price of all courses in the `Programming` category by increasing it **10%**.

5. Delete all enrollment records where `progress_percentage` is `NULL`.

6. Find the **total paid amount per course category** using `GROUP BY`.

7. Show course categories where the **average course price is greater than 60** using `HAVING`.

8. Count how many students are enrolled in each course.

9. Explain what happens if you try to insert an enrollment with a `student_id` that does not exist in the `students` table.

10. Display student full name, course title, and paid amount using an **INNER JOIN**.

11. Display all students and their enrolled courses.  
    Include students who have **not enrolled in any course** using a **LEFT JOIN**.

12. Display all courses and their enrolled students.  
    Include courses that **have no enrollments** using a **RIGHT JOIN**.

13. Display all students and all courses, even if there is **no matching enrollment**, using a **FULL JOIN**.

14. Show the **number of enrollments per year** based on `enrollment_date`.

15. Find the **average progress percentage per course**, ignoring `NULL` values.

---
