use training;

#1
select cust_id , count(distinct account_id) as accounts
 from account
 group by cust_id;
 
#2
select cust_id , count(distinct account_id) as accounts
 from account
 group by cust_id
 having accounts>2;
 
#3
 select fname, birth_date from individual
	order by birth_date asc;

#4  
select year(open_date) as year_, 
	avg(avail_balance) as avg_avail_balance 
    from account
    having avg_avail_balance>200
    order by year_;

#5   
select product_cd, max(pending_balance) from account
	where
    product_cd in('CHK', 'SAV', 'CD')
    group by product_cd;