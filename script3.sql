USE training;


#1
select count(*) as total_rows from account;


#2
select * from account limit 2;


#3
select * from account
	limit 2 offset 2;


#4
select * , year(birth_date), month(birth_date),
	day(birth_date), 
    weekday(birth_date)
    from individual;


#5   
 select substring('Please find the substring in this string',17,25);


#6
 set @number_= -25.76823;
 select round(abs(@number_),5) as abs_value,
	sign(@number_) as sign_, round(@number_,2) as rouded_no;


#7
select adddate(cast(sysdate() as date), interval 30 day);


#8
select substring(fname,1,3) as fname_ , substring(lname, length(lname)-2, length(lname)) as lname_ from individual;


#9
select 
	case when length(fname)=5 then upper(fname) else fname 
    end as fname_
    from
    individual;


#10
select max(avail_balance), avg(avail_balance) from account
	where
    cust_id = 1;

