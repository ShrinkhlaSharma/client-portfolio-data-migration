INSERT INTO clients (client_id, name, birthdate, risk_profile)
SELECT client_id, client_name, dob, risk_profile FROM legacy_clients;

INSERT INTO products (product_type, product_name)
SELECT DISTINCT product_type, product_name FROM legacy_holdings;

INSERT INTO holdings (holding_id, client_id, product_id, quantity, price, purchase_date)
SELECT 
  l.holding_id,
  l.client_id,
  p.product_id,
  l.quantity,
  l.buy_price,
  l.buy_date
FROM legacy_holdings l
JOIN products p ON l.product_type = p.product_type AND l.product_name = p.product_name;