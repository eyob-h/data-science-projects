--Books table
CREATE TABLE BOOKS 
(
Book_ID INT PRIMARY KEY ,
Title VARCHAR(100),
ISBN VARCHAR(100),
Genre VARCHAR(100),
Publisher VARCHAR(100),
Publication_date VARCHAR(100)
)

--Branch table
CREATE TABLE BRANCHES
(
Branch_ID INT PRIMARY KEY,
Branch_Name VARCHAR(100),
Address VARCHAR(100),
Phone_Number VARCHAR(100),
Email VARCHAR(100),
)

--Book copies table
CREATE TABLE BOOK_COPIES
(
copy_ID INT PRIMARY KEY,
Book_ID INT ,
Branch_ID INT,
Due_date DATE,
Status VARCHAR(100),
FOREIGN KEY (Book_ID) REFERENCES BOOKS(Book_ID),
FOREIGN KEY (Branch_ID) REFERENCES BRANCHES(Branch_ID)
)

--Members table
CREATE TABLE MEMBERS
(
Member_ID INT PRIMARY KEY,
First_Name VARCHAR(100),
Last_Name VARCHAR(100),
Phone_Number VARCHAR(100),
Membership_exp_date DATE
)
--Checkout table
CREATE TABLE Checkout (
  checkout_ID INT PRIMARY KEY,
  copy_ID INT,
  Member_ID INT,
  checkout_Date DATE,
  due_Date DATE,
  return_Date DATE,
  FOREIGN KEY (Member_ID) REFERENCES MEMBERS(Member_ID),
  FOREIGN KEY (copy_ID) REFERENCES Book_Copies(copy_ID)
);
--Fine table
CREATE TABLE FINE (
  fine_ID INT PRIMARY KEY,
  copy_ID INT,
  Member_ID INT,
  fine_Amount INT,
  fine_Date DATE,
  status VARCHAR(20),
  FOREIGN KEY (Member_ID) REFERENCES MEMBERS(Member_ID),
  FOREIGN KEY (copy_ID) REFERENCES BOOK_COPIES(copy_ID)
);

--Staff roles table

CREATE TABLE STAFF_ROLE(
role_ID INT PRIMARY KEY,
Role_name VARCHAR(100),
SALARY INT
)
--Staff table
CREATE TABLE STAFF (
 
Staff_ID INT PRIMARY KEY,
role_ID INT,
Branch_ID INT,
First_Name VARCHAR(100),
Last_Name VARCHAR(100),
Phone_Number VARCHAR(100),
Date_of_hire DATE
FOREIGN KEY (role_ID) REFERENCES STAFF_ROLE(role_ID),
FOREIGN KEY (Branch_ID) REFERENCES BRANCHES(Branch_ID),

)
--Inventory table
CREATE TABLE Inventory (
  Inventory_ID INT PRIMARY KEY,
  Book_ID INT,
  Branch_ID INT,
  Quantity INT,
  Date_Added DATE,
  Date_Modified DATE,
  FOREIGN KEY (Branch_ID) REFERENCES BRANCHES(Branch_ID),
  FOREIGN KEY (Book_ID) REFERENCES BOOKS(Book_ID)
);