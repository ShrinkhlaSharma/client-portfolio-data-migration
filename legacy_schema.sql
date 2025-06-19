CREATE TABLE legacy_clients (
  client_id INT PRIMARY KEY,
  client_name VARCHAR(100),
  dob DATE,
  risk_profile VARCHAR(20)
);

CREATE TABLE legacy_holdings (
  holding_id INT PRIMARY KEY,
  client_id INT,
  product_type VARCHAR(20),
  product_name VARCHAR(100),
  quantity INT,
  buy_price DECIMAL(10,2),
  buy_date DATE,
  FOREIGN KEY (client_id) REFERENCES legacy_clients(client_id)
);