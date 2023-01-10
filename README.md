# Pewlett-Hackard-Analysis
## Overview of the Analysis
The purpose of this analysis was to give Bobby's manager some more information to help prepare for the "silver tsunami" at Pewlett-Hackard. The first assignment was to determine the number of employees retiring per title.  The second assignment was to identify the employees retiring who were eligible to participate in the mentorship program.  In order to determine this information, I was to make 4 additional tables to add to the database, and export each table into a csv file.  

### Retirement Titles Table
The first table named Retirement Titles, was to display the titles of the employees retiring.  This table displays the employee number (emp_no), first_name, last_name, title, date employee started at company (from_date), and to_date.  The emp_no, first_name, and last_name was retrieved from the employees table.  Title, from_date, and to_date were retrieved from the titles table.  I did a join on the primary key (emp_no) to add the tables into the new table (retirement titles) and filtered the information based on birth date which would give us the employees eligible for retirement. 

### Unique Titles Table
The second table is the Unique Titles table.  This table was created by selecting the employee number, first name, last name and title from the retirement titles table that I first created with a Distinct ON statement.  This statement exluded employees who had already left the company by filtered on the to_date to only keep employees who were current.  I then sorted these employees by DESC order by last to_date.

### Retiring Titles Table
The third table


