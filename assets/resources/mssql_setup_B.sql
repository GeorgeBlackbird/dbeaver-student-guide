IF OBJECT_ID('items', 'U') IS NOT NULL DROP TABLE items;

CREATE TABLE items (
  id INT PRIMARY KEY IDENTITY(1,1),
  title NVARCHAR(100) NOT NULL,
  stock INT,
  cost DECIMAL(10, 2)
);

INSERT INTO items (title, stock, cost) VALUES (N'Системный блок', 30, 45000.00), (N'Мышь', 250, 1200.00);