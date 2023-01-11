# Pewlett-Hackard-Analysis
## Overview of the Analysis
The purpose of this analysis was to give Bobby's manager some more information to help prepare for the "silver tsunami" at Pewlett-Hackard. The first assignment was to determine the number of employees retiring per title.  The second assignment was to identify the employees retiring who were eligible to participate in the mentorship program.  In order to determine this information, I was to make 4 additional tables to add to the database, and export each table into a csv file.  

## Deliverable 1
### Retirement Titles Table
The first table named Retirement Titles, was to display the titles of the employees retiring.  This table displays the employee number (emp_no), first_name, last_name, title, date employee started at company (from_date), and to_date.  The emp_no, first_name, and last_name was retrieved from the employees table.  Title, from_date, and to_date were retrieved from the titles table.  I did a join on the primary key (emp_no) to add the tables into the new table (retirement titles) and filtered the information based on birth date which would give us the employees eligible for retirement. 

### Unique Titles Table
The second table is the Unique Titles table.  This table was created by selecting the employee number, first name, last name and title from the retirement titles table that I first created with a DISTINCT ON query.  This statement exluded employees who had already left the company by filtered on the to_date to only keep employees who were current.  I then sorted these employees by DESC order by last to_date.

### Retiring Titles Table
To create the third table, the Retiring Titles table, I used the Unique Titles table to get the count of each title.  I grouped the table by title and listed them in descending order by count.

## Deliverable 2
### Mentorship Table
For this table I did a DISTINCT ON query to create the new table Mentorship by selecting emp_no, first_name, last_name, and birth_date from the employees table.  I selected from_date, and to_date from the department_employees table, and title from the titles table.  I did a join for employees, dept_employees, and titles table by the primary key emp_no.  I sorted by employees birth_date who were of retiring age ('1965-01-01' AND '1965-12-31') and who were current employees with to_date ('9999-01-01').  Lastly, I ordered by emp_no.

## Results
* Retirement Titles Table
  The retirement_titles table was able to give us the employee number, first name, and last name of all employees filtered by birth date who were eligible for retiring, and what their titles were.  It also gave us their start date (from_date) at the company and end date (to_date) at the company.
  ![Screenshot_20230110_124435](https://user-images.githubusercontent.com/45715246/211624282-98b9bd5d-7ed3-4505-94b0-bd12847e04d6.png)

* Unique Titles Table
  The unique_titles table gives us the results of all employees and their titles who are still currently employed.  It also dropped all duplicate rows from the retirement_titles table by using a DISTINCT ON query.
  ![Screenshot_20230110_124835](https://user-images.githubusercontent.com/45715246/211625033-33471691-970b-44bf-bf71-ea527fbff729.png)

* Retiring Titles Table
  The retiring_titles table shows us the results for the count of each amount of employees retiring from each title.
  ![Screenshot_20230110_124933](https://user-images.githubusercontent.com/45715246/211625261-c0a26fa1-c8c2-4074-b67c-924f49a316c0.png)

* Mentorship Table
  The mentorship_table shows current employees who are eligible for retirement and eligible to join the mentorship program.  It displays their employee number, first name, last name, birth date, date hired, currently employed (to_date), and title.
  ![mentorship](https://user-images.githubusercontent.com/45715246/211626017-bd6df47c-3738-4bd6-b939-cff27dfd281e.png)

## Summary
After performing the first analysis of finding the number of retiring employees by title, Pewlett-Hackard is able to see how many employees from each title are going to retire.  When looking at the data you see 25,916 of those employees are Senior Engineers, and 24,926 are Senior Staff.  These are very large numbers.  Based on this information, we know that Pewlett-Hackard is going to have to do a large amount of hiring for Senior Engineers.  Overall, they will be losing 72,458 employees.  This number is extremely large, which is why they are referring this to a "silver tsunami".  Pewlett-Hackard will have to prepare for very large amount of hiring.  They can set up job fairs, and begin posting positions on all social platforms to prepare. 

There are only 1,549 employees eligible for the mentorship program so that's a rather small amount of employees compared to the number of employees retiring.  This means that Pewlett-Hackard should additionally think of hiring more trainers/mentors for the new employees they will be hiring to replace the retirees.  We could do an additional query to create a table that could show the amount of employees eligible for mentorship next year to see if there will be a larger amount who can assist in mentoring the new hires.  We could also create another query to find the amount of employees eligible for mentorship by title to see how the amount of employees in each title who will be mentoring compares to the amount of each retiring title.  We know they will need a lot of Senior Engineers so that would be helpful to have a lot of Senior Engineer mentors.
