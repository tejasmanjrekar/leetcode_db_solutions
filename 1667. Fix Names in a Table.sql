select user_id, CONCAT(UPPER(LEFT(name,1)),LCASE(SUBSTRING(name,2))) as name
from Users
order by user_id;