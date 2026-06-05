ALTER TABLE orders ADD PRIMARY KEY (order_id); 
ALTER TABLE customers ADD PRIMARY KEY (customer_id);
ALTER TABLE products ADD PRIMARY KEY (product_id);

ALTER TABLE orders
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
ADD FOREIGN KEY (product_id) REFERENCES products(product_id); 