IF OBJECT_ID('products', 'U') IS NOT NULL DROP TABLE products;

CREATE TABLE products (
  id INT PRIMARY KEY IDENTITY(1,1),
  name NVARCHAR(100) NOT NULL,
  quantity INT,
  price DECIMAL(10, 2)
);

INSERT INTO products (name, quantity, price) VALUES ('Монитор', 50, 15000.00), ('Клавиатура', 120, 2500.00);