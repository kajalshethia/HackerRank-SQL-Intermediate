SELECT 
    city.city_name,
    product.product_name,
    ROUND(SUM(invoice_item.line_total_price), 2) AS total_spent
FROM 
    invoice_item
INNER JOIN 
    invoice ON invoice_item.invoice_id = invoice.id
INNER JOIN 
    customer ON invoice.customer_id = customer.id
INNER JOIN 
    city ON customer.city_id = city.id
INNER JOIN 
    product ON invoice_item.product_id = product.id
GROUP BY 
    city.city_name, product.product_name
ORDER BY 
    total_spent DESC, 
    city.city_name,  
    product.product_name;