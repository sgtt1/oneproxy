create table if not exists oneproxy.oneproxy_mysql_instances
(   mysql_addr   varchar(32) not null primary key,
    mysql_group  varchar(32) not null,
    mysql_type   char not null default 'M',
    mysql_status char not null default 'Y'
);

create table if not exists oneproxy.oneproxy_mysql_accounts
(   mysql_group    varchar(32) not null,
    mysql_user     varchar(32) not null,
    proxy_pass     varchar(64) not null,
    mysql_pass     varchar(64) not null,
    mysql_database varchar(32) not null,
    enabled	   char not null default 'Y',
    primary key (mysql_group, mysql_user)
);

create table if not exists oneproxy.oneproxy_mysql_groups
(   group_name     varchar(32) not null primary key,
    group_policy   varchar(32) not null,
    group_access   int not null default 1,
    group_delay    int not null default 0,
    repl_user      varchar(32),
    repl_pass      varchar(64)
);


