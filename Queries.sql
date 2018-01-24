CREATE TABLE Product(
	Product_ID VARCHAR(10) NOT NULL,
	Unit VARCHAR(10),
	Discription VARCHAR(200),
	ADD CONSTRAINT pk_product PRIMARY KEY(Product_ID) ON UPDATE CASCADE
);

CREATE TABLE Product_Category (
  Category_ID VARCHAR(10),
  Name VARCHAR(20),
  Description VARCHAR(200),
  ADD CONSTRAINT pk_catagory PRIMARY KEY(Category_ID)
);

CREATE TABLE Price (
  Product_ID VARCHAR(10) NOT NULL,
  Measure INTEGER,
  Cost_Price DECIMAL,
  Sell_Price DECIMAL,
  ADD CONSTRAINT pk_price PRIMARY KEY (Product_ID,Measure),
	ADD CONSTRAINT fk_productID FOREIGN KEY(Product_ID) REFERENCES Product(Product_ID)
	
);

CREATE TABLE Interested_Customer_Type (
  Type VARCHAR(20),
  Description VARCHAR(200),
  Customer_typeID VARCHAR(10) NOT NULL,
  ADD CONSTRAINT pk_Interested_Customer_Type PRIMARY KEY (Customer_typeID)
);

CREATE TABLE isCatagoryOf (
  Product_ID VARCHAR(10) NOT NULL,
  Category_ID VARCHAR(10),
	ADD CONSTRAINT pk_isCategorryOf PRIMARY KEY (Product_ID,Category_ID),
	ADD CONSTRAINT fk_productID FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID),
	ADD CONSTRAINT fk_categoryID FOREIGN KEY (Category_ID) REFERENCES Product_Category(Category_ID)
);


