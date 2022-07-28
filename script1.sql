CREATE DATABASE training;
USE training;


#1
CREATE table demography(
	CustID int auto_increment,
    Name varchar(50),
    Age int,
    Gender varchar(1),
    primary key(CustID)
    );


#2
insert into demography(
	Name, Age, Gender
    ) 
	values(
		'Jhon', 25, 'M'
        );
        
        
#3      
insert into demography(
	Name, Age, Gender
    ) 
	values(
		'Pawan', 26, 'M'
        ),
        
        ('Hema', 31, 'F');


#4
insert into demography(
	Name, Gender
    ) 
	values(
		'Rekha','F'
        ); 
        
        
#5
select * from demography;

DROP TABLE demography;


update demography
	set 
		Age=NULL
    where
		Name='Jhon';
        
        
SELECT * FROM demography
	WHERE
		Age IS NULL;
        
        
DELETE FROM demography;