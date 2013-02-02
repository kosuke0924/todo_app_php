create database todo_app;
grant all on todo_app.* to dbuser@localhost identified by '3EwruTrE';

use todo_app

drop table IF EXISTS tasks;
create table tasks (
    id int not null auto_increment primary key,
    seq int not null,
    type enum('notyet', 'done', 'deleted') default 'notyet',
    title text,
    created datetime,
    modified datetime,
    KEY type(type),
    KEY seq(seq)
);

insert into tasks (seq, type, title, created, modified) values (1, 'notyet', '牛乳買う', now(), now());

insert into tasks (seq, type, title, created, modified) values (1, 'notyet', '提案書作る', now(), now());

insert into tasks (seq, type, title, created, modified) values (1, 'done', '映画見る', now(), now());
