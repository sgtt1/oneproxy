drop table my_list;
drop table my_hash;

create table my_list (id int not null primary key, col2 int , col3 varchar(32));
create table my_hash (id int not null primary key, col2 int , col3 varchar(32));

insert into my_hash (id, col2, col3) values (1, 100, 'Row 1');
insert into my_hash (id, col2, col3) values (2, 101, 'Row 2');
insert into my_hash (id, col2, col3) values (3, 102, 'Row 3');
insert into my_hash (id, col2, col3) values (4, 100, 'Row 4');
insert into my_hash (id, col2, col3) values (5, 101, 'Row 5');
insert into my_hash (id, col2, col3) values (6, 102, 'Row 6');
insert into my_hash (id, col2, col3) values (7, 100, 'Row 7');
insert into my_hash (id, col2, col3) values (8, 101, 'Row 8');
insert into my_hash (id, col2, col3) values (9, 102, 'Row 9');
insert into my_hash (id, col2, col3) values (10, 102, '');


insert into my_list (id, col2, col3) values (1, 100, 'Row 1');
insert into my_list (id, col2, col3) values (2, 101, 'Row 2');
insert into my_list (id, col2, col3) values (3, 102, 'Row 3');
insert into my_list (id, col2, col3) values (4, 100, 'Row 4');
insert into my_list (id, col2, col3) values (5, 101, 'Row 5');
insert into my_list (id, col2, col3) values (6, 102, 'Row 6');
insert into my_list (id, col2, col3) values (7, 100, 'Row 7');
insert into my_list (id, col2, col3) values (8, 101, 'Row 8');
insert into my_list (id, col2, col3) values (9, 102, 'Row 9');

select col2, sum(id) from my_hash group by col2;
select col2, sum(id) from my_list group by col2;

select * from my_hash where id = 1;
select * from my_hash where id in (1, 2, 4);

select * from my_list where id = 1;
select * from my_list where id in (1, 2, 4);


start transaction;
select * from my_list where id in (1,2);
update my_list set col2=col2+1 where id = 1;
update my_list set col2=col2+1 where id = 2;
select * from my_list where id in (1,2);
commit;

select * from my_list where id in (1,2);
start transaction;
update my_list set col2=col2+1 where id = 1;
update my_list set col2=col2+1 where id = 2;
select * from my_list where id in (1,2);
rollback;
select * from my_list where id in (1,2);

select col2, sum(id) from my_hash group by col2;
select col2, sum(id) from my_list group by col2;

select '','','''','''' from my_list;
select /* parallel */ * from my_list;
select /* parallel */ col2, sum(id) from my_list group by col2;
