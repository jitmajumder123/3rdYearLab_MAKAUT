--Find out the names of all the customers.
select fname,lname from cust;

--Print the entire customer table.
select * from cust;

--Retrieve the list of fname and the area of all the customers.
select fname,area from cust;

--List the various movie types available from the movie table.
select type from movie;

--Print the information of invoice table in the following format for all records
--The Invoice No. of Customer Id. {cust - id} is {inv - no} and Movie No. is {mv - no}.
select 'The Invoice No. of Customer Id. '||cust_id||' is '||inv_no||' and Movie No. is '||mv_no from invoice;

--{cust-id} has taken Movie No. {mv-no} on {issue-date} and will return on (return_date).
select cust_id||' has taken Movie No. '||mv_no||' on '||issue_date||' and will return on '||return_date from invoice;

--Change the telephone number of prarnada to 466389.
update cust set phone_no=466389 where fname='Pramada';

--Change the issue - date of cust- id 'A01' to 24/07/93.
update invoice set issue_date='24-jul-93' where cust_id='a01';

--Change the price of  'gone with the wind' to Rs. 250. 00.
update movie set price=250.00 where title='gone with the wind';

--Delete the record with invoice number 'l 08' from the invoice table.
delete from invoice where inv_no='i08';

--Delete all the records having return date before 10th July'93
delete from invoice where return_date<'10-jul-93';

--Change the area of cust – id 'A05' to 'vs'.
update cust set area='vs' where cust_id='a05';

--Change the return date of invoice number 'I08' to 16-08-93.
update invoice set return_date='16-aug-93' where inv_no='i08';

--Find the names of all customers having 'a' as the second letter in their fnames.
select fname,lname from cust where fname like '_a%';

--Find the lnames of all customers that begin with 's ' or  'j' .
select lname from cust where lname like 'S%' or lname like 'J%';

--Find out the customers who stay in an area whose second letter is 'a'.
select * from cust where area like '_a';

--Find the list of all customers who stay in area 'da' or area 'mu' or area 'gh'.
select * from cust where area in ('da','mu','gh');

--Print the list of customers whose phone numbers are greater than the value 555000.
select * from cust where phone_no>555000;

/*Print the information from invoice table of customers who have been issued movies in the month of September.
*/
select * from invoice where issue_date like '%SEP%';

--Display the invoice table information for cust – id 'a01' and 'a02'.
select * from invoice where cust_id in ('a01','a02');

--Find the movies of type 'action' and ‘comedy’.
select title from movie where type in ('action','comedy');

--Find the movies whose price is greater than 150 and less than or equal to 200.
select * from movie where price>150 and price<=200;

/*Find the movies that cost more than 150 and also find the new cost as original cost * 15.
*/
select price*15 from movie where price>150;

--Rename the new column in the above query as new-price. 
select price*15 "NEW_PRICE" from movie where price>150;

--List the movies in sorted order of their titles.
select * from movie order by title;

--Print the names and types of all the movie except horror movies.
select title,type from movie where type<>'horror';

--Divide the cost of movie 'home alone' by difference between its price and 100.
select price/(price-100) from movie where title='home alone';

--List the names, areas and cust - id of customers without phone numbers.
select * from cust where phone_no is null;

--List the names of customers without lname.
select fname,lname from cust where lname=' ';

--List the mv - no, title, type of movies whose stars begin with letter 'm'.
select mv_no,title,type from movie where star like 'm%';

/* List the mv-no and inv-no of customers having inv-no less than 'i05'from the Invoice Transaction Table.
*/
select mv_no,inv_no from invoice where inv_no<'i05';
