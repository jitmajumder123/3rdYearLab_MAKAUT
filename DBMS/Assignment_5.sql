--Find out the movie number which has been issued to 'ivan'.
select mv_no from invoice where cust_id = (select cust_id from cust where fname = 'Ivan');

--Find the names and movie numbers of all the customers who have been issued a movie.
select fname,lname,mv_no from cust,invoice where invoice.cust_id=cust.cust_id;

-- Select the title, cust - id, mv - no for all the movies that are issued.
select title,cust_id,invoice.mv_no from movie,invoice where invoice.mv_no=movie.mv_no;

--Find out the title and types of the movies that have been issued to 'Vandana'.
select title,type from movie where mv_no in (select mv_no from invoice where cust_id in (select cust_id from cust where fname='Vandana'));

--Find the names of customers who have been issued movie of type 'drama'.
select fname,lname from cust where cust_id in (select cust_id from invoice where mv_no in (select mv_no from movie where type = 'drama'));

/*Display the title, lname, fname for customers having movie number greater than or equal to three, in the following format:
The movie taken by (fname} {lname} is {title}.
*/
select 'The movie taken by '||fname||' '||lname||' is '||title from cust,movie,invoice where cust.cust_id=invoice.cust_id and movie.mv_no=invoice.mv_no and movie.mv_no>=3;

--Find out which customers have been issued movie number 9.
select fname,lname from cust where cust_id=(select cust_id from invoice where invoice.mv_no=9);

--Find the customer name and area with invoice number 'i10'.
select fname,lname,area from cust where cust_id=(select cust_id from invoice where inv_no='i10');

/*Find the customer names and phone numbers who have been issued movies before the month of August.
*/
select fname,lname,phone_no from cust where cust_id in (select cust_id from invoice where issue_date<'01-AUG-93');

--Find the name of the movie issued to 'vandana' and 'ivan'.
select title from movie where mv_no in (select mv_no from invoice where cust_id in (select cust_id from cust where fname in ('Vandana','Ivan')));

--List the movie number, movie names issued to all customers.
select mv_no,title from movie where mv_no in (select mv_no from invoice);

--Find the type and movie number of movie issued to cust – id 'a01' and 'a02'.
select type,mv_no from movie where mv_no in (select mv_no from invoice where cust_id in ('a01','a02'));

/*Find out if the movie starring' tom cruise' is issued to any customer and print the custid to whom it is issued.
*/
select cust_id from cust where cust_id in (select cust_id from invoice where mv_no in (select mv_no from movie where star='tom cruise'));

--Find the lname, fname who have been issued movies.
select lname,fname from cust where cust_id in(select cust_id from invoice);

--Find the name of customer who has not issued any movie
select lname,fname from cust where cust_id not in (select cust_id from invoice);
