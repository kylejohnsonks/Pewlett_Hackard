# Pewlett_Hackard Overview

The purpose of this analsys is to determine the scope of Pewlett Hackard's exposure to future retirements in it's extensive workforce.  PH has six data files with information regarding current employees, departments, managers, salaries and titles.  We used PostgresSQL and pgAdmin to create tables for each data file and link them with primary and foreign keys where appropriate.  From this base we created lists of current employees along with their departments, titles, salaries and managers.  Using employee birth dates and department assignemnt information, we created lists of potential retirees and mentors.
 
# Results

- Employees who have held a total of 133,776 titles with PH are nearing retirement age.
- Restricing this to unique employees yeilds 90,398 unique employees who are nearing retirement age.
- A count by title reveals that PH will be losing many senior employees, with 'Senior Engineer' and 'Senior Staff' being the two most prevelant titles amonst near-term retirees.
- 1,549 current employees were born in 1965 and are potential mentorship candidates.

![Title Count](/Resources/retiring_titles.png)<br>
# Summary

### Count of retiring employees
While the unique titles table would suggest 90,398 employees will be retiring soon, the actual number is 72,458 when restricted to employees currently employed at PH.  However this is still a significant number.  
![Current Silvers](/Resources/Unique_and_current.png)<br>

### Count of Mentors
This analysis only searched for employees born in 1965, but clearly 1,549 employess will not be enough to mentor 72,458 open positions.  It will probably be necessary to expand the mentorship program beyond the year 1965.

### Future Analysis
A more thorough analysis of employee data should be conducted to find mentors.  First we should clearly specify what defines a potential mentor, perhaps "a current employee who has been in their present position for at least two years and has the word 'Senior' or 'Manager' in their title".  With a precice definition we could determine how many employees qualify and return:
     - Mentor count by age
     - Mentor count by department
     - Mentor vs Retiree counts by department
