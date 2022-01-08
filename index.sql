CREATE TABLE Customer (
	customerID VARCHAR(20) PRIMARY KEY,
	customer_name VARCHAR(20) NOT NULL,
	customer_tel NUMBER 

);

CREATE TABLE Product (
	ProductrID NUMBER CHECK (customerID > 0) PRIMARY KEY,
	Product_name VARCHAR(20) NOT NULL,
    price NUMBER,
    CHECK (price > 0)
);

CREATE TABLE Orders (
	quantity NUMBER,
    total_amount NUMBER,
    FOREIGN KEY (customerID) REFERENCES Customer(customerID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

ALTER TABLE Product
ADD Category (VARCHAR2(20));

ALTER TABLE Orders
ADD OrderDate (DATE) SET DEFAULT CURRENT_TIMESTAMP;
