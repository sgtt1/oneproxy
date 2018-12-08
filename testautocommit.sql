set autocommit=0;
select * from t_binlog where id = 1;
update t_binlog set col2 = col2 - 1 where id = 1;
select * from t_binlog where id = 1;
set autocommit=1;
select * from t_binlog where id = 1;
