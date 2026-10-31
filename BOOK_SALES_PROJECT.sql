CREATE TABLE BOOK_SALES(  
   BOOK_ID NUMERIC(10),
    TITLE VARCHAR(50),
   AUTHOR VARCHAR(50),
   GENRE VARCHAR(50),
   PUBLISHED VARCHAR(50),
   PRICE NUMERIC(10,2),
   STOCK NUMERIC(10,2)
);

SELECT * FROM BOOK_SALES


CREATE TABLE CUSTOMER(
  CUSTOMER_ID NUMERIC(10),
  NAME VARCHAR(50),
  EMAIL VARCHAR(50),
  PHONE NUMERIC(10),
  CITY VARCHAR(50),
  COUNTRY VARCHAR(50)
);

SELECT * FROM CUSTOMER


CREATE TABLE  ORDERS(
  ORDER_ID NUMERIC(10),
  CUSTOMER_ID NUMERIC(10),
  BOOK_ID NUMERIC(10),
  ORDER_DATE DATE,
  QUANTITY NUMERIC(10),
  TOTAL_AMOUNT NUMERIC(10)
);

SELECT * FROM ORDERS

--Retrive all Books in "fiction" genre:

select * from book_sales where genre='Fiction'

--find book which published after 1950

select * from book_sales where published>'1950';

--retrive all the customer which are from canada

select * from customer where country='Canada'

--show order placed in november 2023

select * from orders where order_date between '2023-11-1' and '2023-11-30'

--retrive a total stock of books available

select sum(stock)as total_stocks from book_sales;

--find detail of more expensive books

select * from book_sales order by price desc limit 10


-- show all the customer who order more than 1 quantity

select * from orders where quantity > 1

-- retrive  all orders where all amount exceed $20

select * from orders where total_amount > 20

--list all the genre which are available in book table

select distinct(genre) from book_sales

-- find book which have a lowest stock

select * from book_sales order by stock asc limit 10

-- calculate total revenue generated from exh order

select sum(total_amount)
as revenue from orders

--retrive the total number of books sold for each genre

select b.genre ,sum(o.quantity) from book_sales b join orders o on b.book_id=o.book_id group by b.genre

--find the avg price of book in the fantasy genre

select   avg( price) as avergae_price from book_sales where genre='Fantasy'

--list customer who have placed at least 2 orders

select c.name, c.customer_id, count(order_id) from orders o join customer c on c.customer_id=o.customer_id group by c.customer_id, c.name having count(order_id)>=2;

--find the most frequent ordered book
select  o.book_id, b.title , count(o.order_id) as ordered_count from orders o join book_sales b on b.book_id=o.book_id group by o.book_id, b.title order by ordered_count desc

--show top 3 expensive books of fantasy genre

select * from book_sales where genre='Fantasy' order by price desc limit 3

--retrive the total quantity of book sold by each author

select b.author , sum(o.quantity) from book_sales b join orders o on b.book_id=o.book_id group by author

--list the cities where customer spent over 30$ are located

select distinct c.city , o.total_amount from orders o join customer c on o.customer_id=c.customer_id  where o.total_amount > 30

--find a customer who spend most on orders
select c.customer_id, c.name, sum(o.total_amount) as amount_spent
from customer c join orders o on c.customer_id=o.customer_id group by c.customer_id, c.name order by amount_spent  desc limit 5


--calculate the stock remaining after fullfillment all orders

select b.book_id, b.title, b.stock , coalesce(sum(o.quantity),0) as order_quantity, stock-coalesce(sum(o.quantity),0) as remaining_stock from book_sales b  left join orders o on b.book_id=o.book_id group by b.book_id;












