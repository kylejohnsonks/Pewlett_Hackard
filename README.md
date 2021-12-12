# Pewlett_Hackard Overview

The purpose of this analsys is to determine the scope of Pewlett Hackard's exposure to future retirements in it's extensive workforce.  PH has six data files with information regarding current employees, departments, managers, salaries and titles.  We used PostgresSQL and pgAdmin to create tables for each data file and link them with primary and foreign keys where appropriate.  From this base we created lists of current employees, 
 
# Results

*There is a bulleted list with four major points from the two analysis deliverables. (6 pt)*
- Employees who have held 
![Retirement titles](/Resources/retirement_titles.png)<br>


![Unique titles](/Resources/unique_titles.png)<br>


![Retiring titles](/Resources/retiring_titles.png)<br>


![Mentorship](/Resources/mentorship_eligibility.png)<br>

# Summary

*Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."*

*How many roles will need to be filled as the "silver tsunami" begins to make an impact?*
While the unique titles table would suggest 90,398 employees will be retiring soon, the actual number is 72,458 when restricted to employees currently employed.  
![Active Silvers](/Resources/employed_and_retiring.png)<br>
*Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?*
