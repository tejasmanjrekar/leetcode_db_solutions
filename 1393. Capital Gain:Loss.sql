with cte as (
select stock_name, operation, case when operation ='Buy' then -1*sum(price) 
when operation ='Sell' then sum(price) End as total_price
from Stocks 
group by stock_name, operation)
select stock_name, sum(total_price) as capital_gain_loss
from cte
group by stock_name;