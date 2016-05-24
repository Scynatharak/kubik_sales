CREATE TABLE customer (  
  customer_id INTEGER       PRIMARY KEY,
  first_name  VARCHAR2(20),
  credit      DECIMAL( 10, 2 )
);

CREATE TABLE product (
  product_id    INTEGER PRIMARY KEY,
  product_name  VARCHAR(20),
  product_price DECIMAL(6,2)
);

CREATE TABLE sales (
  customer_id   INTEGER,
  product_id    INTEGER, 
  sales_date    DATE,
  pieces        INTEGER,
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (product_id) REFERENCES product(product_id),
  PRIMARY KEY (sales_date)
);

CREATE TABLE stock (
  product_id    INTEGER,
  shelf         CHAR(2),
  pieces        INTEGER,
  FOREIGN KEY (product_id) REFERENCES product(product_id),
  PRIMARY KEY (shelf)
);