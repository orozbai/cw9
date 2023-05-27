create table statuses
(
    id serial primary key,
    status text not null
);

create table users
(
    id       serial
        primary key,
    name     varchar(25) not null,
    email    varchar(25) not null,
    username varchar(25) not null,
    password varchar(16) not null,
    role text not null default 'DEVELOPER',
    enabled bool not null default true
);

create table worklogs
(
    time varchar(6) not null,
    description varchar(50) not null,
    created timestamp not null
);

create table tasks
(
    id serial primary key,
    name varchar(20) not null,
    created timestamp not null,
    user_id bigint not null,
    foreign key (user_id) references users (id) on delete cascade,
    status_id bigint not null,
    foreign key (status_id) references users (id) on delete cascade,
    worklog_id bigint not null,
    foreign key (worklog_id) references users (id) on delete cascade
);