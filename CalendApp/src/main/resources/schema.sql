drop table location if exists;
DROP TABLE events IF EXISTS;
drop table users if exists;


CREATE TABLE events (
  Id BIGINT generated by default as identity,
  eventName VARCHAR(100) NOT NULL,
  creator BIGINT NOT NULL,
  date TIMESTAMP NOT NULL,
  location BIGINT NOT NULL,
  description VARCHAR(100) NOT NULL,
  open boolean NOT NULL,
  primary key (Id)
);

create table location (
    Id BIGINT generated by default as identity,
    street VARCHAR(50) not null,
    streetno varchar(50) not null,
    postalcode VARCHAR(50) not null,
    city VARCHAR(50) not null,
    country VARCHAR(50) not null,
    latitude VARCHAR(50) not null,
    longitude VARCHAR(50) not null,
    primary key (Id)
);


create table users (
    Id BIGINT generated by default as identity,
    email VARCHAR(100) not null,
    location BIGINT NOT NULL,
    first_name VARCHAR(50) not null,
    last_name VARCHAR(50) not null,
    password VARCHAR(50) not null,
    primary key (Id)
);


/*alter table users
   add foreign key (location) 
   references location(Id);


alter table events
   add foreign key (creator) 
   references users;
   
 alter table events  
   add foreign key (location) 
   references location(Id);*/
   


   