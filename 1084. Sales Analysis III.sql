select product.product_id,product.product_name 
from product ,sales  
where product.product_id=sales.product_id 
group by product_id having min(sales.sale_date) >= '2019-01-01' and max(sales.sale_date) <= '2019-03-31 ';