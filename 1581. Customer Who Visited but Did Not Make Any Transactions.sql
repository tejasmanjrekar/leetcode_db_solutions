SELECT Sub.customer_id,
  COUNT(*) AS count_no_trans 
  FROM ( 
SELECT 
    V.visit_id,
    T.transaction_id,
    V.customer_id
  FROM Visits AS V
  LEFT JOIN Transactions AS T
  ON T.visit_id = V.visit_id
  WHERE T.visit_id IS NULL 

  ) AS Sub
  GROUP BY Sub.customer_id; 