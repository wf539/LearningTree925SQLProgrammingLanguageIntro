ALTER TABLE Products
ADD CONSTRAINT FK_Product_Category
FOREIGN KEY (CategoryID)
REFERENCES Categories;

