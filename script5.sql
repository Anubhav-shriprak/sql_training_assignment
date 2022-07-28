USE training;

#1
select A.fname, A.title, B.name from employee A
	left join department B
    on A.dept_id=B.dept_id;

#2   
select product_type.name as prod_type, product.name as prod_subtype from product_type
	left join product
    on product_type.product_type_cd = product.product_type_cd;
    
#3
select concat(A.fname,' ',A.lname) as full_name, B.fname as superior from employee A
	inner join employee B 
    on
    A.superior_emp_id=B.emp_id;

#4   
select E.fname, E.lname from employee E
	where
    E.superior_emp_id 
    in(
    select A.superior_emp_id as superior from employee A
	inner join employee B 
    on
    A.superior_emp_id=B.emp_id
    where B.fname='Susan' and B.lname='Hawthorne');

#5   
explain select E.fname , E.lname from employee E
	where 
    E.dept_id = 1
    and
    E.superior_emp_id
    in(
    select B.emp_id as superior from employee A
	inner join employee B 
    on
    A.superior_emp_id=B.emp_id
    where
    A.dept_id = B.dept_id);