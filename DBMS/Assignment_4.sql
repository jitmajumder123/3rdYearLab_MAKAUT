--Calculate the square root of the price of each movie.
select sqrt(price) from movie;

--Count the total number of customers.
select count(cust_id) from cust;

--Calculate the total price of all the movies.
select sum(price) from movie;

--Calculate the average price of all the movies.
select avg(price) from movie;

/*Determine the maximum and minimum movie prices.  Rename the title as max-price and min_price respectively.
*/
select max(price) "MAX_PRICE",min(price) "MIN_PRICE" from movie;

--Count the number of movies having price greater than or equal to 150.
select count(mv_no) from movie where price>=150;

--Print the type and average price of each movie.
select type,avg(price) from movie group by type;

--Find the number of movies in each type.
select type,count(type) from movie group by type;

--Count separately the number of movies in the 'comedy' and 'thriller' types.
select type,count(type) from movie group by type having type in('comedy','thriller');

--Calculate the average price for each type that has a maximum price of 150.00.
select type,avg(price) from movie where price<=150 group by type;

/*Calculate the average price of all movies where type is 'comedy' or 'thriller' and price is greater than or equal to 150.00.
*/
select type,avg(price) from movie where price>=150 group by type having type in ('comedy','thriller');

--Display the invoice number and day on which customers were issued movies.
select inv_no,issue_date from invoice;

--Display the month (in alphabets) in which customers are supposed to return the movies.
select to_char(return_date,'dd-month-yy')from invoice;

--Display the 15 days after the issue-date in the format 'dd-month-yy'.
--For eg. 12-february-93.
select to_char(issue_date+15,'dd-month-yy')from invoice;

/*Find the number of days elapsed between the current date and the return date of the movie for all customers.
*/
select sysdate-return_date from invoice;
