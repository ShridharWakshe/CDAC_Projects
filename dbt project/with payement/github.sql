*Table Creation*

CREATE SCHEMA github;
USE github;
drop database github;


show tables;
drop table customer;
drop table seller;
drop table product;
drop table inventory;
drop table orders;

select * from customer;
select * from seller;
select * from product;
select * from inventory;
select * from orders;

CREATE TABLE customer (
  uid varchar(20) NOT NULL,
  pass varchar(20) DEFAULT NULL,
  fname varchar(15) DEFAULT NULL,
  lname varchar(15) DEFAULT NULL,
  email varchar(30) DEFAULT NULL,
  address varchar(128) DEFAULT NULL,
  phno bigint DEFAULT NULL,
  PRIMARY KEY (uid)
);
select * from customer;
insert into customer values(123,'xyz','shub','hiw','email','adddress',000000);

CREATE TABLE seller (
  sid varchar(15) NOT NULL,
  sname varchar(20) DEFAULT NULL,
  address varchar(128) DEFAULT NULL,
  phno bigint DEFAULT NULL,
  PRIMARY KEY (sid)
);
select * from seller;
insert into seller values(111,'xyz','qwerty',00000000);

CREATE TABLE product (
  pid varchar(15) NOT NULL,
  pname varchar(20) DEFAULT NULL,
  manufacturer varchar(20) DEFAULT NULL,
  mfg date DEFAULT NULL,
  exp date DEFAULT NULL,
  price int DEFAULT NULL,
  PRIMARY KEY (pid),
  UNIQUE KEY pname (pname)
);
select * from product;
insert into product values (001,'a','A',sysdate(),sysdate(),100);

CREATE TABLE inventory (
  pid varchar(15) NOT NULL,
  pname varchar(20) DEFAULT NULL,
  quantity int unsigned DEFAULT NULL,
  sid varchar(15) NOT NULL,
  PRIMARY KEY (pid,sid),
  CONSTRAINT fk01 FOREIGN KEY (pid) REFERENCES product (pid) ON DELETE CASCADE,
  CONSTRAINT fk02 FOREIGN KEY (pname) REFERENCES product (pname) ON DELETE CASCADE,
  CONSTRAINT fk03 FOREIGN KEY (sid) REFERENCES seller (sid) ON DELETE CASCADE
);
select * from inventory;
truncate inventory;
insert into inventory values(001,'a',10,111);

CREATE TABLE orders (
 oid int NOT NULL AUTO_INCREMENT,
 pid varchar(15) DEFAULT NULL,
 sid varchar(15) DEFAULT NULL,
 uid varchar(15) DEFAULT NULL,
 orderdatetime datetime DEFAULT NULL,
 quantity int unsigned DEFAULT NULL,
 price int unsigned DEFAULT NULL,
 PRIMARY KEY (oid),
 CONSTRAINT fk04 FOREIGN KEY (pid) REFERENCES product (pid) ON DELETE CASCADE,
 CONSTRAINT fk05 FOREIGN KEY (sid) REFERENCES seller (sid) ON DELETE CASCADE,
 CONSTRAINT fk06 FOREIGN KEY (uid) REFERENCES customer (uid) ON DELETE CASCADE
);
select *from orders;
truncate orders;
insert into orders values(0001,001,111,123,sysdate(),3,100);

ALTER TABLE orders AUTO_INCREMENT=1000;

----------------------------------------------------------------------------------------------------------------------------------------
*Triggers*


DELIMITER //

CREATE TRIGGER updatetime BEFORE INSERT ON orders FOR EACH ROW
BEGIN
    SET NEW.orderdatetime = NOW();
END//

DELIMITER ;



DELIMITER //
CREATE TRIGGER inventorytrigger AFTER INSERT ON orders
FOR EACH ROW
begin

DECLARE qnty int;
DECLARE productid varchar(20);

SELECT   pid INTO productid
FROM      orders
ORDER BY  oid DESC
LIMIT     1;

SELECT   quantity INTO qnty 
FROM      orders
ORDER BY  oid DESC
LIMIT     1;

UPDATE inventory
SET quantity=quantity-qnty
WHERE pid=productid;
END//

DELIMITER ;


----------------------------------------------------------------------------------------------------------------------------------------
*Stored Procedures*


DELIMITER //

CREATE PROCEDURE getsellerorders(IN param1 VARCHAR(20))
BEGIN
    SELECT *  FROM orders where sid=param1;
END //
 
DELIMITER ;



DELIMITER //

CREATE PROCEDURE getorders
(IN param1 VARCHAR(20))
BEGIN
   SELECT * FROM orders WHERE uid=param1;
END //

DELIMITER ;