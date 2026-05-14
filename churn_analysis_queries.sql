select* from customer_churn; 
select count(*) as total_customers from customer_churn;
select count(*) as churned_customers from customer_churn where Exited = 1;
select round(sum(Exited)*100.0/count(*),2) as churn_rate from customer_churn;
select Gender,count(*) as total_customers,sum(Exited) as churned_customers,round(sum(Exited)*100.0/count(*),2) as churn_rate from customer_churn group by Gender;
select Geography,count(*) as total_customers,sum(Exited) as churned_customers,round(sum(Exited)*100.0/count(*),2) as churn_rate from customer_churn group by Geography order by churn_rate desc;
select case when Age<30 then'under 30' when Age between 30 and 50 then '30-50' else '50+' end as age_group, count(*) as total_customers,sum(Exited) as churned_customers,round(sum(Exited)*100.0/count(*), 2)as churn_rate from customer_churn group by age_group order by churn_rate desc;
select IsActiveMember,count(*)as total_customers,sum(Exited) as churned_customers,round(sum(Exited)*100.0/count(*),2) as churn_rate from customer_churn group by IsActiveMember;
select NumOfProducts,count(*) as total_customers,sum(Exited) as churned_customers,round(sum(Exited)*100.0/count(*),2) as churn_rate from customer_churn group by NumOfProducts order by churn_rate desc;
select case when CreditScore<500 then 'low' when CreditScore between 500 and 700 then 'medium' else 'high' end as credit_category, count(*) as total_customers,sum(Exited) as churned_customers,round(sum(Exited)*100.0/count(*),2) as churn_rate from customer_churn group by credit_category;
select round(avg(Balance),2) as avg_balance_churned from customer_churn where Exited = 1;

