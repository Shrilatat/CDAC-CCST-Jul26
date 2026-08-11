create table salespeople
(snum int,
 sname varchar(15),
 city  varchar(15),
 comm  decimal(4,2),
 CONSTRAINT sales_pk PRIMARY KEY (snum)
);

create table cust
 (cnum int,
  cname varchar(15),
  city  varchar(15),
  rating  int,
  snum int,
  CONSTRAINT cust_pk PRIMARY KEY (cnum),
  CONSTRAINT fk_sales
    FOREIGN KEY (snum)
    REFERENCES salespeople(snum)
    ON DELETE CASCADE
 );


 create table orders
(onum int,
 amt decimal (10,2),
 odate date,
 cnum int,
 snum int,
 constraint fk_ord_cust FOREIGN KEY (cnum) references cust(cnum),
 constraint fk_ord_salespeople FOREIGN KEY (snum)  references salespeople(snum),
 PRIMARY KEY (onum)
);

insert into salespeople values (1001,'peel','london',.12);
insert into salespeople values (1002,'serres','san jose',.13);
insert into salespeople values (1004,'motika','london',.11);
insert into salespeople values (1007,'rifkin','barcelona',.15);
insert into salespeople values (1003,'axelrod','new york',.10);
insert into salespeople values (1005,'fran','london',.26);
insert into salespeople values (1006,'harry',null,null);



insert into cust values(2001,'hoffman','london',100,1001);
insert into cust values(2002,'giovanni','rome',200,1003);
insert into cust values(2003,'liu','san jose',200,1002);
insert into cust values(2004,'grass','berlin',300,1002);
insert into cust values(2006,'clemens','london',100,1001);
insert into cust values(2008,'cisneros','san jose',300,1007);
insert into cust values(2007,'pereira','rome',100,1004);



insert into orders values(3001,18.69,STR_TO_DATE('10/03/96','%d/%m/%y'),2008,1007);
insert into orders values(3003,767.19,STR_TO_DATE('10/03/96','%d/%m/%y'),2001,1001);
insert into orders values(3002,1900.10,STR_TO_DATE('10/03/96','%d/%m/%y'),2007,1004);
insert into orders values(3005,5160.45,STR_TO_DATE('10/03/96','%d/%m/%y'),2003,1002);
insert into orders values(3006,1098.16,STR_TO_DATE('10/03/96','%d/%m/%y'),2008,1007);
insert into orders values(3009,1713.23,STR_TO_DATE('10/04/96','%d/%m/%y'),2002,1003);
insert into orders values(3007,75.75,STR_TO_DATE('10/04/96','%d/%m/%y'),2002,1003);
insert into orders values(3008,4723.00,STR_TO_DATE('10/05/96','%d/%m/%y'),2006,1001);
insert into orders values(3011,9891.88,STR_TO_DATE('10/06/96','%d/%m/%y'),2006,1001);





