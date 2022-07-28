USE training;


#1
select account_id, cust_id, avail_balance, status from account
	where
		status='ACTIVE'
        and
        avail_balance>2500;

#2
select * from account
where
year(open_date) = 2002;


#3
select account_id, avail_balance, pending_balance from account
where
avail_balance<>pending_balance;


#4
select account_id, product_cd from account
where
account_id in (1,10,23,27);


#5
select account_id, avail_balance from account
	where
    avail_balance between 100 and 200;