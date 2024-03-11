WITH cte AS (
    SELECT 
        id, 
        student,
        LEAD(id) OVER (ORDER BY id) AS next_seat,
        LAG(id) OVER (ORDER BY id) AS prev_seat
    FROM 
        seat
)
SELECT 
    COALESCE(
        CASE 
            WHEN (id % 2 = 1 AND next_seat IS NOT NULL) THEN next_seat
            WHEN (id % 2 = 0) THEN prev_seat
            ELSE id 
        END,
        id
    ) AS id, 
    student
FROM 
    cte
ORDER BY 
    id;