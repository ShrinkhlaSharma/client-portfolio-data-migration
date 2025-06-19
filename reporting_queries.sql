SELECT c.name, SUM(h.quantity * h.price) AS portfolio_value
FROM clients c
JOIN holdings h ON c.client_id = h.client_id
GROUP BY c.name;

SELECT p.product_type, SUM(h.quantity * h.price) AS total_value
FROM holdings h
JOIN products p ON h.product_id = p.product_id
GROUP BY p.product_type;

SELECT c.name, SUM(h.quantity * h.price) AS total_value
FROM clients c
JOIN holdings h ON c.client_id = h.client_id
GROUP BY c.name
ORDER BY total_value DESC
LIMIT 1;