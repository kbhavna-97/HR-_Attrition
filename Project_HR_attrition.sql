select * from hr;

alter table hr
rename column ï»¿Age to Age;

## data exploration 

select department, count(*) from hr
group by Department;

select JobRole, count(*) from hr
group by JobRole;

select MaritalStatus, count(*) from hr
group by MaritalStatus;

## write a query to find which department has the highest attrition 

select department, count(*)
from hr
where Attrition = "yes"
group by Department;

select JobSatisfaction, count(*) as job_rating
from hr 
where department = 'Research & Development'
group by JobSatisfaction 
order by job_rating desc;

##write a query to find the relation between overtime and salary hike

select OverTime , avg(PercentSalaryHike)
from hr 
where attrition = "yes"
group by OverTime;

select OverTime , avg(PercentSalaryHike)
from hr 
where attrition = "no"
group by OverTime;

-- people who worked overtime had left the organisation with an average slary hike of 15% 
-- people who satyed and have or not done any time has also received the same level of salary hike

## write a query to find a marital status and work life balance in regardsto employees who have left 

select MaritalStatus, Gender, avg(WorkLifeBalance) as work_life_balace
from hr 
where Attrition = "yes"
group by MaritalStatus, Gender
order by work_life_balace desc;

-- outcome attrition is more in Female's who are single and married 

## write a query to find the delationship between the people who have stayed and training provided

select Attrition, count(TrainingTimesLastYear) as training_provided
from hr
group by Attrition;

-- out come 237 poeple left th eorganisation after training being provided

## write a query to find the relation between last promoted an attrition

select YearsSinceLastPromotion, count(*) as employees
from hr 
where Attrition = "yes"
group by YearsSinceLastPromotion
order by YearsSinceLastPromotion desc, employees asc;

-- outcome 3 employees left th eorganisation where promoted 15 years ago 
-- outcome 49 employees left the organisation after 1 year of promotion 

## what is the relation between age , marital status and female employees who have left the organization 

select Age, MaritalStatus, count(Attrition) as female_employee_age
from hr 
where Gender = 'Female' and Attrition = 'yes'
group by Age, MaritalStatus
order by female_employee_age desc;

-- outcome more single women aged 20,33,21 and 31 have left the organisation when compared to married and divorced and married women 

## write a query to find a relation between total working years of emplyees with current managers

select TotalWorkingYears, count(YearsWithCurrManager) as curr_manager
from hr 
where Attrition = "yes" 
group by TotalWorkingYears
order by TotalWorkingYears asc, curr_manager desc;

-- outcome more than 50 employees have left organisation after 1 year in the same position under the same manager  

## write a query to find the co-relation bewtween relationship satisation , marital status and work life balance with respect to each gender

select MaritalStatus, RelationshipSatisfaction, count(EmployeeNumber) as num_of_emp, avg(WorkLifeBalance) as relation_work_life_balance
from hr 
where Attrition = 'yes' and Gender = "Female"
group by MaritalStatus, RelationshipSatisfaction
order by RelationshipSatisfaction asc, relation_work_life_balance asc;

-- Outcome Single female employees tend to have a higher work-life balance, especially in Relationship Satisfaction 3 and 2.
-- Married female employees show a high work-life balance in Relationship Satisfaction 2 (3.3333) but are more moderate in other categories.

 
select MaritalStatus, RelationshipSatisfaction, count(EmployeeNumber) as num_of_emp, avg(WorkLifeBalance) as relation_work_life_balance
from hr 
where Attrition = 'yes' and Gender = "Male"
group by MaritalStatus, RelationshipSatisfaction
order by RelationshipSatisfaction asc, relation_work_life_balance asc;

-- outcome Single male employees generally have a higher work-life balance across all relationship satisfaction levels, particularly at Relationship Satisfaction 1 with a high average of 3.00.