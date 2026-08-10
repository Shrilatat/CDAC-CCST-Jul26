create table Loan_Account(
accno tinyint,
custname varchar(20),
loanamt int,
installments int,
intRate decimal(4,2),
startdate date,
interest tinyint,
primary key(accno)
);

insert into Loan_Account values
(1,"Anita Sharma",300000, 36, 12.0, "2004-07-19",9),
(2,"Rita Nair",500000, 48, 10.0, "2001-03-22",8),
(3,"Nikhil Jain",300000, 36, null, "2002-03-08",7),
(4,"Jeevan Patil",800000, 60, 10.0, "2000-12-06",8),
(5,"P K Sharma",200000, 36, 12.50, "2001-01-03",0),
(6,"Kavita Rao",700000, 60, 12.50, "2002-06-05",8),
(7,"Manish Jain",500000, 48, null, "2004-03-05",8);

