CREATE TABLE clients (
  client_id INT PRIMARY KEY,
  name VARCHAR(100),
  birthdate DATE,
  risk_profile VARCHAR(20)
);

CREATE TABLE products (
  product_id SERIAL PRIMARY KEY,
  product_type VARCHAR(20),
  product_name VARCHAR(100)
);

CREATE TABLE holdings (
  holding_id INT PRIMARY KEY,
  client_id INT,
  product_id INT,
  quantity INT,
  price DECIMAL(10,2),
  purchase_date DATE,
  FOREIGN KEY (client_id) REFERENCES clients(client_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);