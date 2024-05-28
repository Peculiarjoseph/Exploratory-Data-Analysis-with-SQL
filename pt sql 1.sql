create database loans;
use loans;

-- 1 Retrieve the columns for applicants with a graduate certifcation
select * from loan_ability
where education ='graduate';

-- 2 count the number of applicants in each area
select area, count(*) 
as count_applicants
from loan_ability
group by area; 

-- 3 calculate the average loan for male applicants
select gender, avg(loan_amount) 
from loan_ability
where gender = 'male';

-- 4 find the total income for male applcants with a credit hstory of 1
select gender, credit_history, sum(applicant_income) 
from loan_ability
where gender = 'male' and credit_history = 1
group by gender;

-- 5 list the unique values in the dependent column
select distinct dependents from loan_ability;

-- 6 retrieve applicants with a loan term of 360 months and a status of 'Y'
select * from loan_ability 
where term = 360 and status = 'y';

-- 7 find the minimum coapplicant income for female applicants
select gender, min(coapplicant_income) 
from loan_ability
where gender = 'female'
group by gender;

-- 8 Count the number of applicants with no self employment status
select count(*) as self_employment_status 
from loan_ability
where self_employed = 'no';

-- 9 retrieve the applicants with a credit history of 0 and 'N' status
select * from loan_ability 
where credit_history = 0 and status = 'N'; 

-- 10 calculate the average loan amount for married applicants with a term of 360 months
select married, avg(loan_amount)  from loan_ability 
where married = 'yes' and Term = '360';

-- 11 find the top 5 highest applcant income values
select applicant_income from loan_ability 
order by applicant_income 
desc limit 5;

-- 12 retrieve applicants with a coapplicant income greater than 200,000
select * from loan_ability 
where coapplicant_income > 200000; 

-- 13 count the number of applicants in each credit history category 0 or 1
select credit_history, count(*) as number_of_applicants 
from loan_ability 
where credit_history = 0 or 1
group by credit_history;

-- 14 find the minimum loan amount for applicants in rural areas
select area, min(loan_amount)  
from loan_ability where area = 'rural'
group by area;

-- 15 retrieve applicants with missing or null values in the self employed column 
Select * from loan_ability where self_employed = 'null'