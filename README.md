# HR_Attrition

**Data understanding **

Age – The employee’s age.

Attrition – Whether the employee has left the company (Yes) or is still employed (No).

BusinessTravel – Frequency of travel for business purposes (e.g., Travel_Rarely, Travel_Frequently).

Department – The department where the employee works (e.g., Sales, Research & Development).

DistanceFromHome – The distance (in miles/km) between the employee’s home and workplace.

Education – Employee’s education level (1 = Below College, 2 = College, 3 = Bachelor’s, 4 = Master’s, 5 = Doctorate).

EducationField – Field of study (e.g., Life Sciences, Medical, Other).

JobRole – Employee’s specific job role (e.g., Sales Executive, Research Scientist).

DailyRate – The employee’s daily salary.

HourlyRate – The employee’s hourly salary.

MonthlyIncome – The employee’s monthly salary.

MonthlyRate – The employee’s monthly pay rate.

StockOptionLevel – The level of stock options granted to the employee (0 = No stock options, 1-3 = Increasing levels of stock benefits).

PercentSalaryHike – Percentage increase in salary during the last performance appraisal.

EmployeeCount – The total number of employees (constant at 1 for each row, likely not useful).

EmployeeNumber – Unique identifier for each employee.

TotalWorkingYears – Total years of professional experience.

YearsAtCompany – Number of years the employee has been with the company.

YearsInCurrentRole – Years the employee has been in their current job role.

YearsSinceLastPromotion – Number of years since the employee’s last promotion.

YearsWithCurrManager – Number of years the employee has worked under their current manager.

NumCompaniesWorked – Total number of companies the employee has worked for before joining the current company.

JobInvolvement – How involved an employee is in their work (1 = Low, 4 = High).

JobLevel – Seniority level of the employee’s role (1 = Entry-level, 5 = Senior-level).

JobSatisfaction – Employee’s satisfaction with their job (1 = Low, 4 = High).

PerformanceRating – Employee’s latest performance rating (1 = Poor, 4 = Excellent).

TrainingTimesLastYear – Number of training programs attended in the last year.

WorkLifeBalance – Employee’s perception of their work-life balance (1 = Poor, 4 = Excellent).

EnvironmentSatisfaction – Employee’s satisfaction with workplace environment (1 = Low, 4 = High).

RelationshipSatisfaction – Employee’s satisfaction with workplace relationships (1 = Low, 4 = High).

OverTime – Whether the employee works overtime (Yes or No).

MaritalStatus – Marital status of the employee (Single, Married, Divorced).

Gender – Employee’s gender (Male, Female).

Over18 – Whether the employee is above 18 (Always "Y", so it’s not useful for analysis).

StandardHours – The standard working hours (likely 80 for all employees, so not useful).

🚫 Irrelevant Columns

1️⃣ Redundant or Constant Values

EmployeeCount – Always "1" for every employee, so it's not useful.
Over18 – Always "Y," so it has no variation.
StandardHours – Always "80," meaning it's not useful for analysis.

2️⃣ Less Impactful Columns

DailyRate – Since we already have MonthlyIncome, this is less useful.
MonthlyRate – Not clearly defined in terms of compensation impact.
NumCompaniesWorked – Could be useful in some cases but not directly linked to attrition in this dataset.

Data Preprocessing:
Before working with SQL, unnecessary columns were removed in Excel to streamline the dataset. The columns retained for analysis were:

Age, Attrition, BusinessTravel, Department, DistanceFromHome, EducationField, EmployeeNumber, EnvironmentSatisfaction, Gender, JobInvolvement, JobLevel, JobRole, JobSatisfaction, MaritalStatus, MonthlyIncome, OverTime, PercentSalaryHike, PerformanceRating, RelationshipSatisfaction, StockOptionLevel, TotalWorkingYears, TrainingTimesLastYear, WorkLifeBalance, YearsAtCompany, YearsInCurrentRole, YearsSinceLastPromotion, and YearsWithCurrManager.

_**Detailed Employee Attrition and Retention Analysis**_

_This comprehensive analysis leverages HR data to identify the primary factors influencing employee attrition across departments, job roles, and demographics. The following key findings provide statistical evidence to guide retention strategies:_

_1. Attrition by Department_

Department-wise breakdown reveals which departments experience higher attrition, identifying areas for managerial focus and retention efforts. For instance, departments with high turnover should invest in department-specific engagement strategies.

_2. Job Satisfaction in R&D_

A detailed analysis of the Research & Development department’s job satisfaction shows a strong correlation between lower job satisfaction and higher attrition, which suggests that job satisfaction initiatives could be key in reducing turnover.

_3. Overtime and Salary Hike_

The analysis found that employees who worked overtime had similar salary hikes as those who did not, leading to the conclusion that overtime may not be a significant factor in preventing attrition, and additional incentives or recognition might be more effective.

_4. Marital Status and Work-Life Balance_

A higher proportion of female employees who left the organization were single or married, with a notably higher work-life balance score. This indicates that improving work-life balance programs could significantly impact attrition rates, especially among women.

_5. Training and Attrition_

Training data revealed that 237 employees left the organization after receiving training, challenging the assumption that training directly improves retention. The conclusion is that training programs may need to be more targeted and aligned with employee needs.

_6. Years Since Last Promotion_

The analysis of promotion history suggests that employees who were promoted long ago, or very recently, had higher attrition rates. More frequent promotions or 
clearer career paths could help retain employees.

_7. Age and Marital Status of Female Employees Who Left_

A deeper dive into female employee attrition by age and marital status reveals that single women aged 20-33 are more likely to leave. This indicates that younger female employees may need more targeted mentorship and career development programs.

_8. Total Working Years and Attrition with Current Manager_

Employees who had been in the same role with the same manager for over a year showed a higher likelihood of attrition. This highlights the need for managerial training and job rotation to keep employees engaged and motivated.

_9. Gender-Specific Relationship Satisfaction and Work-Life Balance_

The gender-based analysis shows that single female employees tend to have a higher work-life balance compared to married women, while male employees report strong work-life balance across all relationship satisfaction levels. Understanding these nuances can help create gender-specific policies that improve retention for both genders.
________________________

****Conclusion:****
This detailed analysis provides a clear picture of how work-life balance, job satisfaction, promotions, training, and overtime all influence employee attrition. The data supports the implementation of targeted retention strategies, especially focusing on improving work-life balance, offering career development opportunities, and customizing training programs to reduce turnover.

_____________________________________________

**RESOURCES:**
Data set: https://www.kaggle.com/datasets/patelprashant/employee-attrition
