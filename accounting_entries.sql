CREATE TABLE journal_entries (
  entry_id SERIAL PRIMARY KEY,
  holding_id INT,
  transaction_type VARCHAR(20),
  amount DECIMAL(12,2),
  entry_date DATE,
  FOREIGN KEY (holding_id) REFERENCES holdings(holding_id)
);

INSERT INTO journal_entries (holding_id, transaction_type, amount, entry_date)
SELECT holding_id, 'Buy', quantity * price, purchase_date FROM holdings;