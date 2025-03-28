-- Write a SQL query to display the first name using UPPER and last name using LOWER of all students in upper case.
select StudentID, UPPER(FirstName) as FirstName, LOWER(LastName) as LastName from students;

-- Write a SQL query to display the MIN and MAX value of semester 1 and semester 2 of all students.
SELECT MIN(Semester1) as Min1, MAX(Semester1) as Max1,MIN(Semester2) as Min2, MAX(Semester2) as Max2 FROM students;


-- Write a SQL query to determine the total price for each month is Achieved, Less Performed, or Follow Up based on the total price of all items in the sales_retail_2019 table.
SELECT MONTH(order_date) AS order_month, SUM(item_price) AS total_price, 
CASE  
    WHEN sum(item_price) >= 30000000000 THEN 'Target Achieved'
    WHEN sum(item_price) <= 25000000000 THEN 'Less Performed'
    ELSE 'Follow Up'
END as remark
FROM sales_retail_2019
GROUP BY month(order_date);