SELECT 
    ua.id AS user_id,
    ua.first_name,
    ua.last_name,
    cu.id AS customer_id, 
    cu.customer_name, 
    COUNT(c.id) AS contact_count 
FROM 
    contact c 
INNER JOIN 
    user_account ua ON c.user_account_id = ua.id 
INNER JOIN 
    customer cu ON c.customer_id = cu.id 
GROUP BY 
    ua.id, ua.first_name, ua.last_name, cu.id, cu.customer_name 
HAVING 
    COUNT(c.id) > 1
ORDER BY 
    ua.id;