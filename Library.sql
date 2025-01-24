-- create database 'Library'  
create database Library;
use Library;
-- create table "Book_Management" 
create table Book_Management(
ID varchar(20) primary key,
Book_Title varchar(20),
Category varchar(20),
Rental_Price int,
Availability_Status varchar(20),
Author varchar(30),
Publisher varchar(20)
);
-- create table  "Customer_Management"
create table Customer_Management(
Customer_ID int primary key,
Customer_Name varchar(50),
Address varchar(100),
Reg_Date date
);
-- create table "Employee" 
create table Employee(
Employee_ID int primary key,
Employee_Name varchar(100),
Position varchar(100),
Salaries int,
Branch_assignment varchar (100)
);
-- create table "Issue_Return_Status" 
create table Issue_Return_Status(
Issue_ID varchar(100) primary key,
Issued_Cus varchar(100),
Issued_Bookname varchar(100),
Issue_Date date,
Return_ID varchar(100) ,
Return_Cus varchar(100),
Return_Book_Name varchar(100),
Return_Date date
);
-- create table "Branch" 
create table Branch(
Branch_no varchar(100) primary key,
Manager_ID varchar(100),
Branch_Address varchar(100),
Contanct_no varchar(100)
);
desc branch;
-- alter table  " Book_Management"
alter table Book_Management modify Rental_Price decimal;
alter table Book_Management modify Publisher varchar(100);
alter table Book_Management modify ID varchar(50);
alter table Book_Management modify Book_Title varchar(100);
-- insert values into table "Book_Management" 
insert into Book_Management values
('978-0-553-29698-2', 'The Catcher in the Rye', 'Classic', 7.00, 'yes', 'J.D. Salinger', 'Little, Brown and Company'),
('978-0-330-25864-8', 'Animal Farm', 'Classic', 5.50, 'yes', 'George Orwell', 'Penguin Books'),
('978-0-14-118776-1', 'One Hundred Years of Solitude', 'Literary Fiction', 6.50, 'yes', 'Gabriel Garcia Marquez', 'Penguin Books'),
('978-0-525-47535-5', 'The Great Gatsby', 'Classic', 8.00, 'yes', 'F. Scott Fitzgerald', 'Scribner'),
('978-0-141-44171-6', 'Jane Eyre', 'Classic', 4.00, 'yes', 'Charlotte Bronte', 'Penguin Classics'),
('978-0-307-37840-1', 'The Alchemist', 'Fiction', 2.50, 'yes', 'Paulo Coelho', 'HarperOne'),
('978-0-679-76489-8', "Harry Potter and the Sorcerer's Stone", 'Fantasy', 7.00, 'yes', 'J.K. Rowling', 'Scholastic'),
('978-0-7432-4722-4', 'The Da Vinci Code', 'Mystery', 8.00, 'yes', 'Dan Brown', 'Doubleday'),
('978-0-09-957807-9', 'A Game of Thrones', 'Fantasy', 7.50, 'yes', 'George R.R. Martin', 'Bantam'),
('978-0-393-05081-8', "A People's History of the United States", 'History', 9.00, 'yes', 'Howard Zinn', 'Harper Perennial'),
('978-0-19-280551-1', 'The Guns of August', 'History', 7.00, 'yes', 'Barbara W. Tuchman', 'Oxford University Press'),
('978-0-307-58837-1', 'Sapiens: A Brief History of Humankind', 'History', 8.00, 'yes', 'Yuval Noah Harari', 'Harper Perennial'),
('978-0-375-41398-8', 'The Diary of a Young Girl', 'History', 6.50, 'yes', 'Anne Frank', 'Bantam'),
('978-0-14-044930-3', 'The Histories', 'History', 5.50, 'yes', 'Herodotus', 'Penguin Classics'),
('978-0-393-91257-8', 'Guns, Germs, and Steel: The Fates of Human Societies', 'History', 7.00, 'yes', 'Jared Diamond', 'W. W. Norton & Company'),
('978-0-7432-7357-1', '1491: New Revelations of the Americas Before Columbus', 'History', 6.50, 'yes', 'Charles C. Mann', 'Vintage Books');
select * from Book_Management;
rename Book_Management to Books;
-- raname table "Book_Management" to "Books"
RENAME TABLE  Book_Management TO  Books ;
select * from  Books;
-- insert values into table "Customer_Management" 
insert into Customer_Management values
('C101', 'Alice Johnson', '123 Main St', '2021-05-15'),
('C102', 'Bob Smith', '456 Elm St', '2021-06-20'),
('C103', 'Carol Davis', '789 Oak St', '2021-07-10'),
('C104', 'Dave Wilson', '567 Pine St', '2021-08-05'),
('C105', 'Eve Brown', '890 Maple St', '2021-09-25'),
('C106', 'Frank Thomas', '234 Cedar St', '2021-10-15'),
('C107', 'Grace Taylor', '345 Walnut St', '2021-11-20'),
('C108', 'Henry Anderson', '456 Birch St', '2021-12-10'),
('C109', 'Ivy Martinez', '567 Oak St', '2022-01-05'),
('C110', 'Jack Wilson', '678 Pine St', '2022-02-25');
select * from Customer_Management;
-- alter table "Customer_Management" 
alter table Customer_Management modify Customer_ID varchar(50);
alter table Employee modify  Employee_ID varchar(20);
-- insert values into table  "Employee"
insert into Employee values
('E101', 'John Doe', 'Manager', 60000.00,'B011'),
('E102', 'Jane Smith', 'Clerk', 45000.00,'B012'),
('E103', 'Mike Johnson', 'Librarian', 55000.00,'B022'),
('E104', 'Emily Davis', 'Assistant', 40000.00,'B003'),
('E105', 'Sarah Brown', 'Assistant', 42000.00,'B001'),
('E106', 'Michelle Ramirez', 'Assistant', 43000.00,'B030'),
('E107', 'Michael Thompson', 'Manager', 62000.00,'B012'),
('E108', 'Jessica Taylor', 'Clerk', 46000.00,'B015'),
('E109', 'Daniel Anderson', 'Librarian', 57000.00,'B018'),
('E110', 'Laura Martinez', 'Assistant', 41000.00,'B008'),
('E111', 'Christopher Lee', 'Manager', 65000.00,'B070');
SELECT * FROM Employee;
DESC Employee;
-- alter table"Issue_Return_Status" 
alter table Issue_Return_Status 
drop column Return_ID,Return_Cus;
desc Issue_Return_Status ;
alter table Issue_Return_Status 
drop column Return_ID;
alter table Issue_Return_Status 
drop column Return_Cus;
alter table Issue_Return_Status  
drop column Return_Book_Name;
alter table Issue_Return_Status  
drop column Return_Date;
desc Issue_Return_Status ;
-- ranaming table "Issue_Return_Status" to "Issue_Status"
rename table Issue_Return_Status to Issue_Status;
desc Issue_Status;
--  insert values into "Issue_Status"
insert into Issue_Status values
('IS101', 'C101', 'The Catcher in the Rye', '2023-05-01' ),
('IS102', 'C102', 'The Da Vinci Code', '2023-05-02'),
('IS103', 'C103', '1491: New Revelations of the Americas Before Columbus', '2023-05-03'),
('IS104', 'C104', 'Sapiens: A Brief History of Humankind', '2023-05-04'),
('IS105', 'C105', 'The Diary of a Young Girl', '2023-05-05');
desc Issue_Status;
select * from Issue_Status;
--  create table "Return_Status"
create table Return_Status(
Return_id VARCHAR(10) PRIMARY KEY,
Return_cust VARCHAR(30),
Return_book_name VARCHAR(50),
Return_date DATE
);
--  insert values into "Return_Status"
insert into Return_Status values
('RS101', 'C101', 'The Catcher in the Rye', '2023-06-06'),
('RS102', 'C102', 'The Da Vinci Code', '2023-06-07'),
('RS103', 'C105', 'The Diary of a Young Girl', '2023-06-08'),
('RS104', 'C108', 'The Histories', '2023-06-09'),
('RS105', 'C110', 'A Game of Thrones', '2023-06-10');
select * from Return_Status;
--  insert values into "Branch"
insert into Branch values
('B001', 'M101', '123 Main St', '+919099988676'),
('B002', 'M102', '456 Elm St', '+919099988677'),
('B003', 'M103', '789 Oak St', '+919099988678'),
('B004', 'M104', '567 Pine St', '+919099988679'),
('B005', 'M105', '890 Maple St', '+919099988680');
select * from Branch;
-- update table  "Books"
update Books set Availability_status='no' where  ID in ('978-0-7432-4722-4','978-0-393-91257-8','978-0-14-044930-3' );
select * from Books;
/* Queries */
-- Q). Retrieve the book title, category, and rental price of all available books
SELECT Book_Title, Category,Rental_Price FROM Books WHERE Availability_Status = 'yes';
-- Q). List the employee names and their respective salaries in descending order of salary
select Employee_Name ,Salaries from Employee order by Salaries desc;
-- Q). Retrieve the book titles and the corresponding customers who have issued those books
select * from Issue_Status;
select Issued_Cus,Issued_Bookname from  Issue_Status;
-- Q). Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.
select  Employee_Name,Position from Employee  where Salaries>50000;
-- Q). Retrieve book_title from book table containing 'history'
select Book_Title from Books where Category ='History';
-- Q). List the customer names who registered before 2022-01-01 and have not issued any books yet.  
SELECT * from customer_management;
select Customer_Name from customer_management where Reg_Date<'2022-01-01' and Customer_ID not in (select Customer_ID from Issue_Status);
select * from Issue_Status;
-- Q). Display the total count of books in each category.
SELECT category, COUNT(Book_Title) 
FROM Books
GROUP BY Category;
select Category ,count(Book_Title) from Books group by Category;
-- Q). Display the branch numbers and the total count of employees in each branch
select Branch_no from Branch
alter table Branch add Emp_id varchar(10);
select * from Branch;
alter table Branch drop column Emp_id;
select * from Employee;
select  Branch_assignment , count(Employee_ID) from Employee group by Branch_assignment ;
-- Q).Retrieve the branch numbers along with the count of employees for branches having more than 5 employees 
select  Branch_assignment , count(Employee_ID) from Employee group by Branch_assignment having count(Employee_ID)>5;
select * from Employee;
--  Q). Display the names of customers who have issued books in the month of June 2023  
select Customer_Management.Customer_Name from Customer_Management inner join Issue_Status on Customer_Management.Customer_ID=Issue_Status.Issued_Cus where  Issue_Status.Issue_Date>='2023-06-01'and Issue_Status.Issue_Date <='2023-06-30';